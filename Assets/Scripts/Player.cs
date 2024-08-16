/*
 * Author: Yau Wai Lam and Livinia Poo
 * Date: 02/08/24
 * Description: 
 * Managing Player's aspects of game
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.ProBuilder.Shapes;
using UnityEngine.ProBuilder.MeshOperations;
using UnityEngine.SceneManagement;


public class Player : MonoBehaviour
{
    public TextMeshProUGUI displaytext;
    [SerializeField]
    Transform playerCamera;

    [SerializeField]
    float seeDistance;
    Interactable curretInteractable;
    public RaycastHit hitInfo;

    public bool hasQuest = false;
    OpenDoor door;

    private void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

    void Update()
    {
        bool hitSomething = Physics.Raycast(
            playerCamera.position,
            playerCamera.TransformDirection(Vector3.forward),
            out hitInfo,
            seeDistance
        );
        Debug.DrawRay(
            playerCamera.position,
            playerCamera.TransformDirection(Vector3.forward) * seeDistance,
            Color.green
        );

        if (hitSomething)
        {
            Debug.Log(hitInfo.transform.name);
            if (hitInfo.transform.TryGetComponent<Interactable>(out curretInteractable)) 
            { 
            }
            else
            {
                curretInteractable = null;
                displaytext.text = "";
            }

            if (hitInfo.transform.name == "Penguin")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "bagQuest";
            }
            else if (hitInfo.transform.name == "mole_attack")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "mayorQuest";
            }
            else if (hitInfo.transform.name == "sheep")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "woodQuest";
            }
            else if (hitInfo.transform.name == "Cat")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "shroomQuest";
            }
            else if (hitInfo.transform.name == "mushroom" || hitInfo.transform.name == "wood" || hitInfo.transform.name == "Bag")
            {
                displaytext.text = "Press [E] to collect";
            }
            else if (hitInfo.transform.name == "Door hinge")
            {
                displaytext.text = "Press [E] to open/close";
            }
            else
            {
                displaytext.text = "";
            }
        }
        else
        { 
            curretInteractable = null;
            displaytext.text = "";

            if (displaytext == null && SceneManager.GetActiveScene().name == "Game")
            {
                displaytext = GameObject.Find("Text").GetComponent<TextMeshProUGUI>();
            }
        }
    }

    
    /// <summary>
    /// Null check for players
    /// </summary>
    void OnPress()
    {
        if (curretInteractable != null)
        {
            curretInteractable.OnPress();
        }

    }

    public void SetHasQuest(bool value)
    {
        hasQuest = value;
    }
}

