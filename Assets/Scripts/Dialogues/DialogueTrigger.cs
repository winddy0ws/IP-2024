/*
 * Author: Yau Wai Lam
 * Date: 09/08/24
 * Description: 
 * Triggering the dialogue sessions
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : Interactable
{
    /// <summary>
    /// Referencing
    /// </summary>
    public Dialogue dialogue;

    /// <summary>
    /// Interacting with NPCs
    /// </summary>
    public override void OnPress()
    {
        base.OnPress();
        FindAnyObjectByType<DialogueManager>().StartDialogue(dialogue);
    }

    /// <summary>
    /// Starts dialogue after interaction
    /// </summary>
    public void TriggerDialogue ()
    {
        FindAnyObjectByType<DialogueManager>().StartDialogue(dialogue);
    }
}
