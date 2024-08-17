/*
 * Author: Yau Wai Lam and Livinia Poo
 * Date: 16/08/24
 * Description: 
 * Player spawn save in Scene
 */

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
            player.transform.position = spawnPoint.transform.position;
        }
        else
        {
            Debug.LogWarning("Spawn point not found: " + lastExit);
        }
    }

  
}
