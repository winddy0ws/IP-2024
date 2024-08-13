/*
 * Author: Yau Wai Lam and Livinia Poo
 * Date: 24/07/24
 * Description: 
 * UI management and functions for pause menu
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Pausemenu : MonoBehaviour
{
    /// <summary>
    /// Variable for which scene to navigate to
    /// </summary>
    public int Scene;

    /// <summary>
    /// Variables for music control
    /// </summary>
    public Slider _bgmSlider, _sfxSlider;

    /// <summary>
    /// Determines whether the game is paused
    /// </summary>
    public static bool Paused = false;

    public GameObject PauseMenuCanvas;

    // Start is called before the first frame update
    void Start()
    {
        PauseMenuCanvas.SetActive(false);

        Time.timeScale = 1f;
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        AudioManager instance = FindObjectOfType<AudioManager>();
        if (instance != null)
        {
            Debug.Log("AudioManager found");
        }
        Debug.Log($"AudioManager instance in Pausemenu: {AudioManager.instance}");
    }

    // Update is called once per frame
    /*void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (Paused)
            {
                Play();
            }
            else
            {
                Stop();
            }
        }
    }*/

    /// <summary>
    /// Stops game while Pause is enabled
    /// </summary>
    public void Stop()
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

    /// <summary>
    /// Adjust music/sfx volume
    /// </summary>
    public void BGMVolume()
    {
        AudioManager audioManager = FindObjectOfType<AudioManager>();

        if (AudioManager.instance != null)
        {
            audioManager.BGMVolume(_bgmSlider.value);
        }
        else
        {
            Debug.Log("AudioManager instance is null");
        }
    }
    public void SFXVolume()
    {
        AudioManager audioManager = FindObjectOfType<AudioManager>();

        if (AudioManager.instance != null)
        {
            audioManager.SFXVolume(_sfxSlider.value);
        }

    }
}
