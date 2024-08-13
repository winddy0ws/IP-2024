/*
 * Author: Livinia Poo
 * Date: 11/08/24
 * Description: 
 * Quests, Completions and Progress
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class QuestUI : MonoBehaviour
{
    public TextMeshProUGUI questName;
    public TextMeshProUGUI questProgress;
    public GameObject questSpace;

    private void Start()
    {
        questSpace.SetActive(false);
    }

    private void Update()
    {
        if (QuestManager.questGiver == "bagQuest")
        {
            questName.text = "Find Mr T.'s bag";
            questProgress.text = $"{GameManager.bagCount} || 1";
        }
        else if (QuestManager.questGiver == "mayorQuest")
        {
            questName.text = "Find and talk to the Mayor";
            questProgress.text = "";
        }
        else if (QuestManager.questGiver == "woodQuest")
        {
            questName.text = "Find 5 pieces of wood";
            questProgress.text = $"{GameManager.woodCount} || 5";
        }
        else if (QuestManager.questGiver == "shroomQuest")
        {
            questName.text = "Find XXX's bag";
            questProgress.text = $"{GameManager.shroomCount} || 8";
        }
        else
        {
            questName.text = "";
            questProgress.text = "";
        }
    }
}
