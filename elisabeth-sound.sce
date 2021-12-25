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
[x1,y1]=loadwave(f);
disp( "info=")
//x2=loadwave(b2);
//sound(x/2)
//sounseq
//drawnow()
//plot2d(x)
//plot(x)
playsnd(f)
 

//playsnd(b2)
//sleep(1000)
//playsnd(f);sleep(500);playsnd(f);sleep(500);playsnd(b2)
//sleep(1000)
//beep('on') 
//beep()
//sleep(5)
//beep('off') 
disp("y1")
y1
//duree size(x1)(1,2) 47128.
//x1 mat lign ~ hor x1(1,3)
//disp(size(x1)(1,2)/44100) 
//disp(size(x2)(1,2)/44100) 

//max(x1(1,:))
//0.0806885
//ralenti
//x1poub=x1*2;
//x2poub=x2*2;
//playsnd(f)
//playsnd(x1poub)
sleep(1000)
playsnd(x1,44100)
//default 22kHz

//sleep(500)
//playsnd(x1poub)

//sleep(1000)

//playsnd(b2) ; sleep(500) ; playsnd(x2) ; sleep(500) ; playsnd(x2poub)

//TODO add max matrix window adds

//reverse

//data=mapsound(x1,.1,22050,44100)
//default 22kHz

//analyze(x1)
a=[1 2 3]
r=a(3:1)
r

function yNew=resampling(x,y,xNew)
    // xNew smaller included in x
    xSov=x
    ySov=y
    //recursive
  if norm(a-(a+e),1) > %eps,
    e=e/2;
    k=k+1;
end
endfunction
resampling([1 2 3],[10 20 30],[1.5 2.2 3])//-> [15 22 30]


//plot(x1)
//by Peter MOUEZA
