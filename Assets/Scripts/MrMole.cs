/*
 * Author: Arwen Loh
 * Date: 11/08/24
 * Description: Mayor Idly Wandering TownHall with State Management
 */

using System.Collections;
using UnityEngine;

public class MrMole : MonoBehaviour
{
    public Transform player; // Reference to the player
    public Transform[] patrolPoints; // Points for patrolling
    public float speed = 2f; // Speed of movement
    public float waitTimeAtPoint = 2f; // Time to wait at each patrol point
    public float turnSpeed = 5f; // Speed of turning

    private int currentPointIndex = 0; // Index of the current patrol point
    private bool isInteracting = false; // Flag to check interaction state
    private Coroutine patrollingCoroutine; // Reference to the patrolling coroutine

    void Start()
    {
        if (patrolPoints.Length > 0)
        {
            patrollingCoroutine = StartCoroutine(Patrolling()); // Start patrolling coroutine
        }
    }

    IEnumerator Patrolling()
    {
        while (true)
        {
            if (isInteracting)
            {
                yield return null; // Stop movement if interacting
                continue;
            }

            Transform targetPoint = patrolPoints[currentPointIndex];

            // Move towards the target point
            while (Vector3.Distance(transform.position, targetPoint.position) > 0.1f)
            {
                if (isInteracting)
                {
                    yield return null; // Stop movement if interacting
                    break;
                }

                // Move towards the target point
                transform.position = Vector3.MoveTowards(transform.position, targetPoint.position, speed * Time.deltaTime);

                // Turn to face the direction of movement
                TurnToFace(targetPoint.position);

                yield return null; // Wait for the next frame
            }

            // Wait at the point
            yield return new WaitForSeconds(waitTimeAtPoint);

            // Move to the next patrol point
            currentPointIndex = (currentPointIndex + 1) % patrolPoints.Length;
        }
    }

    private void TurnToFace(Vector3 targetPosition)
    {
        Vector3 direction = targetPosition - transform.position;
        direction.y = 0; // Keep the rotation on the horizontal plane

        Quaternion targetRotation = Quaternion.LookRotation(direction);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);
    }

    public void StartInteraction()
    {
        Debug.Log("I am interacting");
        isInteracting = true; // Set interacting flag to true

        // Stop movement and face the player
        StopCoroutine(patrollingCoroutine);
        TurnToFace(player.position);
    }

    public void EndInteraction()
    {
        Debug.Log("Interaction ended");
        isInteracting = false; // Set interacting flag to false

        // Resume patrolling
        patrollingCoroutine = StartCoroutine(Patrolling());
    }
}
