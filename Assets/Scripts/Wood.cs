using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wood : Interactable
{
   /* [SerializeField]
    private AudioClip collectAudio;*/
    public override void OnPress()
    {
        base.OnPress();/*
        AudioSource.PlayClipAtPoint(collectAudio, transform.position, 1f);*/
        Destroy(gameObject);
        GameManager.Instance.woodCollected = true;
        GameManager.Instance.woodCount += 1;

    }
}