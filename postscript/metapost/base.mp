prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";
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
endfig;
end
