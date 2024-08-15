/*
 * Author: Yau Wai Lam
 * Date: 02/08/2024
 * Description: 
 * Collectible script as Interactable child script
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collectible : Interactable
{
    [SerializeField]

    ///<summary>
    /// Overrides interactable scripts to destroy gameobjects on collection
    /// </summary>
    public override void OnPress()
    {
        base.OnPress();
        AudioManager.instance.PlaySFX("Collect", transform.position);
        Destroy(gameObject);
    }

}