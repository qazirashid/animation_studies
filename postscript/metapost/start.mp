prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";
%vardef 
beginfig(1)
    path p;
    pW=800;
    pH= 600;
    p := (0,0) -- (pW,0) -- (pW,pH) -- (0,pH) -- cycle;
    draw p withcolor white;
    %The above is just to set the postscript bounding box for a width 
    %and height.
    %
    %% Start code here.
    drawarrow (0,0) -- (100,100); 
    label.rt(btex Pi is Round  etex, (10,10)) scaled 5 withcolor blue;
    drawdblarrow fullcircle scaled 2cm shifted (100,100) withcolor red;
    
    for i=0 step 5 until 800:
        draw fullcircle scaled 10pt shifted (i,200) 
            withcolor (0,0,(i/400) mod 1) ;
        if (i*3 < 800):
            draw fullcircle scaled 30pt shifted (i*3,200) 
                withcolor (0,(i/200)*3 mod 1,0);
        fi
        if (i*9 < 800):
            draw fullcircle scaled 90pt shifted (i*9,200)
                withcolor ((i/300)*9 mod 1,0,0);
        fi
    endfor

endfig;
end
