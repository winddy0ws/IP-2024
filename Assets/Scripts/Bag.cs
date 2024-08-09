using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bag : Interactable
{
    [SerializeField]

    public override void OnPress()
    {
        base.OnPress();
        Destroy(gameObject);
        GameManager.Instance.BagCollected = true;

    }
}
