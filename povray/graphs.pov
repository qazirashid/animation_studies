
#include "colors.inc"

camera {
    location <5,5,-20>
    look_at <0,1,0>
}

light_source {
    <10,10, -100>
    color White
}

#declare Checker_Plane = plane {
    <0,1,0>, //normal vector of the plane
    0
    pigment {
        checker color Green, color White
    }
}

#declare Width=0.03;
sphere_sweep{
    linear_spline
    2,
    <-10,0,0> Width,
    <10,0,0> Width
    pigment {Red}
}
sphere_sweep{
    linear_spline
    2,
    <0,-10,0> Width,
    <0,10,0> Width
    pigment {Blue}
}
sphere_sweep{
    linear_spline
    2,
    <0,0,-10> Width,
    <0,0,10> Width
    pigment {Red}
}
//object {Checker_Plane translate -1*y}
