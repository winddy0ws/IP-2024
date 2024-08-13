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

        if (!QuestManager.mayorQuestGiven)
        {
            Debug.Log("Speaking to Mayor");
            questName.text = "";
            questProgress.text = "";
            questDefault.text = "Talk to the Mayor";
            questDefault.gameObject.SetActive(true);
        }
    }

    public void Update()
    {
        bool inExcludedScenes = SceneManager.GetActiveScene().buildIndex == 0 || SceneManager.GetActiveScene().buildIndex == 1;

        Debug.Log($"hasQuest: {player.hasQuest}, bagQuestGiven: {QuestManager.bagQuestGiven}, bagQuestCompleted: {QuestManager.bagQuestCompleted}");

        
        if (!inExcludedScenes && !player.hasQuest && QuestManager.mayorQuestGiven)
        {
            Debug.Log("Showing default text");
            questName.text = "";
            questProgress.text = "";
            questDefault.text = "Help the villagers";
            questDefault.gameObject.SetActive(true);
        }
        else
        {
            questDefault.gameObject.SetActive(false);

            if (QuestManager.questGiver == "bagQuest" && QuestManager.bagQuestGiven)
            {
                Debug.Log("Showing quest text for Mr T.'s bag");
                questName.text = "Find Mr T.'s bag";
                questProgress.text = $"{GameManager.bagCount} || 1";
            }
            else if (QuestManager.questGiver == "mayorQuest" && QuestManager.mayorQuestGiven)
            {
                questName.text = "aaa";
                questProgress.text = "";
            }
            else if (QuestManager.questGiver == "woodQuest" && QuestManager.woodQuestGiven)
            {
                questName.text = "Find 5 pieces of wood";
                questProgress.text = $"{GameManager.woodCount} || 5";
            }
            else if (QuestManager.questGiver == "shroomQuest" && QuestManager.shroomQuestGiven)
            {
                questName.text = "Find XXX's bag";
                questProgress.text = $"{GameManager.shroomCount} || 8";
            }
        } 
    }
}
