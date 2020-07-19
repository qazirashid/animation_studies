
prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";

%The idea is to write a procdure (macro) that takes a path
%and two numeric parmaters that specify the snakefication of the path. 
vardef snakifym( expr p, segments, theta)=
    % the user passes a base path and the number of sanke segments.
    save r; save i; save snake; save n; save ss;
    save d; save rdir; save rmid; save iss;
    pair r[],d[]; numeric i,n,ss, iss; path snake;
    pair rdir, rmid;
    % Build an array of points along the length of path
    n := length p; ss := n/segments;
    show n;
    show ss;
    show length p;
    for i=0 step ss until n:
        iss := i+ss;
        r[i] := point i of p;
        r[iss] := point (iss) of p;
        rdir := r[iss] - r[i];
        rmid := .5[r[iss],r[i]];
        d[i] := dir ( (angle rdir) - theta);
        show r[i];
        %pickup pencircle scaled 2pt;
        %drawdot (r[i]);
    endfor
    snake := r[0]{d[0]}
        for i=0 step ss until n:
            .. r[i]{d[i]}
        endfor
        .. cycle;
        
    snake
enddef;

vardef snakify( expr p, segments)=
    % the user passes a base path and the number of sanke segments.
    save r; save i; save snake; save n; save ss;
    save d;
    pair r[],d[]; numeric i,n,ss; path snake;
    % Build an array of points along the length of path
    n := length p; ss := n/segments;
    show n;
    show ss;
    show length p;
    for i=0 step ss until n:
        r[i] := point i of p;
        r[i+ss] := point (i+ss) of p;
        d[i] := dir (angle(direction i of p) - 90);
        show r[i];
        %pickup pencircle scaled 2pt;
        %drawdot (r[i]);
    endfor
    snake := r[0]{d[0]}
        for i=0 step ss until n:
            .. r[i]{d[i]}
        endfor
        .. cycle;
        
    snake
enddef;

beginfig(1)
    path p;
    pW=800;
    pH= 600;
    p := (0,0) -- (pW,0) -- (pW,pH) -- (0,pH) -- cycle;
    %draw p withcolor white;
    %The above is just to set the postscript bounding box for a width 
    %and height.
    %
    %% Start code here.
    path q;
    q := fullcircle scaled 2cm;% shifted (2cm, 5cm);
    path snake[];
    snake0 := snakifym(q,100, 45);
    snake1 := snakifym(q,100, 90);% shifted (2cm,0cm);
    snake2 := snakifym(snake1,100, -45) scaled .8;
    %pair r[];
    %draw q;
    %pickup pencircle scaled 3pt;
    %for i=0 step .1 until (length q + .101):
        %drawdot(point i along q);
     %   r[i] := point i of q;
    %endfor
    %path snake;
    %snake := r0{down}
        %for i=0 step .1 until (length q + .101):
         %   ..{dir ( angle(direction i of q) - 90)}r[i]
        %endfor;
    %pickup pencircle scaled .1pt;
    pickup pencircle scaled .1pt;
    draw snake0  withcolor red;
    pickup pencircle scaled 3pt;
    for i=0 step 1 until (length snake0):
        %drawdot (point i of snake1);
    endfor;
    %draw q;
    pickup pencircle scaled .1pt;
    %draw snake1  withcolor blue;
    draw snake2 withcolor red;
    %draw q shifted (2cm,0);
    %draw snake2 scaled 2cm shifted (-2cm,0) withcolor green;
    
endfig;
end
