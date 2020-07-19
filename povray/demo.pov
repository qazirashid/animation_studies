#version 3.7;
#include "colors.inc"
#include "stones.inc"
background {color Cyan}

camera {
    location <0,2,-3.1>
    look_at <0,1,2>
}

sphere {
    <0,1,2>, 2
    texture {
        pigment {color rgb<0.1,0.9,0.1>}
    }
}

light_source {
    <2,4,-3> color White
}

box {
    <-1,0,-1>
    <1,0.5,1>
    texture{
        T_Stone25
        scale 4
    }
    rotate <0,20,0>
}


