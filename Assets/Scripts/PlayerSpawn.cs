using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSpawn : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        string lastExit = GameManager.Instance.lastExitPoint;
        GameObject spawnPoint = GameObject.Find(lastExit);

        if (spawnPoint != null)
        {
            GameObject player = GameObject.FindGameObjectWithTag("Player");
        }
        else
        {
            Debug.LogWarning("Spawn point not found: " + lastExit);
        }
    }

  
}
