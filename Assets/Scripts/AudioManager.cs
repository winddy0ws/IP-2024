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

public class AudioManager : MonoBehaviour
{
    public Sound[] bgmSounds, sfxSounds;
    public AudioSource bgmSource, sfxSource;

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

    public void PlaySFX(string name)
    {
        Sound sound = Array.Find(bgmSounds, x => x.soundName == name);

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
        PlayBGM("Menu BGM");
    }
}
