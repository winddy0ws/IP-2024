/*
 * Author: Yau Wai Lam and Livinia Poo
 * Date: 24/07/24
 * Description: 
 * UI management for Main Menu
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Mainmenu : MonoBehaviour
{
    /// <summary>
    /// variable for which scene to navigate to
    /// </summary>
    public int Scene;

    /// <summary>
    /// Variables for music control
    /// </summary>
    public Slider _bgmSlider, _sfxSlider;

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

    private void Start()
    {
        AudioManager instance = FindObjectOfType<AudioManager>();
        if (instance != null)
        {
            Debug.Log("AudioManager found");
        }
        Debug.Log($"AudioManager instance in Mainmenu: {AudioManager.instance}");
    }
}
