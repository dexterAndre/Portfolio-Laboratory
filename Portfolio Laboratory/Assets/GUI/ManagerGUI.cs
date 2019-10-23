using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ManagerGUI : Singleton<ManagerGUI>
{
    [Header("Menu Button")]
    [SerializeField] private float menuAnimDuration = 0.2f;
    private float menuAnimTimer = 0f;
    public float MenuTimerPercent
    {
        get
        {
            if (menuAnimTimer >= 0f)
            {

                Debug.Log((menuAnimTimer) / menuAnimDuration);
                return menuAnimTimer / menuAnimDuration;
            }
            else
            {
                Debug.Log((menuAnimDuration + menuAnimTimer) / menuAnimDuration);
                return (menuAnimDuration + menuAnimTimer) / menuAnimDuration;
            }
        }
    }
    private bool finishingFrame = false;
    [SerializeField] private AnimationCurve animationCurve;

    [Header("Menu Contents")]
    [SerializeField] private RectTransform menuBackgroundObject;
    [SerializeField] private RectTransform menuBackgroundStrokeObject;
    [SerializeField] private GameObject menuContentsObject;
    private Vector2 menuSizeInit = Vector2.zero;
    [SerializeField] private float strokeWidth = 8f;

    #region Settings References
    [Header("Settings Objects")]
    [SerializeField] private Button s_menuButton;
    public Button s_MenuButton { get { return s_menuButton; } }
    [Space(10)]
    [SerializeField] private Dropdown s_categoryDropdown;
    public Dropdown s_CategoryDropdown { get { return s_categoryDropdown; } }
    [Space(10)]
    [SerializeField] private Dropdown s_algorithmDropdown;
    public Dropdown s_AlgorithmDropdown { get { return s_algorithmDropdown; } }
    [Space(10)]
    [SerializeField] private Button s_generatePointsButton;
    public Button s_GeneratePointsButton { get { return s_generatePointsButton; } }
    [SerializeField] private InputField s_generatePointsCountInputField;
    public InputField s_GeneratePointsCountInputField { get { return s_generatePointsCountInputField; } }
    [SerializeField] private Dropdown s_generatePointsDropdown;
    public Dropdown s_GeneratePointsDropdown { get { return s_generatePointsDropdown; } }
    [Space(5)]
    [SerializeField] private Button s_resetPositionsButton;
    public Button s_ResetPositionsButton { get { return s_resetPositionsButton; } }
    [Space(5)]
    [SerializeField] private Button s_clearPointsButton;
    public Button s_ClearPointsButton { get { return s_clearPointsButton; } }
    [Space(5)]
    [SerializeField] private Button s_sortPointsButton;
    public Button s_SortPointsButton { get { return s_sortPointsButton; } }
    [SerializeField] private Dropdown s_sortModeDropdown;
    public Dropdown s_SortModeDropdown { get { return s_sortModeDropdown; } }
    [Space(10)]
    [SerializeField] private Toggle s_animationToggle;
    public Toggle s_AnimationToggle { get { return s_animationToggle; } }
    [SerializeField] private Dropdown s_animationModeDropdown;
    public Dropdown s_AnimationModeDropdown { get { return s_animationModeDropdown; } }
    [Space(10)]
    [SerializeField] private Toggle s_labeledPointsToggle;
    public Toggle s_LabeledPointsToggle { get { return s_labeledPointsToggle; } }
    [SerializeField] private Dropdown s_labeledPointsDropdown;
    public Dropdown s_LabeledPointsDropdown { get { return s_labeledPointsDropdown; } }
    [Space(10)]
    [SerializeField] private Toggle s_displayLinesToggle;
    public Toggle s_DisplayLinesToggle { get { return s_displayLinesToggle; } }
    [SerializeField] private Dropdown s_displayLinesDropdown;
    public Dropdown s_DisplayLinesDropdown { get { return s_displayLinesDropdown; } }
    #endregion

    #region Enumerations
    private enum e_CategoryMode
    {
        PointSetAlgorithms,
        ComputationalGeometry,
        TechnicalArt
    }
    private enum e_AlgorithmMode
    {
        None,
        ConvexHull,
        Triangulation,
        Voronoi,
        AABB,
        kMeansClustering
    }
    private enum e_GenerationMode
    {
        SimpleRandom,
        Lattice,
        CirclePacked,
        BlueNoise
    }
    private enum e_SortMode
    {
        Unsorted,
        TopDown,
        PolarCCW,
        PolarCW,
        Radius
    }
    private enum e_AnimationMode
    {
        None,
        Jitter,
        Flocking,
        Diffuse,
        Raindrops,
        Elastic
    }
    #endregion



    private void Start()
    {
        #region Reference setup
        // Setting up references if not set by default
        //      Panels for mass disabling / enabling
        if (menuBackgroundObject == null)
            menuBackgroundObject = GameObject.Find("Menu Background").GetComponent<RectTransform>();
        if (menuBackgroundStrokeObject == null)
            menuBackgroundStrokeObject = GameObject.Find("Menu Background Outline").GetComponent<RectTransform>();
        if (menuContentsObject == null)
            menuContentsObject = GameObject.Find("Menu Contents");

        //      Settings object references
        if (s_menuButton == null)
            s_menuButton = GameObject.Find("Menu Button").GetComponent<Button>();

        if (s_categoryDropdown == null)
            s_categoryDropdown = GameObject.Find("Category Dropdown").GetComponent<Dropdown>();

        if (s_algorithmDropdown == null)
            s_algorithmDropdown = GameObject.Find("Algorithm Dropown").GetComponent<Dropdown>();

        if (s_generatePointsButton == null)
            s_generatePointsButton = GameObject.Find("Generate Points Button").GetComponent<Button>();
        if (s_generatePointsCountInputField == null)
            s_generatePointsCountInputField = GameObject.Find("Generate Points Count Input Field").GetComponent<InputField>();
        if (s_generatePointsDropdown == null)
            s_generatePointsDropdown = GameObject.Find("Generate Points Dropdown").GetComponent<Dropdown>();

        if (s_resetPositionsButton == null)
            s_resetPositionsButton = GameObject.Find("Reset Positions Button").GetComponent<Button>();

        if (s_clearPointsButton == null)
            s_clearPointsButton = GameObject.Find("Clear Points Button").GetComponent<Button>();

        if (s_sortPointsButton == null)
            s_sortPointsButton = GameObject.Find("Sort Points Button").GetComponent<Button>();
        if (s_sortModeDropdown == null)
            s_sortModeDropdown = GameObject.Find("Sort Mode Dropdown").GetComponent<Dropdown>();

        if (s_animationToggle == null)
            s_animationToggle = GameObject.Find("Animation Toggle").GetComponent<Toggle>();
        if (s_animationModeDropdown == null)
            s_animationModeDropdown = GameObject.Find("Animation Mode Dropdown").GetComponent<Dropdown>();

        if (s_labeledPointsToggle == null)
            s_labeledPointsToggle = GameObject.Find("Labeled Points Toggle").GetComponent<Toggle>();
        if (s_labeledPointsDropdown == null)
            s_labeledPointsDropdown = GameObject.Find("Label Mode Dropdown").GetComponent<Dropdown>();

        if (s_displayLinesToggle == null)
            s_displayLinesToggle = GameObject.Find("Display Lines Toggle").GetComponent<Toggle>();
        if (s_displayLinesDropdown == null)
            s_displayLinesDropdown = GameObject.Find("Display Lines Mode Dropdown").GetComponent<Dropdown>();
        #endregion

        if (menuBackgroundObject != null)
        {
            // Collecting default information
            menuSizeInit = menuBackgroundObject.sizeDelta;

            // Disabling the menu
            menuBackgroundObject.sizeDelta = Vector2.zero;
            menuBackgroundObject.gameObject.SetActive(false);
            menuBackgroundStrokeObject.sizeDelta = Vector2.zero;
            menuBackgroundStrokeObject.gameObject.SetActive(false);
            menuContentsObject.SetActive(false);
        }
    }

    private void Update()
    {
        if (menuAnimTimer != 0f && Mathf.Abs(menuAnimTimer) != menuAnimDuration)
        {
            // If fading in...
            if (menuAnimTimer > 0f)
            {
                menuAnimTimer += Time.deltaTime;

                // Intermediate actions
                menuBackgroundObject.sizeDelta = Vector2.Lerp(
                    Vector2.zero,
                    menuSizeInit,
                    animationCurve.Evaluate(MenuTimerPercent));

                if (menuAnimTimer >= menuAnimDuration)
                {
                    menuAnimTimer = menuAnimDuration;
                    finishingFrame = true;
                }
            }
            // Else fading out...
            else if (menuAnimTimer < 0f)
            {
                menuAnimTimer -= Time.deltaTime;

                // Intermediate actions
                menuBackgroundObject.sizeDelta = Vector2.Lerp(
                    Vector2.zero,
                    menuSizeInit,
                    animationCurve.Evaluate(MenuTimerPercent));

                if (menuAnimTimer <= -menuAnimDuration)
                {
                    menuAnimTimer = -menuAnimDuration;
                    finishingFrame = true;
                }
            }

            // Intermediate actions
            menuBackgroundStrokeObject.sizeDelta = menuBackgroundObject.sizeDelta + new Vector2(strokeWidth, strokeWidth);

            // Finishing actions
            if (finishingFrame == true)
            {
                if (s_menuButton != null)
                {
                    if (menuAnimTimer == menuAnimDuration)
                    {
                        menuBackgroundObject.gameObject.SetActive(true);
                        menuBackgroundStrokeObject.gameObject.SetActive(true);
                        menuContentsObject.SetActive(true);
                    }
                    else if (menuAnimTimer == -menuAnimDuration)
                    {
                        menuBackgroundObject.gameObject.SetActive(false);
                        menuBackgroundStrokeObject.gameObject.SetActive(false);
                        menuContentsObject.SetActive(false);
                    }
                }
                finishingFrame = false;
            }
        }
    }

    public void ToggleMenu()
    {
        // Starting the timer
        if (menuBackgroundObject != null)
        {
            // If menu is closed...
            if (menuBackgroundObject.gameObject.activeSelf == false)
            {
                menuBackgroundObject.gameObject.SetActive(true);
                menuBackgroundStrokeObject.gameObject.SetActive(true);
                menuContentsObject.SetActive(false);
                menuAnimTimer = Time.deltaTime;
            }
            // Else if menu is open...
            else
            {
                menuAnimTimer = -Time.deltaTime;
                menuContentsObject.SetActive(false);
            }
        }
    }

    public void OnAlgorithmDropdown()
    {

    }

    public void OnGeneratePointsButton()
    {
        // Preventing out-of-array index errors
        if ((int)s_GeneratePointsDropdown.value < ManagerPoints.Instance.PointGenerators.Count)
        {
            ManagerPoints.Instance.GeneratePoints();
        }

        ManagerPoints.Instance.SetDisplayLines();
    }

    public void OnGeneratePointsDropdown()
    {

    }

    public void OnResetPositionsButton()
    {

    }

    public void OnClearPointsButton()
    {

    }

    public void OnSortButton()
    {
        ManagerPoints.Instance.SortPoints(s_SortModeDropdown.value);
        ManagerPoints.Instance.SetDisplayLines();
    }

    public void OnSortDropdown()
    {

    }

    public void OnAnimationToggle()
    {
        ManagerPoints.Instance.s_Animation = s_AnimationToggle.isOn;
        ManagerPoints.Instance.s_AnimationType = s_AlgorithmDropdown.value;
        ManagerPoints.Instance.SetDisplayLines();
    }

    public void OnAnimationDropdown()
    {

    }

    public void OnPointsLabelToggle()
    {
        ManagerPoints.Instance.SetPointLabels();
    }

    public void OnPointsLabelDropdown()
    {

    }

    public void OnDisplayLinesToggle()
    {
        if (s_DisplayLinesToggle.isOn == true)
        {
            ManagerPoints.Instance.SetDisplayLines();
        }
        else
            ManagerPoints.Instance.ResetDisplayLines();
    }

    public void OnDisplayLinesDropdown()
    {

    }
}
