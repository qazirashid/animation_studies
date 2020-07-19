#!/usr/bin/env python
import pygame as pg
#import pygame library.

#init pygame
pg.init();
#Open a surface for drawing. 
Resolution = (640,300); # set resolution

screen = pg.display.set_mode(Resolution);
#open a new display window.

#Start event loop to collect mouse and keyboard events.
#When user clicks the close button on window, it generates a QUIT 
#event. We monitor this even and terminate the event loop.
running=True;

while running:
    for event in pg.event.get():
        print(event);
        if event.type == pg.QUIT:
            running = False;
        screen.fill((255,255,0));
        pg.display.update();




pg.quit();
