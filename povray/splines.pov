#include "colors.inc"

camera {
    orthographic
    up <0,5,0>
    right <5,0,0>
    location <2.5,2.5,-100>
    look_at <2.5,2.5,0>
}

#declare Red_Point = <1.0,0.0>;
#declare Orange_Point = <0.25,1.0>;
#declare Yellow_Point = <2.5,2>;
#declare Green_Point = <2.0,3.0>;
#declare Blue_Point = <1.5,4>;
#declare Point_Size = 0.03;

cylinder { Red_Point, Red_Point - <0,0,20>, Point_Size
            pigment {Red}
            finish {ambient 1}
        }

cylinder { Orange_Point, Orange_Point - <0,0,20>, Point_Size
            pigment {Orange}
            finish {ambient 1}
        }
cylinder { Yellow_Point, Yellow_Point - <0,0,20>, Point_Size
            pigment {Yellow}
            finish {ambient 1}
        }
cylinder { Green_Point, Green_Point - <0,0,20>, Point_Size
            pigment {Green}
            finish {ambient 1}
        }
cylinder { Blue_Point, Blue_Point - <0,0,20>, Point_Size
            pigment {Blue}
            finish {ambient 1}
        }
#declare Lathe_1 = lathe {
    bezier_spline
    4, Red_Point, Orange_Point, Green_Point, Blue_Point
    pigment {White}
    finish {ambient 1}
}
object {Lathe_1}
