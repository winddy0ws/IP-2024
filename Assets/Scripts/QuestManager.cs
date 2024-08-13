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

    public static bool bagQuestCompleted = false;

    public static string questGiver;

    private Player player;
    QuestUI questText;

    private void Start()
    {
        player = FindObjectOfType<Player>();
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
            player.SetHasQuest(true);
        }

        if (questGiver == "woodQuest")
        {
            woodQuestGiven = true;
            player.SetHasQuest(true);
        }
     
        if (questGiver == "shroomQuest")
        {
            shroomQuestGiven = true;
            player.SetHasQuest(true);
        }
    }

    public void CompleteBagQuest()
    {
        bagQuestCompleted = true;
        player.SetHasQuest(false);
        Debug.Log("Bag quest completed, Setting hasQuest to false.");
        questText.Update();
    }
}
