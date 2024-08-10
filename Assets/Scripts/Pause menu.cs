/*
 * Author: Yau Wai Lam
 * Date: 24/07/24
 * Description: 
 * UI management and functions for pause menu
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Pausemenu : MonoBehaviour
{
    /// <summary>
    /// Variable for which scene to navigate to
    /// </summary>
    public int Scene;

    /// <summary>
    /// Determines whether the game is paused
    /// </summary>
    public static bool Paused = false;

    public GameObject PauseMenuCanvas;

    // Start is called before the first frame update
    void Start()
    {
        Time.timeScale = 1f;
        Cursor.visible = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (Paused)
            {
                Play();
                if (Input.GetKey(KeyCode.Space))
                    Cursor.lockState = CursorLockMode.None;
            }
            else
            {
                Stop();
            }
        }
    }

    /// <summary>
    /// Stops game while Pause is enabled
    /// </summary>
    void Stop()
    {
        PauseMenuCanvas.SetActive(true);
        Time.timeScale = 0f;
        Paused = true;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }

    /// <summary>
    /// Resumes game while Pause is disabled
    /// </summary>
    public void Play()
    {
        PauseMenuCanvas.SetActive(false);
        Time.timeScale = 1f;
        Paused = false;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = false;
    }

    /// <summary>
    /// Navigates back to mainmenu if clicked
    /// </summary>
    public void Mainmenu()
    {
       SceneManager.LoadScene(Scene);
    }

    /// <summary>
    /// Closes application if clicked
    /// </summary>
    public void Quitgame()
    {
        Application.Quit();
    }
}
