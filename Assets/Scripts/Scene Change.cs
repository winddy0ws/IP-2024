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
    public string scene;

    /// <summary>
    /// Player will change between scene upon entering area
    /// </summary>
    /// <param name="other"></param>
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            SceneManager.LoadScene(scene);
        }
    }
}
