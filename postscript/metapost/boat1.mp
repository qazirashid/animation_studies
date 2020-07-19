

prologues := 3;
outputformat := "eps";
outputtemplate :="%j.ps";

%Page parameters
numeric pW, pH; pair pCtr;
pW := 800;
pH := 600;
pCtr := (pW/2, pH/2);
numeric textcounter;
textcounter=1;
% end of page parameters
vardef mydiamond = 
    begingroup; 
        save p;
        path p;
        p := (0,0) -- dir 60 -- (dir 60 + dir 120) -- dir 120 -- cycle;
        p
    endgroup 
enddef; 

vardef picflower =
    begingroup
        save flower;
        save i;
        picture flower; 
        numeric i;
        flower := image (
            draw mydiamond rotated 0;
            draw mydiamond rotated 60;
            fill mydiamond rotated 120 withcolor .3[white,red];
            %fill mydiamond rotated 60 withcolor .3[white,green];
            draw mydiamond rotated 120;
            draw mydiamond rotated 180;
            draw mydiamond rotated 240;
            draw mydiamond rotated 300;
        );
    flower
    endgroup
enddef;

beginfig(1)
    path p; pair ctr;
    p := (0,0) -- (pW,0) -- (pW,pH) -- (0,pH) -- cycle;
    draw p withcolor white;
    %The above is just to set the postscript bounding box for a width 
    %and height.
    %
    %% Start code here. 
    p := (0,0) -- (pW,pH);
    %for i=0 step 60 until  360:
        %draw mydiamond scaled 1cm shifted ctr;
        %draw mydiamond rotated i scaled 1cm shifted ctr;
    %endfor;
    %draw p withcolor red;
    %pickup penspeck scaled 1pt;
    %for j = 0cm step (2cm*sind(60)) until 20cm:
    %for i = 0cm step 3cm until 21cm: 
        draw picflower scaled 1cm shifted pCtr withpen pencircle scaled 1pt;
    %endfor;
    %endfor;
endfig;
end
