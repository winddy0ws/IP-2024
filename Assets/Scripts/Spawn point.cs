using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawnpoint : MonoBehaviour
{
    private void Start()
    {
        // Get the player's spawn point based on the last exit point
        string lastExit = GameManager.Instance.lastExitPoint;

        // Find the spawn point that matches the last exit point
        GameObject spawnPoint = GameObject.Find(lastExit);

        // Set the player's position to the spawn point
        if (spawnPoint != null)
        {
            GameObject player = GameObject.FindGameObjectWithTag("Player");
            player.transform.position = spawnPoint.transform.position;
        }
        else
        {
            Debug.LogWarning("Spawn point not found: " + lastExit);
        }
    }
}
