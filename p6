using UnityEngine;

public class Obstacle : MonoBehaviour
{
    // This method is called when another Collider enters the trigger zone
    private void OnTriggerEnter(Collider other)
    {
        // Check if the entering object is the player
        if (other.CompareTag("Player"))
        {
            // Assuming the power GameObject is a child of the obstacle, you can disable or collect it
            Transform powerObject = transform.Find("PowerObject");

            if (powerObject != null)
            {
                // Disable or collect the power GameObject
                powerObject.gameObject.SetActive(false);
                // Alternatively, you might want to implement a method to handle power collection
                // e.g., player.CollectPower(powerObject);
            }
        }
    }
}
