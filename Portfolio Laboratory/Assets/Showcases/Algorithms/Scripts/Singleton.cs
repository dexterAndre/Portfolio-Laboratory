using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Singleton architecture: http://www.unitygeek.com/unity_c_singleton/
public class Singleton<T> : MonoBehaviour where T : Component
{
    private static T instance = null;
    public static T Instance
    {
        get
        {
            // If instance is not initialized
            if (instance == null)
            {
                // Find instance in scene
                instance = FindObjectOfType<T>();
                // If still cannot find instance
                if (instance == null)
                {
                    // If cannot find the "Manager" GameObject
                    GameObject manager = GameObject.Find("Manager");
                    if (manager == null)
                    {
                        // Create new GameObject with singleton of type T attached to it
                        GameObject go = new GameObject();
                        go.name = "Manager (" + typeof(T).Name + ")";
                        instance = go.AddComponent<T>();
                        DontDestroyOnLoad(go);
                    }
                    else
                    {
                        manager.AddComponent<T>();
                        DontDestroyOnLoad(manager);
                    }
                }
            }
            return instance;
        }
    }

    public virtual void Awake()
    {
        if (instance == null)
        {
            instance = this as T;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }
}
