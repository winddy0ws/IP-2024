/*
 * Author: Arwen Loh
 * Date: 11/08/24
 * Description: Mayor Idly Wandering TownHall
 */

using System.Collections;
using UnityEngine;

public class MrMole : MonoBehaviour
{
    public Transform player; // Referencing player transform
    public Transform[] ppoints; // Set of patrol points
    public float patrolRadius = 3f; // Radius around each point where the NPC can move to
    public float speed = 2f; // Speed of the NPC
    public float waitTimeAtPoint = 2f; // Time to wait at each point
    public float turnSpeed = 5f; // Speed of turning to face the player or patrol point
    public float detectionRange = 5f; // Range within which the player is detected

    private int activePPoint = 0;
    public bool isInteracting = false;
    private Coroutine patrollingCoroutine;

    void Start()
    {
        if (ppoints.Length > 0)
        {
            patrollingCoroutine = StartCoroutine(Patrolling()); // Start patrolling coroutine
        }
    }

/*    void Update()
    {
        // Check for interaction with the 'E' key and player in range
        if (Vector3.Distance(transform.position, player.position) <= detectionRange && Input.GetKeyDown(KeyCode.E))
        {
            isInteracting = true;
            StopPatrolling(); // Stop patrolling when interacting
            StartCoroutine(HandleInteraction()); // Handle interaction
        }
    }*/

    IEnumerator Patrolling()
    {
        while (true)
        {
            if (isInteracting)
            {
                yield return null; // If interacting, stop moving
                continue;
            }

            Vector3 targetPosition = ppoints[activePPoint].position;

            // Rotate towards the target position
            yield return StartCoroutine(TurnToFaceDirection(targetPosition));

            // Move towards the target position
            while (Vector3.Distance(transform.position, targetPosition) > 0.1f)
            {
                if (isInteracting)
                {
                    yield return null; // Stop moving if interacting
                    break;
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

    private IEnumerator TurnToFaceDirection(Vector3 targetPosition)
    {
        Vector3 direction = targetPosition - transform.position;
        direction.y = 0; // Keep the rotation on the horizontal plane

        Quaternion targetRotation = Quaternion.LookRotation(direction);

        while (Quaternion.Angle(transform.rotation, targetRotation) > 0.1f)
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);
            yield return /*null*/ new WaitForEndOfFrame(); // Wait for the next frame
        }

        transform.rotation = targetRotation; // Snap to the final rotation
    }

    public IEnumerator HandleInteraction()
    {
        // Turn to face the player
        Vector3 direction = player.position - transform.position;
        direction.y = 0;

        Quaternion targetRotation = Quaternion.LookRotation(direction);

        while (Quaternion.Angle(transform.rotation, targetRotation) > 0.1f)
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, turnSpeed * Time.deltaTime);
            yield return /*null*/ new WaitForEndOfFrame(); // Wait for the next frame
        }

        while (isInteracting)
        {
            yield return null;
        }

        ResumePatrolling();
    }

    public void StopPatrolling()
    {
        if (patrollingCoroutine != null)
        {
            StopCoroutine(patrollingCoroutine); // Stop the patrolling coroutine
            patrollingCoroutine = null;
        }
    }

    public void ResumePatrolling()
    {
        if (patrollingCoroutine == null && ppoints.Length > 0)
        {
            patrollingCoroutine = StartCoroutine(Patrolling());
        }
    }

    public void StartInteraction()
    {
        isInteracting = true;
        StopPatrolling();
        StartCoroutine(HandleInteraction());
    }

    public void EndInteraction()
    {
        isInteracting = false;
        ResumePatrolling();
    }
}
