using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemydamagedealer : MonoBehaviour
{
    /// <summary>
    /// For determining the state of the weapon's damage ability
    /// </summary>
    bool canDealDamage;
    bool hasDealtDamage;

    /// <summary>
    /// Variables to determine weapon's statistics
    /// </summary>
    [SerializeField]
    float weaponLength;
    [SerializeField]
    float weaponDamage;

    // Start is called before the first frame update
    void Start()
    {
        canDealDamage = false;
        hasDealtDamage = false;
    }

    // Update is called once per frame
    void Update()
    {
        {
            if (canDealDamage && !hasDealtDamage)
            {
                RaycastHit hit;

                int layerMask = 1 << 8;
                if (Physics.Raycast(transform.position, -transform.up, out hit, weaponLength, layerMask))
                {
                    if (hit.transform.TryGetComponent(out GameManager playerHealth))
                    {
                        playerHealth.TakeDamage(weaponDamage);
                        hasDealtDamage = true;
                    }
                }
            }
        }
    }

    /// <summary>
    /// Declares that damage is being dealt
    /// </summary>
    public void StartDealDamage()
    {
        canDealDamage = true;
        hasDealtDamage = false;
        Debug.Log("Damage taken");
    }

    /// <summary>
    /// Declares that damage is no longer being dealt
    /// </summary>
    public void EndDealDamage()
    {
        canDealDamage = false;
    }

    /// <summary>
    /// Highlights where the damage is being detected
    /// </summary>
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawLine(transform.position, transform.position - transform.up * weaponLength);
    }
}
