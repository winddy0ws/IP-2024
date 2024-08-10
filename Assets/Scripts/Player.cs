/*
 * Author: Yau Wai Lam
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

            if (hitInfo.transform.name == "Roaming Quest")
            {
                displaytext.text = "Press [E] to interact";
            }

            else if (hitInfo.transform.name == "Mayor")
            {
                displaytext.text = "Press [E] to interact";
            }

            else if (hitInfo.transform.name == "Wood")
            {
                displaytext.text = "Press [E] to interact";
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
    }

   /* public void IncreaseScore(int score)
    {
        GameManager.Instance.currentScore += score;
        Debug.Log(score);
    }*/
    
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
}

