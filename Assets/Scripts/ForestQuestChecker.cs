/*
 * Author: Yau Wai Lam
 * Date: 17/08/24
 * Description: 
 * Hide or show objects based on quest status
 */

using UnityEngine;

/// <summary>
/// Hide or show objects based on quest status
/// </summary>
public class ForestQuestChecker : MonoBehaviour
{
    /// <summary>
    /// Hide or show objects based on quest status
    /// </summary>
    private void OnEnable()
    {
        Debug.Log($"ForestQuestChecker: shroomQuestGiven={QuestManager.shroomQuestGiven}, shroomQuestCompleted={QuestManager.shroomQuestCompleted}");
        GameManager.Instance.SetParentTagActivation("Mushroom", (QuestManager.shroomQuestGiven && !QuestManager.shroomQuestCompleted));

        Debug.Log($"ForestQuestChecker: woodQuestGiven is {QuestManager.woodQuestGiven}, woodQuestCompleted={QuestManager.woodQuestCompleted}");
        GameManager.Instance.SetParentTagActivation("Wood", (QuestManager.woodQuestGiven && !QuestManager.woodQuestCompleted));
    }
}
