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
   /* public Pausemenu pausemenu;*/

    void Update()
    {
        bool Raycast = Physics.Raycast(
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
        if (Raycast)
        {
            Debug.Log(hitInfo.transform.name);
            if (hitInfo.transform.TryGetComponent<Interactable>(out curretInteractable)) { }
            else
            {
                curretInteractable = null;

            }

            if (hitInfo.transform.name == "Penguin")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "bagQuest";
            }

            else if (hitInfo.transform.name == "Mayor")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "mayorQuest";
            }

            else if (hitInfo.transform.name == "Wood")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "woodQuest";
            }

            else if (hitInfo.transform.name == "Mushroom")
            {
                displaytext.text = "Press [E] to interact";
                QuestManager.questGiver = "shroomQuest";
            }

            else
            {
                displaytext.text = "";
            }
        }
        else
        { 
            curretInteractable = null;


            if (displaytext == null && SceneManager.GetActiveScene().name == "Game")
            {
                displaytext = GameObject.Find("Text").GetComponent<TextMeshProUGUI>();
            }
        }
       /* if (Input.GetKeyDown(KeyCode.Escape))
        {
            OnEscape();
        }*/
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

  /*  void OnEscape()
    {
        Debug.Log("PAUSE WORKS");
        if (Pausemenu.Paused)
        {
            pausemenu.Stop();
        }
        else
        {
            pausemenu.Play();
        }
    }*/

    public void SetHasQuest(bool value)
    {
        hasQuest = value;
    }
}

