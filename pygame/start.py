#!/usr/bin/env python
import pygame
from pygame.locals import *
import time
#import pygame library.
#Also import local definitions. This will define many
#useful constants like keyboard keys.

#init pygame
pygame.init();
#Open a surface for drawing. 
Resolution = (640,300); # set resolution

screen = pygame.display.set_mode(Resolution);
screen.set_alpha(0);
#open a new display window.

#Start event loop to collect mouse and keyboard events.
#When user clicks the close button on window, it generates a QUIT 
#event. We monitor this even and terminate the event loop.
running=True;

#Define key dictionary.
key_dict = { K_k:(0,0,0), K_r:(255,0,0), K_g:(0,255,0), K_b:(0,0,255)
}

ball = pygame.image.load("eiota.png");
rect = ball.get_rect();
print("Rect:", rect);
speed = [2,2];
size=600, 300
width, height= size;
print("rect.right, rect.left, rect.top, rect.bot",rect.right, rect.left,
        rect.bottom);
bgcolor = (0,0,0);

captureimage=True;

while running:
    time.sleep(1.0/60.0);
    screen.fill(bgcolor);
    rect = rect.move(speed);
    if (rect.left < 0) or (rect.right > (width-50)):
        speed[0] = -1*speed[0];
    if (rect.bottom <50) or (rect.top > (height-50)):
        speed[1] = -1*speed[1];
    for event in pygame.event.get():
        #print(event);
        if event.type == pygame.QUIT:
            running = False;
        #Check to see if a dictionary entry exist for the key pressed.
        #if so, use the event.key as key into the color dictionary to get
        #color and fill the background with that color.
        if event.type ==KEYDOWN:
            if event.key in key_dict:
                bgcolor = key_dict[event.key];
            print(screen.get_alpha());
        #Once something changes, display must be updated to render the changes.
    pygame.draw.rect(screen,bgcolor,rect,1);
    screen.blit(ball,rect);
    pygame.display.update();
    if(captureimage):
        captureimage=False;
        pygame.image.save(screen,"output.png");
pygame.quit();


