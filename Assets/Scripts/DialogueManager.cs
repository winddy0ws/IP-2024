/*
 * Author: Yau Wai Lam and Livinia Poo
 * Date: 09/08/24
 * Description: 
 * Managing the display of text-dialogue based on situations and following actions
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEditor.PackageManager;
using UnityEngine.SceneManagement;

public class DialogueManager : MonoBehaviour
{
    /// <summary>
    /// References and Calls
    /// </summary>
    public TextMeshProUGUI displaytext;
    [SerializeField]
    Transform playerCamera;

    [SerializeField]
    float seeDistance;
    Interactable curretInteractable;
    public RaycastHit hitInfo;

    public TextMeshProUGUI nameText;
    public TextMeshProUGUI dialogueText;

    public GameObject roamingQuest;
    public GameObject Mayor;
    public GameObject woodQuest;
    public Animator animator;

    QuestManager quest;
    QuestUI questText;
    RoamingAI npcControl;

    /// <summary>
    /// Setting up dialogue
    /// </summary>
    private Queue<string> sentences;

    // Start is called before the first frame update
    void Awake()
    {
        sentences = new Queue<string>();
        quest = FindObjectOfType<QuestManager>();
        /*questText = FindObjectOfType<QuestUI>();*/
    }
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

    /// <summary>
    /// Function starts the dialogue animation, and which dialogue
    /// </summary>
    /// <param name="dialogue"></param>
    public void StartDialogue (Dialogue dialogue)
    {
        Debug.Log ("Starting converstation with" + dialogue.name);

        animator.SetBool("IsOpen", true);

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;

        nameText.text = dialogue.name;

        sentences.Clear ();
        Debug.Log("clear");


        if (QuestManager.bagQuestGiven == false && QuestManager.questGiver == "bagQuest")
        {
            Debug.Log("help");

            foreach (string sentence in dialogue.sentences)
            {
                sentences.Enqueue(sentence);
            }
        }
        else if (QuestManager.bagQuestGiven == true && GameManager.bagCollected == true && QuestManager.questGiver == "bagQuest")
        {
            Debug.Log("help2.0");
            foreach (string sentence in dialogue.sentences2)
            {
                sentences.Enqueue(sentence);
            }
        }


        if (!QuestManager.mayorQuestGiven && QuestManager.questGiver == "mayorQuest")
        {
            Debug.Log("help3.0");
            foreach (string sentence in dialogue.sentences)
            {
                sentences.Enqueue(sentence);
            }
        }

        if (QuestManager.woodQuestGiven == false && QuestManager.questGiver == "woodQuest")
        {
            Debug.Log("help4.0");
            foreach (string sentence in dialogue.sentences)
            {
                sentences.Enqueue(sentence);
            }
        }
        else if (QuestManager.woodQuestGiven == true && QuestManager.questGiver == "woodQuest" && GameManager.woodCollected == true )
        {
            Debug.Log("help5.0");
            foreach (string sentence in dialogue.sentences2)
            {
                sentences.Enqueue(sentence);
            }
        }

        if (QuestManager.shroomQuestGiven == false && QuestManager.questGiver == "shroomQuest")
        {
            Debug.Log("help6.0");
            foreach (string sentence in dialogue.sentences)
            {
                sentences.Enqueue(sentence);
            }
        }

        else if (QuestManager.shroomQuestGiven == true && QuestManager.questGiver == "shroomQuest" && GameManager.shroomCollected == true)
        {
            Debug.Log("help7.0");
            foreach (string sentence in dialogue.sentences2)
            {
                sentences.Enqueue(sentence);
            }


        }

        DisplayNextSentence();

    }

    /// <summary>
    /// String appearance
    /// </summary>
    public void DisplayNextSentence()
    {
        if (sentences.Count == 0 )
        {
            EndDialogue();
            quest.StartQuest();
            return;
        }

        string sentence = sentences.Dequeue ();
        StopAllCoroutines();
        StartCoroutine(TypeSentence(sentence));

        IEnumerator TypeSentence (string sentence)
        {
            dialogueText.text = "";
            foreach (char letter in sentence.ToCharArray ())
            {
                dialogueText.text += letter;
                yield return null;
            }
        }
    }

    /// <summary>
    /// Ends dialogue
    /// </summary>
    void EndDialogue()
    {
        animator.SetBool("IsOpen", false);
        Debug.Log("End of conversation");

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = false;

        if (QuestManager.questGiver == "bagQuest" && GameManager.bagCollected)
        {
            quest.CompleteBagQuest();

            if (npcControl != null)
            {
                npcControl.currentState = "Roaming";
            }

            if (questText != null)
            {
                questText.Update();
            }
        }
        else if (QuestManager.questGiver == "mayorQuest")
        {
            quest.CompleteWakeupQuest();
        }
    }
}
