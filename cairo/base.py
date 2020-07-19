#!/usr/bin/env python
import math
import cairo

W, H=300,300;

surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, W, H);
ctx = cairo.Context(surface);

#ctx.scale(W,H);

ctx.move_to(0,0);
ctx.line_to(20,30);
ctx.set_source_rgb(1,0,0);
ctx.set_line_width(1);
ctx.new_sub_path();
ctx.arc(150,150,20,0*3.14/180,90*3.14/180);
ctx.stroke()
ctx.rectangle(0,0,10,10);
ctx.fill()
surface.write_to_png("output.png");
