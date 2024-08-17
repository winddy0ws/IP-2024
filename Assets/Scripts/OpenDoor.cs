/*
 * Author: Yau Wai Lam
 * Date: 11/08/24
 * Description: 
 * Opening doors based on interaction
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenDoor : Interactable
{ 
    /// <summary>
    /// Setup closed state
    /// </summary>
    public bool isOpen = false;

    /// <summary>
    /// Uses interactable parent class to open door
    /// </summary>
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
