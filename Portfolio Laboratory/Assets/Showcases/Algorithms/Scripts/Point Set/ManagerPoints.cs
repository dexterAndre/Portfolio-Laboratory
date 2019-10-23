using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ManagerPoints : Singleton<ManagerPoints>
{
    public enum Visuals
    {
        Point,
        Arrow
    };
    [Header("Presentation")]
    [SerializeField] private GameObject pointPrefab;
    [SerializeField] private GameObject pointParentPrefab;
    [SerializeField] private Visuals visualType = Visuals.Point;
    [SerializeField] private Sprite visualPoint;
    [SerializeField] private Sprite visualArrow;
    [SerializeField] private List<Vector2> initPositions = new List<Vector2>();
    [SerializeField] private LineRenderer lineRenderer;

    [Header("Algorithms")]
    [SerializeField] private List<PointModifier> pointGeometry = new List<PointModifier>();
    public List<PointModifier> PointGeometry { get { return pointGeometry; } }
    [SerializeField] private List<PointGenerator> pointGenerators = new List<PointGenerator>();
    public List<PointGenerator> PointGenerators { get { return pointGenerators; } }
    [SerializeField] private List<PointModifier> pointAnimators = new List<PointModifier>();
    public List<PointModifier> PointAnimators { get { return pointAnimators; } }
    [SerializeField] private List<PointModifier> pointSorters = new List<PointModifier>();
    public List<PointModifier> PointSorters { get { return pointSorters; } }

    [Header("Boundaries")]
    public Vector2 pointBoundaries;

    [Header("References")]
    [SerializeField] private Transform pointParent;
    [SerializeField] private List<Vector2> points;

    [Header("Settings")]
    [SerializeField] private bool s_animation = false;
    public bool s_Animation { get { return s_animation; } set { s_animation = value; } }
    [SerializeField] private int s_animationType = -1;
    public int s_AnimationType { get { return s_animationType; } set { s_animationType = value; } }

    private int copies = 0;



    public override void Awake()
    {
        base.Awake();

        lineRenderer = GetComponent<LineRenderer>();
        lineRenderer.enabled = false;
    }

    private void Update()
    {
        if (s_Animation == true)
        {
            if (s_AnimationType < PointAnimators.Count)
            {
                PointAnimators[s_AnimationType].ModifyPoints(ref points);
                SetPoints(points);
            }
            else
            {

            }
        }
    }

    public void SetPointLabels()
    {
        // If points are labeled, set label
        if (ManagerGUI.Instance.s_LabeledPointsToggle.isOn == true && pointParent.childCount > 0)
        {
            switch (ManagerGUI.Instance.s_LabeledPointsDropdown.value)
            {
                // None
                case 0:
                {
                    break;
                }
                // Numbered
                case 1:
                {
                    // Just checking if the points are using text components. 
                    // If not, abort. 
                    if (pointParent.GetChild(0).GetChild(0).GetChild(0).GetComponent<Text>())
                    {
                        for (int i = 0; i < pointParent.childCount; i++)
                        {
                            pointParent.GetChild(i).GetChild(0).GetChild(0).GetComponent<Text>().text = i.ToString();
                        }
                    }
                    break;
                }
                // Colored
                case 2:
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
        }
    }

    public void SetVisuals(Visuals type)
    {
        // Selecting sprite
        Sprite newSprite;
        switch (visualType)
        {
            case Visuals.Point:
            {
                newSprite = visualPoint;
                break;
            }
            case Visuals.Arrow:
            {
                newSprite = visualArrow;
                break;
            }
            default:
            {
                newSprite = visualPoint;
                break;
            }
        }

        // Applying new sprites
        foreach (GameObject child in pointParent)
        {
            child.transform.GetChild(0).GetComponent<SpriteRenderer>().sprite = newSprite;
        }
    }

    #region User interface
    public void GeneratePoints()
    {
        List<Vector2> _points = new List<Vector2>();
        int n = -1;
        if (int.TryParse(ManagerGUI.Instance.s_GeneratePointsCountInputField.text, out n) == true)
        {
            if (n >= 0)
            {
                ClearPoints();
                _points = PointGenerators[ManagerGUI.Instance.s_GeneratePointsDropdown.value].GeneratePoints(n);
                initPositions = _points;
                ApplyNewPoints(_points);
                SetPointLabels();
            }
            else
            {
                Debug.LogWarning("Error: GeneratePoints() -> s_GeneratePointsCountInputField.text <= 0.");
            }
        }
        else
        {
            Debug.LogWarning("Error: GeneratePoints() -> s_GeneratePointsCountInputField.text cannot be parsed to type int.");
        }
    }

    private void UpdatePointsList()
    {
        // If already same size...
        if (points.Count == pointParent.childCount)
        {
            for (int i = 0; i < pointParent.childCount; i++)
            {
                points[i] = (Vector2)pointParent.GetChild(i).transform.position;
            }
        }
        // Else if not same as new size...
        else
        {
            points.Clear();

            for (int i = 0; i < pointParent.childCount; i++)
            {
                points.Add((Vector2)pointParent.transform.GetChild(i).transform.position);
            }
        }
    }

    private void DestroyPointParentChildren()
    {
        // Sets old point parent to a temp variable
        Transform oldPP = pointParent;

        // Destroys old point parent
        Destroy(oldPP.gameObject);

        // Creates new pointParent
        GameObject newPP = Instantiate(pointParentPrefab, GameObject.Find("Scene Contents").transform);
        newPP.name = "Point Parent";
        pointParent = newPP.transform;

    }

    public void ResetPoints()
    {
        SetPoints(initPositions);
        UpdatePointsList();
    }

    public void ClearPoints()
    {
        DestroyPointParentChildren();
        initPositions.Clear();
        points.Clear();
        UpdatePointsList();
    }

    public void ApplyNewPoints(List<Vector2> newPoints)
    {
        // Generating new children
        for (int i = 0; i < newPoints.Count; i++)
        {
            GameObject obj = Instantiate(pointPrefab, newPoints[i], Quaternion.identity, pointParent);
            obj.name = "P" + i.ToString();
        }

        // Updating points list
        UpdatePointsList();
    }

    public void SetPoints(List<Vector2> _points)
    {
        if (_points.Count != pointParent.childCount)
        {
            Debug.LogWarning("Error: SetPoints() -> argument \"points\" size does not match pointParent's childCount.");
            return;
        }

        for (int i = 0; i < pointParent.childCount; i++)
        {
            // Would cast to Vector3, but compiler says it's redundant. 
            pointParent.GetChild(i).position = _points[i];
        }

        // If points are labeled...
        SetPointLabels();

        // Updating points list
        UpdatePointsList();
    }

    public void SortPoints(int mode)
    {
        PointSorters[mode].ModifyPoints(ref points);
        SetPoints(points);
    }

    public void SetDisplayLines()
    {
        if (lineRenderer.enabled == false)
            lineRenderer.enabled = true;
            
        lineRenderer.positionCount = points.Count + 1;
        for (int i = 0; i < lineRenderer.positionCount - 1; i++)
        {
            lineRenderer.SetPosition(i, points[i]);
        }
        lineRenderer.SetPosition(lineRenderer.positionCount - 1, points[0]);

        lineRenderer.startColor = Color.white;
        lineRenderer.endColor = Color.white;
    }

    public void ResetDisplayLines()
    {
        lineRenderer.positionCount = 0;
    }
    #endregion

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.white;
        Gizmos.DrawLine(
            new Vector2(
                pointBoundaries.x, 
                pointBoundaries.y), 
            new Vector2(
                -pointBoundaries.x,
                pointBoundaries.y));
        Gizmos.DrawLine(
            new Vector2(
                -pointBoundaries.x,
                pointBoundaries.y),
            new Vector2(
                -pointBoundaries.x,
                -pointBoundaries.y));
        Gizmos.DrawLine(
            new Vector2(
                -pointBoundaries.x,
                -pointBoundaries.y),
            new Vector2(
                pointBoundaries.x,
                -pointBoundaries.y));
        Gizmos.DrawLine(
            new Vector2(
                pointBoundaries.x,
                -pointBoundaries.y),
            new Vector2(
                pointBoundaries.x,
                pointBoundaries.y));
    }
}
