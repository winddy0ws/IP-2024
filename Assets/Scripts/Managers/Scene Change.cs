/*
 * Author: Yau Wai Lam
 * Date: 10/08/2024
 * Description: 
 * FSM and Damage dealing script
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChange : MonoBehaviour
{
    /// <summary>
    /// Variable for which scene to change to
    /// </summary>
    public string sceneName;

    /// <summary>
    /// Player will change between scene upon entering area
    /// </summary>
    /// <param name="other"></param>
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (!string.IsNullOrEmpty(sceneName))
            {
                SceneManager.LoadScene(sceneName);
                Debug.Log($"Loading scene: {sceneName}");
            }
            else
            {
                Debug.LogError("Scene name is not set in the SceneChange script");
            }
        }
    }
}
