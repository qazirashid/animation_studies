
prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";
vardef writePathToFile(expr p, np, filename) = 
    %Sample the path at np points and write the points
    %as a comma separated value list in the file named filename.
    save ostr; string ostr; ostr := "";
    save lp; numeric lp; lp := length p;
    save ss; numeric ss; ss := lp/np;
    
    for i=0 step ss until lp:
        ostr := ostr & decimal (xpart point i of p) & ", ";
        ostr := ostr & decimal (ypart point i of p) & char(10); 
    endfor   
    ostr := ostr & EOF; % append EOF so that file is closed.
    write ostr to filename;
enddef;
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
    p := (0,0) .. (1,0)..(0,1);
    np = length p;
    ss = np/100;
    string ostr; ostr := "";

    for i=0 step ss until (length p):
        ostr := ostr & decimal (xpart point i of p) & ", ";
        ostr := ostr & decimal (ypart point i of p) & char(10); 
    endfor;
    write ostr to "points.txt";
    
    path q; q := fullcircle scaled 1cm;
    writePathToFile(q,1000,"circle.txt");

endfig;
end
