/*
 * Author: Livinia Poo
 * Date: 02/08/2024
 * Description: 
 * NPC/Quest Giver random roaming movement
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
    GameObject player;
    NavMeshAgent agent;
    [SerializeField]
    LayerMask groundLayer;
    [SerializeField]

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
    

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        player = GameObject.FindGameObjectWithTag("Player");
    }

    // Update is called once per frame
    void Update()
    {
        playerInSight = Vector3.Distance(transform.position, player.transform.position) <= sightRange;
        if (!playerInSight)
        {
            Patrol();
        }
        else if (playerInSight)
        {
            Chase();
        }
    }

    /// <summary>
    /// Function makes AI detect whether NPC is roaming, and where it roams
    /// </summary>
    void Patrol()
    {
        if (!walkpointSet)
        {
            SearchForDest();
        }
        else if(walkpointSet)
        {
            agent.SetDestination(destPoint);
        }
        if (Vector3.Distance(transform.position, destPoint) < 10)
        {
            walkpointSet = false;
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
            walkpointSet |= true;
        }
    }

    void Chase()
    {
        float distToPlayer = Vector3.Distance(transform.position, player.transform.position);

        if (distToPlayer > stoppingRange)
        {
            agent.SetDestination(player.transform.position);
        }
        else
        {
            agent.ResetPath();
        }
    }
}
