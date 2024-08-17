/*
 * Author: Livinia Poo
 * Date: 11/08/24
 * Description: 
 * Quests, Completions and Progress
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

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
    private QuestUI questText;  // not set in Awake/Start/OnEnable, might bug? idk... oh deer...

    private void Start()
    {
        player = FindObjectOfType<Player>();

        if (wakeupQuestGiven) player.SetHasQuest(true);
        Debug.Log("theres a quest");
    }

    /// <summary>
    /// Helper function to get the Quest UI Text and update it
    /// </summary>
    private void FinishQuest()
    {
        // get the player and stop the quest
        Debug.Log("FinishQuest: getting and stopping player");
        player = GameManager.Instance.player.GetComponentInChildren<Player>();
        if (player != null)
        {
            Debug.Log("FinishQuest: got player");
            player.SetHasQuest(false);
        }

        // quest ui is always under game manager so take it from there or smth
        Debug.Log("FinishQuest: getting and updating quest text");
        questText = GameManager.Instance.GetComponentInChildren<QuestUI>();
        // check and update
        if (questText != null)
        {
            Debug.Log("FinishQuest: quest text is not null, updating it");
            questText.Update();
        }
    }

    public void StartQuest()
    {
        Debug.Log($"StartQuest: from {questGiver}");

        if (questGiver == "bagQuest")
        {
            // note: if the penguin moves funky move the below code until SetHasQuest(true) to under the penguin moving code
            if (bagQuestCompleted) return;
            bagQuestGiven = true;
            bagQuestCompleted = false;
            player.SetHasQuest(true);

            // find the penguin and get its RoamingAI
            var penguinMaybe = GameObject.FindGameObjectWithTag("Penguin");
            if (penguinMaybe)
            {
                // MAKE THE PENGUIN MOVE AGAIN
                var npcControl = penguinMaybe.GetComponentInChildren<RoamingAI>();
                npcControl.nextState = "Roaming";
                npcControl.agent.isStopped = false;
                npcControl.animator.SetTrigger("");
            }
            else
            {
                throw new System.NullReferenceException("StartQuest: could not get the penguin to roam again because i cant find a 'Penguin' tagged object");
            }
            

            // SET TAG ACTIVE BECAUSE WE ALREADY ARE IN THE SCENE WHEN WE START THE QUEST
            Debug.Log("Starting bag quest, calling SetParentTagActivation");
            GameManager.Instance.SetParentTagActivation("Bag", true);
        }

        if (questGiver == "mayorQuest")
        {
            if (mayorQuestCompleted) return;
            mayorQuestGiven = true;
            mayorQuestCompleted = false;
            player.SetHasQuest(true);
        }

        if (questGiver == "woodQuest")
        {
            if (woodQuestCompleted) return;
            woodQuestGiven = true;
            woodQuestGiven = true;
            woodQuestCompleted = false;
            player.SetHasQuest(true);
            // GameManager.Instance.SetParentTagActivation("Wood", true);
        }

        if (questGiver == "shroomQuest")
        {
            if (shroomQuestCompleted) return;
            Debug.Log("SHROOMQUEST");
            shroomQuestGiven = true;
            shroomQuestCompleted = false;
            player.SetHasQuest(true);
            // GameManager.Instance.SetParentTagActivation("Mushroom", true);
        }
    }

    public void CompleteWakeupQuest()
    {
        wakeupQuestCompleted = true;
        wakeupQuestGiven = false;
        mayorQuestGiven = true;
        Debug.Log("Wakeup quest completed, Mayor's quest started");
        FinishQuest();
    }

    public void CompleteMayorQuest()
    {
        mayorQuestCompleted = true;
        player.SetHasQuest(false);
        Debug.Log("Mayor quest completed, all Quests completed");
        FinishQuest();
    }

    public void CompleteBagQuest()
    {
        bagQuestCompleted = true;
        // GameManager.Instance.SetParentTagActivation("Bag", false);
        Debug.Log("Bag quest completed, finishing quest.");
        FinishQuest();
    }

    public void CompleteWoodQuest()
    {
        woodQuestCompleted = true;
        // GameManager.Instance.SetParentTagActivation("Wood", false);
        Debug.Log("Wood quest completed, finishing quest.");
        FinishQuest();
    }

    public void CompleteShroomQuest()
    {
        shroomQuestCompleted = true;
        // GameManager.Instance.SetParentTagActivation("Mushroom", false);
        Debug.Log("Shroom quest completed, finishing quest.");
        FinishQuest();
    }
}
