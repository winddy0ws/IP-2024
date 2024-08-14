/*
 * Author: Livinia Poo
 * Date: 11/08/24
 * Description: 
 * Quests, Completions and Progress
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestManager : MonoBehaviour
{
    /// <summary>
    /// Booleans for giving quests
    /// </summary>
    public static bool mayorQuestGiven = false;
    public static bool woodQuestGiven = false;
    public static bool shroomQuestGiven = false;
    public static bool bagQuestGiven = false;
    public static bool wakeupQuestGiven = true;

    public static bool mayorQuestCompleted = false;
    public static bool bagQuestCompleted = false;
    public static bool woodQuestCompleted = false;
    public static bool shroomQuestCompleted = false;
    public static bool wakeupQuestCompleted = false;

    public static string questGiver;

    private Player player;
    QuestUI questText;

    private void Start()
    {
        player = FindObjectOfType<Player>();
        if (wakeupQuestGiven)
        {
            player.SetHasQuest(true);
        }
        Debug.Log("theres a quest");
    }

    public void StartQuest()
    {
        if (questGiver == "bagQuest")
        {
            bagQuestGiven = true;
            bagQuestCompleted = false;
            player.SetHasQuest(true);
        }

        if (questGiver == "mayorQuest")
        {
            mayorQuestGiven = true;
            mayorQuestCompleted = false;
            player.SetHasQuest(true);
        }

        if (questGiver == "woodQuest")
        {
            woodQuestGiven = true;
            woodQuestCompleted = false;
            player.SetHasQuest(true);
        }
     
        if (questGiver == "shroomQuest")
        {
            shroomQuestGiven = true;
            shroomQuestCompleted = false;
            player.SetHasQuest(true);
        }
    }

    public void CompleteWakeupQuest()
    {
        wakeupQuestCompleted = true;
        wakeupQuestGiven = false;
        mayorQuestGiven = true;
        player.SetHasQuest(false);
        Debug.Log("Wakeup quest completed, Mayor's quest started");
        questText.Update();
    }

    public void CompleteMayorQuest()
    { 
        mayorQuestCompleted = true;
        player.SetHasQuest(false);
        Debug.Log("Mayor quest completed, all Quests completed");
        questText.Update();
    }

    public void CompleteBagQuest()
    {
        bagQuestCompleted = true;
        player.SetHasQuest(false);
        Debug.Log("Bag quest completed, Setting hasQuest to false.");
        questText.Update();
    }

    public void CompleteWoodQuest()
    {
        woodQuestCompleted = true;
        player.SetHasQuest(false);
        Debug.Log("Wood quest completed, Setting hasQuest to false.");
        questText.Update();
    }

    public void CompleteShroomQuest()
    {
        shroomQuestCompleted = true;
        player.SetHasQuest(false);
        Debug.Log("Shroom quest completed, Setting hasQuest to false.");
        questText.Update();
    }
}
