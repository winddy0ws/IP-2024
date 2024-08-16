/*
 * Author: Yau Wai Lam
 * Date: 06/08/24
 * Description: 
 * Game Manager script
 */

using System.Collections;
using System.Collections.Generic;
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

    public static bool bagCollected = false;
    public static bool woodCollected = false;
    public static bool shroomCollected = false;

    public static int woodCount = 0;
    public static int mushroomCount = 0;
    public static int bagCount = 0;
    public static int shroomCount = 0;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);  
        }
        else if (Instance != this)
        {
            Destroy(gameObject);
        }
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
}
