using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyAi : MonoBehaviour
{
    /// <summary>
    /// Setting up references for later call
    /// </summary>
    [SerializeField]
    GameObject player;
    NavMeshAgent agent;
    [SerializeField]
    LayerMask groundLayer;

    Animator animator;
    BoxCollider boxCollider;

    /// <summary>
    /// Variables to determine NPC's roam abilities
    /// </summary>
    Vector3 destPoint;
    bool walkpointSet;
    [SerializeField]
    float range;

    /// <summary>
    /// State Change
    /// </summary>
    [SerializeField]
    float sightRange, stoppingRange, attackRange;
    string currentState;
    string nextState;

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();
        boxCollider = GetComponentInChildren<BoxCollider>();

        //Setting NPC's intial states
        currentState = "Roaming";
        nextState = currentState;
        SwitchState();
    }

    // Update is called once per frame
    void Update()
    {
        if (currentState != nextState)
        {
            currentState = nextState;
        }
    }

    /// <summary>
    /// Enables NPC to constantly wander to different points
    /// </summary>
    void SearchForDest()
    {
        float z = Random.Range(-range, range);
        float x = Random.Range(-range, range);

        destPoint = new Vector3(transform.position.x + x, transform.position.y, transform.position.z + z);

        if (Physics.Raycast(destPoint, Vector3.down, groundLayer))
        {
            walkpointSet = true;
        }
    }

    void SwitchState()
    {
        StartCoroutine(currentState);
    }

    /// <summary>
    /// Couroutine makes AI detect whether NPC is roaming, and where it roams
    /// </summary>
    IEnumerator Roaming()
    {
        //Transition into state
        SearchForDest();

        //Check whether current state is "Roaming"
        while (currentState == "Roaming")
        {
            if (!walkpointSet)
            {
                SearchForDest();
            }
            else if (walkpointSet)
            {
                agent.SetDestination(destPoint);
            }
            if (Vector3.Distance(transform.position, destPoint) < 10)
            {
                walkpointSet = false;
            }

            if (sightRange > Vector3.Distance(transform.position, player.transform.position))
            {
                nextState = "Chase";
            }
            yield return new WaitForEndOfFrame();
        }

        //Transition out of state
        SwitchState();
    }

    /// <summary>
    /// Couroutine makes AI detect whether NPC is roaming, and where it roams
    /// </summary>
    IEnumerator Chase()
    {
        //Check whether current state is "Chase"
        while (currentState == "Chase")
        {
            float distToPlayer = Vector3.Distance(transform.position, player.transform.position);

            if (distToPlayer > stoppingRange)
            {
                agent.SetDestination(player.transform.position);
            }
            else
            {
                agent.SetDestination(transform.position);
            }

            if (sightRange < Vector3.Distance(transform.position, player.transform.position))
            {
                nextState = "Roaming";
            }
            else if (attackRange > Vector3.Distance(transform.position, player.transform.position))
            {
                Attack();
            }
            yield return new WaitForEndOfFrame();
        }

        //Transition out of state
        SwitchState();
    }

    void Attack()
    {
        if (!animator.GetCurrentAnimatorStateInfo(0).IsName("Cactus_Attack01"))
        {
            animator.SetTrigger("Attack");
            agent.SetDestination(transform.position);
        }
    }

    void EnableAttack()
    {
        boxCollider.enabled = true;
    }

    void DisableAttack()
    {
        boxCollider.enabled = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        var player = other.GetComponent<CharacterController>();

        if (player != null)
        {
            Debug.Log("hit");
        }
    }
}


