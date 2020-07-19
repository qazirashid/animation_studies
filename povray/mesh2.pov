
#include "colors.inc"

camera {
    location <0,5,-20>
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

#declare My_Mesh = mesh2{
    vertex_vectors{
        3,
        <0,0,0>, <5,0,0>, <2.5,5,0>
    }
    normal_vectors{
        3,
        <1,1,0>, <1,1,0>, <1,0,0>
    }
    face_indices{
    1,
    <0,1,2>
    }
    normal_indices{
        1,
        <0,1,2>
    }
}

object {Checker_Plane}
object {My_Mesh pigment {Yellow}}
