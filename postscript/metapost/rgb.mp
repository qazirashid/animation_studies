
prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";
beginfig(1)
    path p;
    pW=800;
    pH= 600;
    u := .2cm;
    %p := (0,0) -- (pW,0) -- (pW,pH) -- (0,pH) -- cycle;
    %draw p withcolor white;
    %The above is just to set the postscript bounding box for a width 
    %and height.
    %
    %% Start code here.
    path ci;
    ci := fullcircle scaled u;
    %test of cmykcolors
    xsb := 0;
    ysb := 0;
    xshift :=xsb;
    yshift :=ysb;
    for j=.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j*k)[(1,0,0),(1,1,1)];  
    endfor
    endfor

    for j=.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j*k)[(0,1,0),(1,1,1)];
    endfor
    endfor
    for j=.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j*k)[(0,0,0),(1,1,1)];    
    endfor
    endfor
    xsb := 10u;
    yshift := 0;
    for j=.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j*k)[(1,1,0),(1,1,1)];   
    endfor
    endfor

    for j=0.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j*k)[(0,1,1),(1,1,1)];   
    endfor
    endfor
    for j=0.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j*k)[(1,0,1),(1,1,1)];   
    endfor
    endfor
    
    xsb :=20u;
    yshift :=0;
    for j=.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j,j,j);  
    endfor
    endfor

    for j=.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j,.5j,0);  
    endfor
    endfor
    for j=.1 step .1 until 1:
        yshift := yshift -u;
        xshift := xsb;
    for k=0 step .1 until 1:
        xshift := xshift + u; 
        fill ci shifted (xshift, yshift) withcolor (j,0,0.5j);  
    endfor
    endfor
endfig;
end
