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

public class GameManager : MonoBehaviour
{
    /// <summary>
    /// Sets to the current scene
    /// </summary>
    public static GameManager Instance;

    public float playerHealth = 100;

    public GameObject healthBar;

    public bool BagCollected = false;

    public bool WoodCollected = false;

    public bool MushroomCollected = false;

    public bool woodCollected = false;

    public int woodCount = 0;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else if (Instance != this && Instance != null)
        {
            Destroy(gameObject);
        }
    }

    /// <summary>
    /// Tracking Wood Quest
    /// </summary>
    /// <param name="woodscore"></param>
    public void IncreaseScore(int woodscore)
    {
        woodCount += woodscore;
    }
    // Update is called once per frame
    void Update()
        {
            if (healthBar == null && SceneManager.GetActiveScene().name == "forest")
            {
                healthBar = GameObject.Find("healthBar");
            }
        }
   }
