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

    public float playerHealth = 100;

    public GameObject HealthBar;

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
        else if (Instance != this && Instance != null)
        {
            Destroy(gameObject);
        }
    }

    // Update is called once per frame
    void Update()
        {
            if (HealthBar == null && SceneManager.GetActiveScene().name == "Wai lams space")
            {
                HealthBar = GameObject.Find("HealthBar");
            }
            if (SceneManager.GetActiveScene().name == "Wai Lams space")
            {
                HealthBar.GetComponent<Image>().fillAmount = playerHealth / 100f;
            }
        }

    /*void Die()
    {
        if playerHealth >= 0
    }*/
   }
