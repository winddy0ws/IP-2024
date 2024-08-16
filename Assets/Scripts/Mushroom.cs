/*
 * Author: Yau Wai Lam
 * Date: 13/08/2024
 * Description: 
 * Collect mushroom
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mushroom : Interactable
{
    private void Start()
    {
        gameObject.SetActive(false);
    }


    private void Update()
    {
        if (!QuestManager.shroomQuestGiven)
        {
            gameObject.SetActive(false);
        }
        else if (QuestManager.shroomQuestGiven)
        {
            gameObject.SetActive(true);
        }
    }

    /// <summary>
    /// Overrides Interactable class to collect and collect and increase mushroom count
    /// </summary>
    public override void OnPress()
    {
        base.OnPress();
        AudioManager.instance.PlaySFX("Collect", transform.position);
        Destroy(gameObject);
        GameManager.shroomCount += 1;

        if (GameManager.shroomCount == 8)
        {
            GameManager.shroomCollected = true;
        }
    }
}