using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collectible : Interactable
{
    [SerializeField]

    public override void OnPress()
    {
        base.OnPress();
        Destroy(gameObject);

    }

}