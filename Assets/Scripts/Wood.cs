/*
 * Author: Yau Wai Lam
 * Date: 11/08/2024
 * Description: 
 * Collect wood
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wood : Interactable
{

    /// <summary>
    /// Overrides Interactable class to collect and collect and increase woodd count
    /// </summary>
    public override void OnPress()
    {
        base.OnPress();
        /*AudioManager.instance.PlaySFX("Collect", transform.position);*/
        Destroy(gameObject);
        
        GameManager.woodCount += 1;
        if (GameManager.woodCount == 5)
        {
            GameManager.woodCollected = true;
        }

    }
}