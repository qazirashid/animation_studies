#include "colors.inc"
#include "textures.inc"
camera {
    location <0,1,-10>
    look_at 0
    angle 35
}

light_source {<500,500,-1000>, White}

#declare My_Plane = plane { y,0
        pigment {checker Green White}
    }


#declare My_Text = text{
    ttf "timrom.ttf" "Dr. H" 0.1,0.1*x
    texture {Red_Marble}
    translate -2*x
}
object {My_Text}
