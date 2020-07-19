
#include "colors.inc"
#include "functions.inc"
camera {
    location <-5,15,-20>
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

#declare ISO_Surface = isosurface {
    function {f_noise3d(x,y,z)-0.5}
    max_gradient 4
    contained_by {box{-2,2}}
}
#declare Func_Surface = isosurface{
    function {pow(x,2)+pow(z,2)-y*y}
    threshold 0
    //open
    max_gradient 4
    contained_by {box{-2,2}}
}
#declare Func_Helix = isosurface {
    function { x-cos(z)+ y-sin(z)}
    contained_by{box{-2,2}}
}
object {Checker_Plane translate -5*y}
//object {Func_Surface pigment {Red}}
//object {Func_Surface pigment {Blue} translate <3,3,0> rotate 30*y}
object {Func_Helix pigment {Red}}
