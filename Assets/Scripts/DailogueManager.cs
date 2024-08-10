using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEditor.PackageManager;
using UnityEngine.SceneManagement;


public class DailogueManager : MonoBehaviour

{
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

    private Queue<string> sentences;

    // Start is called before the first frame update
    void Awake()
    {
        sentences = new Queue<string>();
        GameObject.Find("Roaming Quest");

        
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
    public void StartDailogue (Dailogue dailogue)
    {
        Debug.Log ("Starting converstation with" + dailogue.name);

        animator.SetBool("IsOpen", true);

        nameText.text = dailogue.name;

        sentences.Clear ();
        Debug.Log("clear");

       

        if (GameManager.Instance.BagCollected == false && hitInfo.transform.name == "Roaming Quest")
        {
            Debug.Log("help");

            foreach (string sentence in dailogue.sentences)
            {
                sentences.Enqueue(sentence);
            }
        }

        else if (GameManager.Instance.BagCollected == true && hitInfo.transform.name == "Roaming Quest" )
        {
            Debug.Log("help2.0");
            foreach (string sentence in dailogue.sentences2)
            {
                sentences.Enqueue(sentence);
            }


        }


        else if (hitInfo.transform.name == "Mayor")
        {
            Debug.Log("help3.0");
            foreach (string sentence in dailogue.sentences)
            {
                sentences.Enqueue(sentence);
            }


        }

        else if (hitInfo.transform.name == "Wood" && GameManager.Instance.woodCollected == false )
        {
            Debug.Log("help4.0");
            foreach (string sentence in dailogue.sentences)
            {
                sentences.Enqueue(sentence);
            }


        }

        else if (hitInfo.transform.name == "Wood" && GameManager.Instance.woodCount >= 5 )
        {
            Debug.Log("help5.0");
            foreach (string sentence in dailogue.sentences2)
            {
                sentences.Enqueue(sentence);
            }


        }

        DisplayNextSentence();

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        /*foreach (string sentence in dailogue.sentences)
        {
            sentences.Enqueue(sentence);
        }

        DisplayNextSentence();

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;*/
    }

    public void DisplayNextSentence()
    {
        if (sentences.Count == 0 )
        {
            EndDialogue();
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

    void EndDialogue()
    {
        animator.SetBool("IsOpen", false);
        Debug.Log("End of conversation");

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = false;
    }
}
