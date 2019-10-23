using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class PointAlgorithm : ScriptableObject
{
    
}

#region Generation
public abstract class PointGenerator : PointAlgorithm
{
    public abstract List<Vector2> GeneratePoints(int n);
}

[CreateAssetMenu(menuName = "Point Set/Generation/Random Simple")]
public class PointGeneratorRandomSimple : PointGenerator
{
    public override List<Vector2> GeneratePoints(int n)
    {
        // Points manager reference
        ManagerPoints manager = ManagerPoints.Instance;

        List<Vector2> points = new List<Vector2>();
        for (int i = 0; i < n; i++)
        {
            points.Add(
                new Vector2(
                    Random.Range(
                        -manager.pointBoundaries.x,
                        manager.pointBoundaries.x),
                    Random.Range(
                        -manager.pointBoundaries.y,
                        manager.pointBoundaries.y)));
        }

        return points;
    }
}

[CreateAssetMenu(menuName = "Point Set/Generation/Lattice")]
public class PointGeneratorLattice : PointGenerator
{
    public override List<Vector2> GeneratePoints(int n)
    {
        // Points manager reference
        ManagerPoints manager = ManagerPoints.Instance;

        List<Vector2> points = new List<Vector2>();
        for (int i = 0; i < n; i++)
        {
            // Implement "lattice" generation here
        }

        return points;
    }
}

[CreateAssetMenu(menuName = "Point Set/Generation/Packed")]
public class PointGeneratorPacked : PointGenerator
{
    public override List<Vector2> GeneratePoints(int n)
    {
        // Points manager reference
        ManagerPoints manager = ManagerPoints.Instance;

        List<Vector2> points = new List<Vector2>();
        for (int i = 0; i < n; i++)
        {
            // Implement "packed" generation here
        }

        return points;
    }
}

[CreateAssetMenu(menuName = "Point Set/Generation/Poisson Disk")]
public class PointGeneratorPoissonDisk : PointGenerator
{
    public override List<Vector2> GeneratePoints(int n)
    {
        List<Vector2> points = new List<Vector2>();



        return points;
    }
}
#endregion

#region Analysis
public abstract class PointAnalyzer : PointAlgorithm
{
    public abstract List<Vector2> AnalyzePoints(List<Vector2> points);
}

[CreateAssetMenu(menuName = "Point Set/Analysis/Convex Hull")]
public class PointAnalyzerConvexHull : PointAnalyzer
{
    public override List<Vector2> AnalyzePoints(List<Vector2> points)
    {
        List<Vector2> convexHull = new List<Vector2>();

        // Sorting by polar, counter-clockwise
        ManagerPoints.Instance.PointSorters[0].ModifyPoints(ref points);

        // Generating convex hull from sorted point set
        //Stack<Vector2>
        //      1. 


        return convexHull;
    }
}
#endregion

#region Modification
public abstract class PointModifier : PointAlgorithm
{
    public abstract void ModifyPoints(ref List<Vector2> points);
}

[CreateAssetMenu(menuName = "Point Set/Modification/Jitter")]
public class PointModifierJitter : PointModifier
{
    public override void ModifyPoints(ref List<Vector2> points)
    {
        for (int i = 0; i < points.Count; i++)
        {
            points[i] += new Vector2(Random.Range(-1f, 1f), Random.Range(-1f, 1f)) * Time.deltaTime;
        }
    }
}

[CreateAssetMenu(menuName = "Point Set/Modification/Flocking")]
public class PointModifierFlocking : PointModifier
{
    public override void ModifyPoints(ref List<Vector2> points)
    {
        throw new System.NotImplementedException();
    }
}

[CreateAssetMenu(menuName = "Point Set/Modification/Diffuse")]
public class PointModifierDiffuse : PointModifier
{
    public override void ModifyPoints(ref List<Vector2> points)
    {
        throw new System.NotImplementedException();
    }
}

[CreateAssetMenu(menuName = "Point Set/Modification/Raindrops")]
public class PointModifierRaindrops : PointModifier
{
    public override void ModifyPoints(ref List<Vector2> points)
    {
        throw new System.NotImplementedException();
    }
}

[CreateAssetMenu(menuName = "Point Set/Modification/Elastic")]
public class PointModifierElastic : PointModifier
{
    public override void ModifyPoints(ref List<Vector2> points)
    {
        throw new System.NotImplementedException();
    }
}
#region Sorting
[CreateAssetMenu(menuName = "Point Set/Sorting/PolarCCW")]
public class PointSorterPolarCCW : PointModifier
{
    public override void ModifyPoints(ref List<Vector2> points)
    {
        // Sort polar CCW
        //      1. Find lowest y-value point
        Vector2 lowestYVector = points[0];
        int lowestYIndex = 0;

        for (int i = 0; i < points.Count; i++)
        {
            if (points[i].y < lowestYVector.y)
            {
                lowestYVector = points[i];
                lowestYIndex = i;
            }
        }
        //      Setting the 0th element as the point with the lowest y-value
        points[lowestYIndex] = points[0];
        points[0] = lowestYVector;

        //      2. Measure angles between the first point
        int j = 1;
        while (j < points.Count - 1)
        {
            Vector2 a = points[j] - points[0];
            Vector2 b = points[j + 1] - points[0];

            // 2D cross product
            if (a.x * b.y - a.y * b.x < 0)
            {
                // Swap places (reusing lowestYVector because it's finished by now)
                lowestYVector = points[j];
                points[j] = points[j + 1];
                points[j + 1] = lowestYVector;
                j = 1;
            }
            else
            {
                j++;
            }
        }
    }
}
#endregion

#region Animation
#endregion
#endregion
