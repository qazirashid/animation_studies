#include "colors.inc"
#include "textures.inc"


camera {
    location <0,1,-10> 
    look_at <0,0,0>
}

light_source {
    <0,20,-20> 
    color White
    spotlight
    radius 70
    falloff 20
    tightness 10
    point_at <0,0,0>

}

#declare Base_Plane = plane {
    y, -1.50
    pigment {checker Green White}
}

#declare Sphere_Union = union {
    sphere {
        <0,0,0>,1
        pigment {Blue}
        translate -.5*x
    }
    sphere {
        <0,0,0>,1
        pigment {Red}
        translate .5*x
    }
    //scale <1,.25,1>
}


#declare Sphere_Intersection = intersection {
    sphere {
        <0,0,0>,1
        //pigment {Blue}
        translate -.5*x
    }
    sphere {
        <0,0,0>,1
        //pigment {Red}
        translate .5*x
    }
    //scale <1,.25,1>
}
#declare Lens_With_Hole = difference{
    object {
        Sphere_Intersection
        rotate -90*y
    }
    cylinder {
        <0,0,-1>, <0,0,1>, 0.35
        //pigment {Red}
    }
}


#declare Sphere_Union = union {
    sphere {
        <0,0,0>,1
        pigment {Blue}
        translate -.5*x
    }
    sphere {
        <0,0,0>,1
        pigment {Red}
        translate .5*x
    }
    //scale <1,.25,1>
}

#declare Four_Lenses = merge{
    object {Lens_With_Hole translate <-.6,-.6,0> }
    object {Lens_With_Hole translate <-.6,.6,0> }
    object {Lens_With_Hole translate <.6,-.6,0> }
    object {Lens_With_Hole translate <.6,.6,0> }
    pigment {
        wood
        color_map{
            [0.0 color DarkTan]
            [0.9 color DarkBrown]
            [1.0 color VeryDarkBrown]
            }
        turbulence 0.05
        scale <0.2,0.3,1>
        }
    //normal {bumps 0.1 scale 0.2}
    finish {phong 1 }
}

object {Four_Lenses}
object {Four_Lenses 
    translate <4,0,0>
    texture {Red_Marble}
    rotate 20*y
}
object {
    Four_Lenses
    translate <-4,0,0>
    rotate -20*y
    texture {Cherry_Wood}
}
object {Base_Plane}
