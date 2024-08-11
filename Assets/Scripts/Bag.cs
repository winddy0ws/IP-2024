/*
 * Author: Yau Wai Lam
 * Date: 10/08/24
 * Description: 
 * Collecting the Bag quest item
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bag : Interactable
{
    [SerializeField]

    ///<summary>
    ///Overrides Interactable script's functions to collect item for quest
    /// </summary>
    public override void OnPress()
    {
        base.OnPress();
        Destroy(gameObject);
        GameManager.bagCollected = true;
        GameManager.bagCount = 1;

    }
}
