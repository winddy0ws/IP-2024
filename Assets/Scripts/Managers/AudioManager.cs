/*
 * Author: Livinia Poo
 * Date: 11/08/24
 * Description: 
 * Managing BGM and SFX
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.SceneManagement;

public class AudioManager : MonoBehaviour
{
    /// <summary>
    /// Making the audio available in all scenes and scripts
    /// </summary>
    public static AudioManager instance;

    /// <summary>
    /// Variables
    /// </summary>
    public Sound[] bgmSounds, sfxSounds;
    public AudioSource bgmSource, sfxSource;

    /// <summary>
    /// Function checks for BGM audio
    /// </summary>
    /// <param name="name"></param>
    public void PlayBGM(string name)
    {
        Sound sound = Array.Find(bgmSounds, x => x.soundName == name);

        if (sound == null)
        {
            Debug.Log("Sound not found");
        }
        else
        {
            bgmSource.clip = sound.clip;
            bgmSource.Play();
        }
    }

    /// <summary>
    /// Function checks for SFX audio
    /// </summary>
    /// <param name="name"></param>
    public void PlaySFX(string name, Vector3? position = null)
    {
        Sound sound = Array.Find(sfxSounds, x => x.soundName == name);

        if (sound == null)
        {
            Debug.Log("Sound not found: " + name);
            return;
        }

        if (position.HasValue)
        {
            AudioSource.PlayClipAtPoint(sound.clip, position.Value);
        }
        else
        {
            sfxSource.PlayOneShot(sound.clip);
        }
    }

    private void Awake()
    {
        // check if instance hasn't been set yet
        if (instance == null)
        {
            // set this instance as the singleton instance
            instance = this;
            // don't destroy this instance on a scene load
            DontDestroyOnLoad(gameObject);

            Debug.Log("AudioManager: Awake as singleton instance");
        }
        // check if instance is already set and it's not this instance
        else if (instance != null && instance != this)
        {
            Debug.Log("AudioManager: Awake as non-singleton instance, destroying self");

            // destroy the new instance if it's not the singleton instance
            Destroy(gameObject);
            return;
        }

    }

    private void Start()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
        SetBGMForScene(SceneManager.GetActiveScene().name);
    }

    /// <summary>
    /// Sets the corresponding bgm according to current scene
    /// </summary>
    /// <param name="scene"></param>
    /// <param name="mode"></param>
    void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        SetBGMForScene(scene.name);
    }

    /// <summary>
    /// Sorts BGMs according to scene
    /// </summary>
    /// <param name="sceneName"></param>
    void SetBGMForScene(string sceneName)
    {
        if (SceneManager.GetActiveScene().name == "Main menu")
        {
            PlayBGM("Menu BGM");
        }
        else if (SceneManager.GetActiveScene().name == "Festival Village Day" || SceneManager.GetActiveScene().name == "Forest" || SceneManager.GetActiveScene().name == "House")
        {
            PlayBGM("Game BGM");
        }
    }

    /// <summary>
    /// Adjust music/sfx volume
    /// </summary>
    /// <param name="volume"></param>
    public void BGMVolume(float volume)
    {
        Debug.Log($"Setting BGM volume to: {volume}");
        bgmSource.volume = volume;
    }
    public void SFXVolume(float volume)
    {

        sfxSource.volume = volume;
    }
}
