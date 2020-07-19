
prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";

%The idea is to write a procdure (macro) that takes a path
%and two numeric parmaters that specify the snakefication of the path. 

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

