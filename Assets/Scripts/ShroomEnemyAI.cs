/*
 * Author: Yau Wai Lam
 * Date: 06/08/2024
 * Description: 
 * FSM and Damage dealing script
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class ShroomEnemyAI : MonoBehaviour
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
    GameManager gameManager;

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
    float sightRange, attackRange;
    string currentState;
    string nextState;

    public float attackDmg = 10;
    public static bool attack = false;


    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();
        boxCollider = GetComponentInChildren<BoxCollider>();
        gameManager = FindObjectOfType<GameManager>();

        if (gameManager != null)
        {
            Debug.Log("GM not found");
        }

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

    /// <summary>
    /// Function to start each coroutine
    /// </summary>
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
    /// Couroutine makes AI detect whether NPC is chasing, and locks onto player
    /// </summary>
    IEnumerator Chase()
    {
        //Check whether current state is "Chase"
        while (currentState == "Chase")
        {
            agent.SetDestination(player.transform.position);

            if (sightRange < Vector3.Distance(transform.position, player.transform.position))
            {
                nextState = "Roaming";
            }
            else if (attackRange > Vector3.Distance(transform.position, player.transform.position))
            {
                nextState = "Attack";
            }
            yield return new WaitForEndOfFrame();
        }

        //Transition out of state
        SwitchState();
    }

    /// <summary>
    /// Couroutine makes AI detect whether NPC is attacking
    /// </summary>
    IEnumerator Attack()
    {
        while (currentState == "Attack")
        {
            if (!animator.GetCurrentAnimatorStateInfo(0).IsName("Mushroom_Attack01Angry"))
            {
                animator.SetTrigger("Attack");
            }
            agent.SetDestination(transform.position);

            if (Vector3.Distance(transform.position, player.transform.position) > attackRange)
            {
                nextState = "Chase";
            }
            else if (Vector3.Distance(transform.position, player.transform.position) > sightRange)
            {
                nextState = "Roaming";
            }
            yield return new WaitForEndOfFrame();
        }

        SwitchState();
    }


    /// <summary>
    /// Starts animation event
    /// </summary>
    void EnableAttack()
    {
        attack = true;
        boxCollider.enabled = true;
    }

    /// <summary>
    /// Ends animation event
    /// </summary>
    void DisableAttack()
    {
        attack = false;
        boxCollider.enabled = false;
    }

    /// <summary>
    /// Deals damage according to hitbox impact
    /// </summary>
    /// <param name="other"></param>
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            if (gameManager != null)
            {
                gameManager.playerHealth -= attackDmg;
                Debug.Log(gameManager.playerHealth);
            }
            else
            {
                Debug.Log("gameManager is null");
            }
        }
    }
}


