/*
 * Author: Yau Wai Lam
 * Date: 24/07/24
 * Description: 
 * UI management for Main Menu
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Mainmenu : MonoBehaviour
{
    /// <summary>
    /// variable for which scene to navigate to
    /// </summary>
    public int Scene;

    /// <summary>
    /// Starts game with first scene after clicking Play
    /// </summary>
    public void PlayGame()
    {
        SceneManager.LoadScene(Scene);
    }

    /// <summary>
    /// Closes application
    /// </summary>
    public void QuitGame()
    {
        Application.Quit();
    }
       
}
