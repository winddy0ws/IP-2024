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
        Debug.Log($"ForestQuestChecker: shroomQuestGiven is {QuestManager.shroomQuestGiven}");
        GameManager.Instance.SetParentTagActivation("Mushroom", QuestManager.shroomQuestGiven);

        Debug.Log($"ForestQuestChecker: woodQuestGiven is {QuestManager.woodQuestGiven}");
        GameManager.Instance.SetParentTagActivation("Wood", QuestManager.woodQuestGiven);
    }
}
