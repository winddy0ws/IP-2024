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
using UnityEngine.SceneManagement;

public class QuestUI : MonoBehaviour
{
    public TextMeshProUGUI questName;
    public TextMeshProUGUI questProgress;
    public TextMeshProUGUI questDefault;

    private Player player;

    private void Start()
    {
        player = FindObjectOfType<Player>();
        Debug.Log($"Active Scene Name: {SceneManager.GetActiveScene().name}");

        Debug.Log($"wakeupQuestGiven: {QuestManager.wakeupQuestGiven}, hasQuest: {player.hasQuest}, Scene: {SceneManager.GetActiveScene().name}");

        if (QuestManager.wakeupQuestGiven == true && player.hasQuest && SceneManager.GetActiveScene().name == "House")
        {
            Debug.Log("Need to speak to Mayor");
            questDefault.text = "Talk to the Mayor";
            questName.text = "";
            questProgress.text = "";
        }
    }

    public void Update()
    {
        bool inExcludedScenes = SceneManager.GetActiveScene().name == "House" || SceneManager.GetActiveScene().name == "Main menu";
        Debug.Log($"hasQuest: {player.hasQuest}, wakeupQuestGiven: {QuestManager.wakeupQuestGiven}, wakeupQuestCompleted: {QuestManager.wakeupQuestCompleted}");

        if (!inExcludedScenes && !player.hasQuest)
        {
            // TODO: check if bagQuestCompleted, woodQuestCompleted, shroomQuestCompleted, wakeupQuestCompleted are all true
            //       if so, then show "talk to the mayor" instead of "help the villagers"

            Debug.Log($"QuestUI.Update: Showing default text (questDefault={questDefault}, questName={questName}, questProgress={questProgress}, questDefault.text='{questDefault.text}')");
            GameManager.Instance.questName.text = "";
            GameManager.Instance.questDefault.text = "Help the villagers";
            GameManager.Instance.questProgress.text = "";
        }
        else if (!inExcludedScenes && player.hasQuest)
        {
            if ((QuestManager.questGiver == "bagQuest") && QuestManager.bagQuestGiven && !QuestManager.bagQuestCompleted)
            {
                Debug.Log($"QuestUI.Update: Showing quest text for Mr T.'s bag bagQuestCompleted={QuestManager.bagQuestCompleted}");
                GameManager.Instance.questName.text = "Find Mr T.'s bag";
                GameManager.Instance.questProgress.text = $"{GameManager.bagCount} / 1";
                GameManager.Instance.questDefault.text = "";
            }
            else if ((QuestManager.questGiver == "woodQuest") && QuestManager.woodQuestGiven && !QuestManager.woodQuestCompleted)
            {
                Debug.Log("QuestUI.Update: woodie");
                GameManager.Instance.questName.text = "Find 5 pieces of wood";
                GameManager.Instance.questProgress.text = $"{GameManager.woodCount} / 5";
                GameManager.Instance.questDefault.text = "";

            }
            else if ((QuestManager.questGiver == "shroomQuest") && QuestManager.shroomQuestGiven && !QuestManager.shroomQuestCompleted)
            {
                Debug.Log("QuestUI.Update: shroomie");
                GameManager.Instance.questName.text = "Find 8 Mushrooms";
                GameManager.Instance.questProgress.text = $"{GameManager.shroomCount} / 8";
                GameManager.Instance.questDefault.text = "";
            }
            else if (QuestManager.wakeupQuestGiven == true && player.hasQuest && QuestManager.questGiver == "mayorQuest")
            {
                Debug.Log("QuestUI.Update: mayorrru");
                GameManager.Instance.questDefault.text = "Talk to the Mayor";
                GameManager.Instance.questProgress.text = "";
                GameManager.Instance.questName.text = "";
            }
        }
    }
}
