function __in_line(line_pts, pt, epsilon = 0.0001) =
    let(
        v1 = line_pts[0] - pt, 
        v2 = line_pts[1] - pt
    )
    (abs(cross(v1, v2)) < epsilon) && ((v1 * v2) <= epsilon);