using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DailogueManager : MonoBehaviour

{
    public TextMeshProUGUI nameText;
    public TextMeshProUGUI dialogueText;

    public Animator animator;

    private Queue<string> sentences;

    // Start is called before the first frame update
    void Awake()
    {
        sentences = new Queue<string>();
        
    }

    public void StartDailogue (Dailogue dailogue)
    {
        Debug.Log ("Starting converstation with" + dailogue.name);

        animator.SetBool("IsOpen", true);

        nameText.text = dailogue.name;

        sentences.Clear ();
        Debug.Log("clear");

       

        if (GameManager.Instance.BagCollected == false)
        {

            foreach (string sentence in dailogue.sentences)
            {
                sentences.Enqueue(sentence);
            }
        }

        else
        {
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
