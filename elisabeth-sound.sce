//from https://youtu.be/sUudVY6gDew
//filename = fullfile( 'D:\Telecharg\time_series_2019-ncov-Confirmed.csv');
//filename = fullfile( 'time_series_2019-ncov-Confirmed.csv');
//DEPRECATED  src file
//p59 119
f = fullfile( '/home/peter/POUB/elisabeth-sound/Voix 087_sdElisabethBoulotHandDrum.wav');
//44kHz

//[ y , Fs , bits ] = wavread ( " SCI/modules/sound/demos/chimes.wav " ) ; Fs , bits 

//b2 = fullfile( '/home/peter/POUB/velo-piste-countdown-Scilab-sound-track-Matlab/b2.wav');



//[x,y]=loadwave(filename);
[ys,info]=loadwave(f);
disp( "info=")
//x2=loadwave(b2);
//sound(x/2)
//sounseq
//drawnow()
//plot2d(x)
//plot(x)
//playsnd(f) OK


//playsnd(b2)
//sleep(1000)
//playsnd(f);sleep(500);playsnd(f);sleep(500);playsnd(b2)
//sleep(1000)
//beep('on') 
//beep()
//sleep(5)
//beep('off') 
disp("info")
info
//duree size(ys)(1,2) 47128.
//ys mat lign ~ hor ys(1,3)
//disp(size(ys)(1,2)/44100) 
//disp(size(x2)(1,2)/44100) 

//max(ys(1,:))
//0.0806885
//ralenti
//yspoub=ys*2;
//x2poub=x2*2;
//playsnd(f)
//playsnd(yspoub)
//sleep(1000) OK

//TODO quieter
volume=.1//volume/2

playsnd(ys*volume,44100)
//default 22kHz

//sleep(500)
//playsnd(yspoub)

//sleep(1000)

//playsnd(b2) ; sleep(500) ; playsnd(x2) ; sleep(500) ; playsnd(x2poub)

//TODO add max matrix window adds

//reverse

//data=mapsound(ys,.1,22050,44100)
//default 22kHz

//analyze(ys)
a=[1 2 3]
r=a(3:1)
r

function yNewMAT=resampling(x,y,xNew)
    // xNew smaller included in x
    xSov=x
    ySov=y
    //recursive
    if ((xNew(1)>=x(1))& ((xNew(1)<=x(2)))) then
        disp( "lbl1 if1")
        yNewMAT=[[(ySov(1)+(xNew(1)-xSov(1))*(ySov(2)-ySov(1))/(xSov(2)-xSov(1)))],resampling(x(2:$),y(2:$),xNew(2:$))] //xNew(1) 1!!!! tjs
        //yNewMAT=[1 2]
    elseif (xNew(1)>x(2)) then
        disp( "lbl2 if2")
            yNewMAT=resampling(x(2:$),y(2:$),xNew(1:$))

    else 
        disp( "lbl3")
        yNewMAT=[9999]
        yNewMAT
    end
endfunction

resampling([1 2 3],[10 20 30],[1.5 2.2 3])//-> [15 22 30]


//plot(ys)
//by Peter MOUEZA
