using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DailogueTrigger : Interactable
{
    public Dailogue dailogue;

    public override void OnPress()
    {
        base.OnPress();
        FindAnyObjectByType<DailogueManager>().StartDailogue(dailogue);
    }
    public void TriggerDailogue ()
    {
        FindAnyObjectByType<DailogueManager>().StartDailogue(dailogue );
    }
}
