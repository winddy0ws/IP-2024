/*
 * Author: Yau Wai Lam
 * Date: 09/08/24
 * Description: 
 * Managing the display of text-dialogue
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Dialogue
{
    /// <summary>
    /// Allows to put characters' names
    /// </summary>
    public string name;

    /// <summary>
    /// First dialogue set
    /// </summary>
    [TextArea(3,10)]
    public string[] sentences;

    /// <summary>
    /// Second dialogue set if interacted with again
    /// </summary>
    [TextArea(3, 10)]
    public string[] sentences2;
}

