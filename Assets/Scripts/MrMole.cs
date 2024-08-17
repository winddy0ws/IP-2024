using System.Collections;
using UnityEngine;

public class MrMole : MonoBehaviour
{
    [SerializeField] Transform pointA; // First patrol point
    [SerializeField] Transform pointB; // Second patrol point
    [SerializeField] float speed = 2f; // Speed of movement
    [SerializeField] float turnSpeed = 5f; // Speed of turning
    [SerializeField] float waitTimeAtPoint = 2f; // Time to wait at each patrol point
    public Transform player; // Reference to the player

    private bool isInteracting = false;
    private Vector3 targetPoint;
    private string currentState = "Patrolling";
    private string nextState = "Patrolling";

    // Start is called before the first frame update
    void Start()
    {
        if (pointA != null && pointB != null)
        {
            targetPoint = pointA.position;
            StartCoroutine(Patrolling());
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (currentState != nextState)
        {
            currentState = nextState;
            SwitchState();
        }

        if (isInteracting)
        {
            FacePlayer();
        }
    }

    void SwitchState()
    {
        StopAllCoroutines();
        if (currentState == "Patrolling")
        {
            StartCoroutine(Patrolling());
        }
    }

    IEnumerator Patrolling()
    {
        while (currentState == "Patrolling")
        {
            if (!isInteracting)
            {
                MoveTowards(targetPoint);

                if (Vector3.Distance(transform.position, targetPoint) < 0.1f)
                {
                    yield return new WaitForSeconds(waitTimeAtPoint);

                    // Switch target point
                    targetPoint = targetPoint == pointA.position ? pointB.position : pointA.position;
                }
            }

            yield return new WaitForEndOfFrame();
        }
    }

    void MoveTowards(Vector3 target)
    {
        Vector3 direction = (target - transform.position).normalized;
        transform.position += direction * speed * Time.deltaTime;

        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * turnSpeed);
    }

    public void StartInteraction()
    {
        isInteracting = true; // Stop movement
    }

    public void EndInteraction()
    {
        isInteracting = false; // Resume movement
        targetPoint = pointA.position; // Resume patrolling
        nextState = "Patrolling";
    }

    void FacePlayer()
    {
        // get the player first
        var playerObject = GameObject.FindAnyObjectByType<Player>();
        if (playerObject == null)
        {
            Debug.LogError("FacePlayer: cannot find 'Player' type object to face (what??)");
        }
        player = playerObject.transform;

        Vector3 direction = (player.position - transform.position).normalized;
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * turnSpeed);
    }
}
