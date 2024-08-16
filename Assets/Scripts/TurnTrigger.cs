/*
 * Author: Arwen Loh
 * Date: 11/08/24
 * Description: Mayor Idly Wandering TownHall
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MrMole : MonoBehaviour
{
    public Transform player; // Referencing player transform
    public Transform[] ppoints; // Set of patrol points
    public float patrolRadius = 3f; // Radius around each point where the NPC can move to
    public float speed = 2f; // Speed of the NPC
    public float waitTimeAtPoint = 2f; // Time to wait at each point
    public float turnSpeed = 5f; // Speed of turning to face the player

    private int activePPoint = 0;
    private bool playerInRange = false;

    void Start()
    {
        if (ppoints.Length > 0)
        {
            StartCoroutine(Patrolling()); // Start patrolling coroutine
        }
    }

    IEnumerator Patrolling()
    {
        while (true) // Looping coroutine
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
        // Checking if player has entered the range
        if (other.transform == player)
        {
            // Call the function to rotate the NPC to face player
            playerInRange = true;
            StartCoroutine(TurnToFacePlayer()); // Start turning coroutine
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.transform == player)
        {
            playerInRange = false; // No more player in range, moving on
        }
    }

    private IEnumerator TurnToFacePlayer()
    {
        // Rotate smoothly to face the player
        while (playerInRange)
        {
            Vector3 direction = player.position - transform.position;
            direction.y = 0; // Keep the rotation on the horizontal plane

            Quaternion targetRotation = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);

            yield return null; // Wait for the next frame
        }
    }
}