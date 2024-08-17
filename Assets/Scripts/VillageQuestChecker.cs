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
public class VillageQuestChecker : MonoBehaviour
{

    /// <summary>
    /// Hide or show objects based on quest status
    /// </summary>
    private void OnEnable()
    {
        //var questMgr = GameManager.Instance.player.GetComponentInChildren<QuestManager>();

        Debug.Log($"VillageQuestChecker: bagQuestGiven is {QuestManager.bagQuestGiven}");
        GameManager.Instance.SetParentTagActivation("Bag", QuestManager.bagQuestGiven);
    }
}
