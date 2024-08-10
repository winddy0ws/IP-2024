/*
 * Author: Yau Wai Lam
 * Date: 11/08/2024
 * Description: 
 * FSM and Damage dealing script
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wood : Interactable
{
   /* [SerializeField]
    private AudioClip collectAudio;*/

    /// <summary>
    /// Overrides Interactable class to collect and collect and increase woodd count
    /// </summary>
    public override void OnPress()
    {
        base.OnPress();/*
        AudioSource.PlayClipAtPoint(collectAudio, transform.position, 1f);*/
        Destroy(gameObject);
        GameManager.Instance.woodCollected = true;
        GameManager.Instance.woodCount += 1;

    }
}