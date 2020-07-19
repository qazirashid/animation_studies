prologues := 3;
outputtemplate :="%j.svg";
outputformat := "svg";
beginfig(1)
    %draw (0,0) --  (1cm,1cm);
    path unitcircle;
    unitcircle := fullcircle shifted urcorner fullcircle;
    pickup pencircle scaled 10pt;
    s := 6cm;
    %Challenge is to draw a wall clock showing realistic looking time.

    %Step 1: Draw outer body. 
    path body;
    body := unitcircle  scaled s shifted (-s/2,-s/2);
    draw body;
    fill body withcolor 0.1[white,red];
    
    % draw center point
    pair zo;
    zo := (0,0);

    pickup pencircle scaled .5pt; linecap:=butt;
    %draw minute tickmarks
    for ang=0 step (360/60) until 360:
        draw ((s/2-.5cm)*dir(ang))--((s/2-.2cm)*dir(ang)) withcolor .4[black,white]; 
    endfor; 
    %draw hour tickmarks
    pickup pencircle scaled 2pt; linecap:=butt;
    for ang=0 step (360/12) until 360:
        draw ((s/2-.5cm)*dir(ang))--((s/2-.2cm)*dir(ang)); 
    endfor;
    %draw thick main hour marks at 12, 3, 6 and 9
    pickup pencircle scaled 3pt; linecap:=butt;
    for ang=0,90,180,270:
        draw ((s/2-.6cm)*dir(ang))--((s/2-.2cm)*dir(ang)); 
    endfor;

    numeric lang; lang:=1;
   
    %draw digits
    for ang=60 step -30 until -270:
        label(decimal lang,(s/2-.8cm)*dir(ang));
        lang := lang +1;
    endfor; 
    % draw pi at 3.14
    piangle=-3.14*360/12+90;
    hourhand :=3; minutehand :=33; secondhand := 47;
    path hpath, mpath, spath; 
    hangle := -hourhand*(360/12) + 90 - .5minutehand;
    mangle := -minutehand*(360/60) + 90;
    secangle := -secondhand*(360/60) + 90;
    linecap:=rounded; 
    hpath := -.1cm*dir(hangle) -- (s/2-s/4.5)*dir(hangle);
    draw hpath withpen pencircle scaled 4pt; 
    mpath := -.1cm*dir(mangle) -- (s/2-s/5)*dir(mangle);
    draw mpath withcolor .6[black,white] withpen pencircle scaled 2 pt;
    spath := -.1cm*dir(secangle) -- (s/2-s/6)*dir(secangle);
    draw spath withcolor .8[black,white] withpen pencircle scaled 1pt withcolor
        .6red;
    fill unitcircle scaled .5cm shifted (-.25cm,-.25cm);
    label.top(btex \TeX etex,(0,0.6cm));
    label.top(btex $e^{\iota\pi}=-1$ etex,(0,0.2cm));
    %drawpoints body withcolor green;
endfig;
end
