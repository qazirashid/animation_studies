
prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";
beginfig(1)
    path p[];
    p1 = (0,0){curl 0}..(5pt,-3pt)..{curl 0}(10pt,0);
    p2 = p1..(p1 yscaled-1 shifted(10pt,0));
    p0 = p2;
    for i=1 upto 3: p0:=p0.. p2 shifted (i*20pt,0);
    endfor
    for j=0 upto 8: draw p0 shifted (0,j*10pt);
    endfor
    p3 = fullcircle shifted (.5,.5) scaled 72pt;
    clip currentpicture to p3;
    draw currentpicture;
    draw p3;
    path test;
    %test := (0,0) (1,0);
endfig;
end
