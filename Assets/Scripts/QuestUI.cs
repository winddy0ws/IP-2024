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

        if (QuestManager.wakeupQuestGiven == true && player.hasQuest && SceneManager.GetActiveScene().name == "House_Livi") ;
        {
            Debug.Log("Need to speak to Mayor");
            questDefault.text = "Talk to the Mayor";
            questName.text = "";
            questProgress.text = "";
           /* questDefault.gameObject.SetActive(true);
            questName.gameObject.SetActive(false);
            questProgress.gameObject.SetActive(false);*/
        }
    }

    public void Update()
    {
        bool inExcludedScenes = SceneManager.GetActiveScene().name == "House_Livi" || SceneManager.GetActiveScene().name == "Main menu";

        Debug.Log($"hasQuest: {player.hasQuest}, wakeupQuestGiven: {QuestManager.wakeupQuestGiven}, wakeupQuestCompleted: {QuestManager.wakeupQuestCompleted}");


        if (!inExcludedScenes && !player.hasQuest)
        {
            Debug.Log("Showing default text");
            questDefault.text = "Help the villagers";
            questDefault.gameObject.SetActive(true);
            questName.gameObject.SetActive(false);
            questProgress.gameObject.SetActive(false);
        }
        else if (!inExcludedScenes && player.hasQuest)
        {
            if (QuestManager.questGiver == "bagQuest" && QuestManager.bagQuestGiven)
            {
                Debug.Log("Showing quest text for Mr T.'s bag");
                questName.text = "Find Mr T.'s bag";
                questProgress.text = $"{GameManager.bagCount} / 1";
                questName.gameObject.SetActive(true);
                questProgress.gameObject.SetActive(true);
                questDefault.gameObject.SetActive(false);
            }
            else if (QuestManager.questGiver == "woodQuest" && QuestManager.woodQuestGiven)
            {
                Debug.Log("woodie");
                questName.text = "Find 5 pieces of wood";
                questProgress.text = $"{GameManager.woodCount} || 5";
                questDefault.gameObject.SetActive(false);
            }
            else if (QuestManager.questGiver == "shroomQuest" && QuestManager.shroomQuestGiven)
            {
                Debug.Log("shroomie");
                questName.text = "Find 8 Mushrooms";
                questProgress.text = $"{GameManager.shroomCount} || 8";
                questDefault.gameObject.SetActive(false);
                questName.gameObject.SetActive(true);
                questProgress.gameObject.SetActive(true);
            }
            else if (QuestManager.wakeupQuestGiven == true && player.hasQuest && QuestManager.questGiver == "mayorQuest")
            {
                Debug.Log("mayorrru");
                questDefault.text = "Talk to the Mayor";
                questName.gameObject.SetActive(false);
                questProgress.gameObject.SetActive(false);

            }
        }
    }
}
