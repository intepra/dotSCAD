/**
* torus_knot.scad
*
* @copyright Justin Lin, 2019
* @license https://opensource.org/licenses/lgpl-3.0.html
*
* @see https://openhome.cc/eGossip/OpenSCAD/lib-torus_knot.html
*
**/

function torus_knot(p, q, phi_step) = [
    for(phi = [0:phi_step:6.28318])
    let(
        degree = phi * 180 / 3.14159,
        r = cos(q * degree) + 2,
        x = r * cos(p * degree),
        y = r * sin(p * degree),
        z = -sin(q * degree)
    )
    [x, y, z]
];