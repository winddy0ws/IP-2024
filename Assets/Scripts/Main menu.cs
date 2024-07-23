using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Mainmenu : MonoBehaviour
{
    public int Scene;
    public void PlayGame()
    {
        SceneManager.LoadScene(Scene);
    }

    public void QuitGame()
    {
        Application.Quit();
    }
       
}
