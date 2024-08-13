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
