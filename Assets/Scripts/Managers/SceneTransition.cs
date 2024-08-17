/*
 * Author: Yau Wai Lam
 * Date: 16/08/24
 * Description: 
 * To transition player from one scene to another at specific spawns
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneTransition : MonoBehaviour
{
    /// <summary>
    /// References and Calls
    /// </summary>
    [SerializeField]
    private string sceneToLoad;
    [SerializeField]
    private string exitPointName;

    /// <summary>
    /// Spawns player in next scene at specified point
    /// </summary>
    /// <param name="other"></param>
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {

            GameManager.Instance.lastExitPoint = exitPointName;
            SceneManager.LoadScene(sceneToLoad);
        }
    }

}