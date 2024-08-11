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

public class QuestManager : MonoBehaviour
{
    /// <summary>
    /// Booleans for giving quests
    /// </summary>
    public static bool mayorQuestGiven = false;
    public static bool woodQuestGiven = false;
    public static bool shroomQuestGiven = false;
    public static bool bagQuestGiven = false;

    public static bool bagQuestCompleted = false;

    public static string questGiver;

    public TextMeshProUGUI questName;
    public TextMeshProUGUI questProgress;
    public GameObject questSpace;

    private void Start()
    {
        questSpace.SetActive(false);
    }

    private void Update()
    {
        if (questGiver == "bagQuest")
        {
            questName.text = "Find Mr T.'s bag";
            questProgress.text = $"{GameManager.bagCount} || 1";
        }
        else if (questGiver == "mayorQuest")
        {
            questName.text = "Find and talk to the Mayor";
            questProgress.text = "";
        }
        else if (questGiver == "woodQuest")
        {
            questName.text = "Find 5 pieces of wood";
            questProgress.text = $"{GameManager.woodCount} || 5";
        }
        else if (questGiver == "shroomQuest")
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

    public void StartQuest()
    {

        if (questGiver == "bagQuest")
        {
            bagQuestGiven = true;
            bagQuestCompleted = false;
        }

        if (questGiver == "mayorQuest")
        {
            mayorQuestGiven = true;
        }

        if (questGiver == "woodQuest")
        {
            woodQuestGiven = true;
        }

        if (questGiver == "shroomQuest")
        {
            shroomQuestGiven = true;
        }
    }

    public void CompleteBagQuest()
    {
        bagQuestCompleted = true;
    }
}
