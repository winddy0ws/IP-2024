/*
 * Author: Livinia Poo
 * Date: 18/08/24
 * Description: 
 * Start the game from the cutscene
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StartCutToGame : MonoBehaviour
{
    /// <summary>
    /// Referencing the scene
    /// </summary>
    [SerializeField]
    int scene;

    /// <summary>
    /// Move between scene
    /// </summary>
    void OnEnable()
    {
        SceneManager.LoadScene(scene);
    }
}
