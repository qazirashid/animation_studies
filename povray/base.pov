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

object {Checker_Plane}
