using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager Instance;

    public static float playerHealth = 100;

    public GameObject healthBar;

    public bool BagCollected = false;




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
            if (healthBar == null && SceneManager.GetActiveScene().name == "forest")
            {
                healthBar = GameObject.Find("healthBar");
            }
        }

        public void TakeDamage(float damageAmt)
         { 
    
            playerHealth -= damageAmt;
            Debug.Log("damage taken");
        }



   }
