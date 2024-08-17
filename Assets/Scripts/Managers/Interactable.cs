/*
 * Author: Yau Wai Lam
 * Date: 02/08/24
 * Description: 
 * Parent class Interactable
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour
{
    /// <summary>
    /// Parent class for almost all interactables
    /// </summary>
    public virtual void OnPress()
    {
        Debug.Log("press");
    }

}
