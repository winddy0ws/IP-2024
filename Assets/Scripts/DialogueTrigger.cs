/*
 * Author: Yau Wai Lam
 * Date: 09/08/24
 * Description: 
 * Triggering the dialogue sessions
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DailogueTrigger : Interactable
{
    /// <summary>
    /// Referencing
    /// </summary>
    public Dailogue dailogue;

    /// <summary>
    /// Interacting with NPCs
    /// </summary>
    public override void OnPress()
    {
        base.OnPress();
        FindAnyObjectByType<DailogueManager>().StartDailogue(dailogue);
    }

    /// <summary>
    /// Starts dialogue after interaction
    /// </summary>
    public void TriggerDailogue ()
    {
        FindAnyObjectByType<DailogueManager>().StartDailogue(dailogue);
    }
}
