#include "colors.inc"
#include "textures.inc"
camera {
    location <0,5,-20>
    look_at <0,1,0>
}

light_source {
    <10,100, -100>
    color White
}

#declare Checker_Plane = plane {
    <0,1,0>, //normal vector of the plane
    0
    pigment {
        checker color Green, color White
    }
}

#declare Hex_Prism = prism {
    linear_sweep //No tapering along y-axis
    linear_spline // the vertices specified in the list below are to be joined
   //using a linear spline 
    0, //sweep from y=0 (prisms sweeps along y-axis)
    1, //sweep to y=1
    7, // The number of vertices making up the prism shape
    //Now the list of vertices
    <3,5>, <-3,5>, <-5,0>, <-3,-5>, <3,-5>, <5,0>,<3,5>
    // Note that first and last vertex are the same to close the shape.
    pigment {Yellow}
    
}

#declare V_Prism = prism{
    linear_sweep
    cubic_spline
    0,
    1,
    18,
    <3,-5>,<3,5>, <-5,0>,<3,-5>,<3,5>, <-5,0>,
     <2,-4>,<2,4>, <-4,0>,<2,-4>,<2,4>, <-4,0>,
     <1,-3>,<1,3>, <-3,0>, <1,-3>,<1,3>, <-3,0>
     pigment {Cyan}

}
#declare My_Sphere = sphere_sweep{
    linear_spline
    4,
    <-5,-5,0>,1
    <-5,5,0>, 1
    <5,-5,0>, 1
    <5,5,0>, 1
}


object {Checker_Plane translate <0,-5,0>}
object {My_Sphere texture {Red_Marble}}
object {torus {5,1 texture {Red_Marble} scale <1,.3,1>} }
