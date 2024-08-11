using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnTrigger : MonoBehaviour
{
    public Transform player; //referencing player transform
    public Transform[] ppoints; //set of patrol points
    public float patrolRadius = 3f; // Radius around each point where the NPC can move to
    public float speed = 2f; // Speed of the NPC
    public float waitTimeAtPoint = 2f; // Time to wait at each point

    private int activePPoint = 0;
    private bool playerInRange = false;

    void Start()
    {
        if (ppoints.Length > 0)
        {
                StartCoroutine(Patrolling()); //calling
        }
    }

    IEnumerator Patrolling()
    {
        while (true) //looping coroutine
        {
            // Check if the player is within range
            if (playerInRange)
            {
                yield return null; // Player is in range, stop moving
                continue; // Skip to the next loop iteration
            }

            Vector3 targetPosition = ppoints[activePPoint].position;

            // Move towards the target position
            while (Vector3.Distance(transform.position, targetPosition) > 0.1f)
            {
                // Re-check if the player has come into range during movement
                if (playerInRange)
                {
                    yield return null; // Stop moving if player is in range
                    break; // Exit the inner loop
                }

                transform.position = Vector3.MoveTowards(transform.position, targetPosition, speed * Time.deltaTime);
                yield return null;
            }

            // Wait at the point
            yield return new WaitForSeconds(waitTimeAtPoint);

            // Move to the next point
            activePPoint = (activePPoint + 1) % ppoints.Length;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        //Checking if player has entered the range
        if (other.transform == player)
        {
            //Calling the function to rotate the NPC to face player & player here for coroutine
            playerInRange = true;
            TurnToFacePlayer();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.transform == player)
        {
                playerInRange = false; //no more player in range, moving on
        }
    }

    public void TurnToFacePlayer()
    {
        //Rotating them to face player
        Vector3 direction = player.position - transform.position;
        direction.y = 0; //npc please dont rotate sideways
        Quaternion rotation = Quaternion.LookRotation(direction);
        transform.rotation = rotation;
    }

}
