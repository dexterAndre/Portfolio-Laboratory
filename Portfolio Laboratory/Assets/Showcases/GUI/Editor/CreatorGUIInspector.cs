using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

/// <summary>
/// A custom editor for creating the in-game menu. 
/// Real-time scalability, adding, removing, and editing GUI components. 
/// </summary>
[CustomEditor(typeof(CreatorGUI))]
public class CreatorGUIInspector : Editor
{
    public override void OnInspectorGUI()
    {
        //base.OnInspectorGUI();

        CreatorGUI script = (CreatorGUI)target;


    }
}
