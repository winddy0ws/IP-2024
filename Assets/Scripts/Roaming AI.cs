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
    GameObject player;
    NavMeshAgent agent;
    [SerializeField]
    LayerMask groundLayer;

    Vector3 destPoint;
    bool walkpointSet;
    [SerializeField]
    float range;
    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        player = GameObject.FindGameObjectWithTag("Player");
    }

    // Update is called once per frame
    void Update()
    {
        Patrol();
    }

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
}
