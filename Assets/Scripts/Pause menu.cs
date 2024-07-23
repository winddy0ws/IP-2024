using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Pausemenu : MonoBehaviour
{
    public int Scene;

    public static bool Paused = false;
    public GameObject PauseMenuCanvas;
    // Start is called before the first frame update
    void Start()
    {
        Time.timeScale = 1f;
        Cursor.visible = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (Paused)
            {
                Play();
                if (Input.GetKey(KeyCode.Space))
                    Cursor.lockState = CursorLockMode.None;
            }
            else
            {
                Stop();
            }
        }
    }
    void Stop()
    {
        PauseMenuCanvas.SetActive(true);
        Time.timeScale = 0f;
        Paused = true;
    }
    public void Play()
    {
        PauseMenuCanvas.SetActive(false);
        Time.timeScale = 1f;
        Paused = false;
       

    }

   
    public void Mainmenu()
    {
       SceneManager.LoadScene(Scene);
    }

    public void Quitgame()
    {
        Application.Quit();
    }
}
