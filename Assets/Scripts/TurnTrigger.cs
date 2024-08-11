using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnTrigger : MonoBehaviour
{
    public Transform player;
    private void OnTriggerEnter(collider other)
    {
        //Checking if player has entered the range
        if (other.transform == player)
        {
            //Calling the function to rotate the NPC to face player
            TurnToFacePlayer();
        }
    }

    public void TurnToFacePlayer()
    {
        //Rotating them to face player
        Vector3 direction = player.position - transform.position;
        direction.y = 0; //npc please dont rotate sideways
        Quaternion rotation = Quaternion.LookRotation(direction);
        transform.rotation = rotation;
    }

}
