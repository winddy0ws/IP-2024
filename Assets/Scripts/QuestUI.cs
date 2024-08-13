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

    public void Update()
    {
        if (QuestManager.questGiver == "bagQuest" && QuestManager.bagQuestGiven)
        {
            questName.text = "Find Mr T.'s bag";
            questProgress.text = $"{GameManager.bagCount} || 1";
            SetQuestUITextActive(true);
        }
        else if (QuestManager.questGiver == "mayorQuest" && QuestManager.mayorQuestGiven)
        {
            questName.text = "Find and talk to the Mayor";
            questProgress.text = "";
            SetQuestUITextActive(true);
        }
        else if (QuestManager.questGiver == "woodQuest" && QuestManager.woodQuestGiven)
        {
            questName.text = "Find 5 pieces of wood";
            questProgress.text = $"{GameManager.woodCount} || 5";
            SetQuestUITextActive(true);
        }
        else if (QuestManager.questGiver == "shroomQuest" && QuestManager.shroomQuestGiven)
        {
            questName.text = "Find XXX's bag";
            questProgress.text = $"{GameManager.shroomCount} || 8";
            SetQuestUITextActive(true);
        }
        else
        {
            SetQuestUITextActive(false);
        }
    }

    public void SetQuestUITextActive(bool isActive)
    {
        questName.gameObject.SetActive(isActive);
        questProgress.gameObject.SetActive(isActive);
    }
}
