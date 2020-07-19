
prologues := 3;
outputformat := "png";
outputtemplate :="%j.png";
beginfig(1)
    path p;
    pW=800;
    pH= 600;
    %p := (0,0) -- (pW,0) -- (pW,pH) -- (0,pH) -- cycle;
    %draw p withcolor white;
    %The above is just to set the postscript bounding box for a width 
    %and height.
    %
    %% Start code here.
    fill fullcircle scaled 2cm withcolor red;

endfig;
end
