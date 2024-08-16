using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenDoor : Interactable
{ 
    public bool isOpen = false;

    public override void OnPress()
    {
        Debug.Log("rotate");
        
        if (!isOpen)
        {
            Debug.Log("Open door");
            base.OnPress();
            Vector3 newRotation = transform.eulerAngles;

            newRotation.y -= 90f;
            transform.eulerAngles = newRotation;
            isOpen = true;
        }
        else 
        {
            Debug.Log("Close door");
            base.OnPress();
            Vector3 newRotation = transform.eulerAngles;

            newRotation.y += 90f;
            transform.eulerAngles = newRotation;
            isOpen = false;
        }
        
    }
}
