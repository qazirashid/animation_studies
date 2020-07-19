#include "colors.inc"

camera {
    location <0,.1,-50>
    look_at <0,0,0>
    angle 30
}
background {color Gray50}
light_source { <10,10,-25>
   color White 
}

#declare Half_Torus = difference {
    torus{
        4,1
        rotate -90*x
        //pigment{Green}
    }
    box {<-5,-5,-1>,<5,0,1>}
    //pigment {Green}
}

#declare Flip_It_Over = 180*x;
#declare Torus_Translate=8;
#declare Chain_Segment = cylinder{
    <0,4,0>, <0,-4,0>,1
    //pigment {Green}
}

#declare Chain_Link= union {
    object {Half_Torus 
            translate y*Torus_Translate/2
              
        }
    object { Half_Torus
        rotate Flip_It_Over
        translate -y*Torus_Translate/2
    }
    object {Chain_Segment translate x*Torus_Translate/2}
    object {Chain_Segment translate -x*Torus_Translate/2}
}

#declare Gold_Texture = texture {
    pigment {BrightGold}
    finish {
        ambient .1
        diffuse .4
        reflection .25
        specular 1
        metallic
    }
}
#declare Link_Translate = Torus_Translate*2 - 2*y;

#declare Link_Pair = union{
    object {Chain_Link}
    object {Chain_Link translate y*Link_Translate rotate y*90}
    scale 0.25
    texture {Gold_Texture}
}

#declare Chain = union{
    object {Link_Pair}
}

object {Chain 
    scale .8
    rotate <0,45,45>
}
