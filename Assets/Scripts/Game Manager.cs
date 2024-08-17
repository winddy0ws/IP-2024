/*
 * Author: Yau Wai Lam
 * Date: 06/08/24
 * Description: 
 * Game Manager script
 */

using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    /// <summary>
    /// Sets to the current scene
    /// </summary>
    public static GameManager Instance;
    public string lastExitPoint;

    public float playerHealth = 100f;
    public GameObject HealthBar;
    public GameObject HealthBarObj;
    public GameObject Die;
    public GameObject player;

    public TextMeshProUGUI questName;
    public TextMeshProUGUI questDefault;
    public TextMeshProUGUI questProgress;

    public static bool bagCollected = false;
    public static bool woodCollected = false;
    public static bool shroomCollected = false;

    public static int woodCount = 0;
    public static int mushroomCount = 0;
    public static int bagCount = 0;
    public static int shroomCount = 0;

    private void Awake()
    {
        // check if instance hasn't been set yet
        if (Instance == null)
        {
            // set this instance as the singleton instance
            Instance = this;
            // don't destroy this instance on a scene load
            DontDestroyOnLoad(gameObject);

            Debug.Log("GameManager: Awake as singleton instance");
        }
        // check if instance is already set and it's not this instance
        else if (Instance != null && Instance != this)
        {
            Debug.Log("GameManager: Awake as non-singleton instance, destroying self");

            // destroy the new instance if it's not the singleton instance
            Destroy(gameObject);
        }

        questName = GameObject.FindGameObjectWithTag("QuestTitle").GetComponentInChildren<TextMeshProUGUI>();
        if (questName == null) throw new System.NullReferenceException($"GameManager: could not get the quest title textmeshpro");

        questDefault = GameObject.FindGameObjectWithTag("QuestDefault").GetComponentInChildren<TextMeshProUGUI>();
        if (questDefault == null) throw new System.NullReferenceException($"GameManager: could not get the quest default textmeshpro");
        
        questProgress = GameObject.FindGameObjectWithTag("QuestProgress").GetComponentInChildren<TextMeshProUGUI>();
        if (questProgress == null) throw new System.NullReferenceException($"GameManager: could not get the quest progress textmeshpro");
    }

    private void Start()
    {
        UpdateHealthBarVisibility(SceneManager.GetActiveScene());

        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    // Update is called once per frame
    void Update()
    { 
        Debug.Log("weeee");
        HealthBar.GetComponent<Image>().fillAmount = playerHealth / 100;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        UpdateHealthBarVisibility(scene);
    }

    private void UpdateHealthBarVisibility(Scene scene)
    {
        if (scene.buildIndex == 2)
        {
            HealthBarObj.SetActive(true);
        }
        else
        {
            HealthBarObj.SetActive(false);
        }
    }

    private void OnDestroy()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    
    public void SetParentTagActivation(string tag, bool activated)
    {
        Debug.Log($"SetParentTagActivation: Trying to set children of {tag} tag to {activated}");

        //NOTE: IF THIS ERRORS ADD CURLY BRACKETS THINGS
        //FIND ALL MUSHROOM PARENT OBJECTS
        foreach (var parent in GameObject.FindGameObjectsWithTag(tag)) 
        {
            Debug.Log($"SetParentTagActivation: Setting children of object {parent}");
            //GET ALL CHILDREN OF THE PARENT    
            foreach (Transform child in parent.transform)
            {
                Debug.Log($"SetParentTagActivation: Setting child {child} to {activated}");
                //SET ACTIVATION
                child.gameObject.SetActive(activated);
            }
        }
    }

    // public void RestartToMainMenu()
    // {
    //     Debug.Log("restarting to main menu, killing self");
    //     AudioManager audioManager = FindObjectOfType<AudioManager>();
    //     SceneManager.LoadScene(0);
    //     Destroy(audioManager);
    //     Destroy(gameObject);
    //     Debug.LogError("you should NOT be able to see this");
    // }
}
