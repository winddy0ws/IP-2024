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
    public void PlaySFX(string name)
    {
        Sound sound = Array.Find(sfxSounds, x => x.soundName == name);

        if (sound == null)
        {
            Debug.Log("Sound not found");
        }
        else
        {
            sfxSource.PlayOneShot(sound.clip);
        }
    }

    private void Start()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }

        if (SceneManager.GetActiveScene().buildIndex == 0)
        {
            PlayBGM("Menu BGM");
        }
        else
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
