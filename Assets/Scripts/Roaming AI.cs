/*
 * Author: Livinia Poo
 * Date: 02/08/2024
 * Description: 
 * NPC/Quest Giver random roaming movement and FSM
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class RoamingAI : MonoBehaviour
{
    /// <summary>
    /// Setting up references for later call
    /// </summary>
    /// 
    [SerializeField]
    GameObject player;
    NavMeshAgent agent;
    [SerializeField]
    LayerMask groundLayer;

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
    float sightRange, stoppingRange;
    bool playerInSight;
    public string currentState;
    string nextState;

    Animator animator;

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();

        //Setting NPC's intial states
        currentState = "Roaming";
        nextState = currentState;
        SwitchState();
    }

    // Update is called once per frame
    void Update()
    {
        if(currentState != nextState)
        {
            currentState = nextState;
        }

        Debug.Log(currentState);
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
    /// Function to start all coroutines
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
    /// Couroutine makes AI detect whether NPC is roaming, and where it roams
    /// </summary>
    IEnumerator Chase()
    {
        animator.SetTrigger("Run");

        //Check if quest is already completed
        if (QuestManager.bagQuestGiven || QuestManager.bagQuestCompleted)
        {
            nextState = "Roaming";
            animator.SetTrigger("Walk");
            yield break;
        }

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
                animator.SetTrigger("Idle");
            }

            if (sightRange < Vector3.Distance(transform.position, player.transform.position) || QuestManager.bagQuestCompleted)
            {
                nextState = "Roaming";
                animator.SetTrigger("Walk");
            }
            yield return new WaitForEndOfFrame();
        }

        //Transition out of state
        SwitchState();
    }

    public void Celebrate()
    {
        animator.SetTrigger("Jump");
    }
}
