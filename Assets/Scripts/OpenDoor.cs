using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenDoor : Interactable
{
    public override void OnPress()
    {
        Debug.Log("rotate");
        base.OnPress();
        Vector3 newRotation = transform.eulerAngles;

        newRotation.y += 90f;



        transform.eulerAngles = newRotation;
    }
}
