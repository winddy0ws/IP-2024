/*
 * Author: Yau Wai Lam
 * Date: 15/08/24
 * Description: 
 * Enabling Death UI
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Death : MonoBehaviour
{
    /// <summary>
    /// References
    /// </summary>
    public int Scene;
    public GameObject DeathCanvas;
    private GameManager gameManager;

    public bool deathEnabled;

    // Start is called before the first frame update
    void Start()
    {
        gameManager = FindObjectOfType<GameManager>();
        DeathCanvas.SetActive(false);
        Time.timeScale = 1f;

        deathEnabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (GameManager.Instance.playerHealth <= 0)
        {
         
            DeathCanvas.SetActive(true);
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
            Time.timeScale = 0f;

            deathEnabled=true;
        }
    }

    /// <summary>
    /// Restart button for player to try again
    /// </summary>
    public void Restart()
    {
        GameManager.Instance.playerHealth = 100;

        if (GameManager.shroomCount != 0)
        {
            GameManager.shroomCount = 0;
        }
        else if (GameManager.woodCount != 0)
        {
            GameManager.woodCount = 0;
        }
        DeathCanvas.SetActive(false);
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = false;
        Time.timeScale = 1f;

        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
