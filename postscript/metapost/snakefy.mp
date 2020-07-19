
prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";

%The idea is to write a procdure (macro) that takes a path
%and two numeric parmaters that specify the snakefication of the path. 

vardef snakefy( expr p, w, h)=
    p
enddef;

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
    path q;
    q := (0,0) -- (1,0);
    path qs;
    qs := snakefy(q,1,2);
    pair r[];
    for i=0 step .1 until 1:
        drawdot(point i on q);
    endfor
endfig;
end
