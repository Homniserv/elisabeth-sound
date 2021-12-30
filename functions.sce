
function yResMAT=resampling(x,y,xRequest)
    // xRequest smaller included in x
    //x supposé ordonné
    xSov=x
    ySov=y

    disp( "lbl0 xSov = ")
    disp( xSov)
    disp( "xRequest(1) = ")
    disp( xRequest(1))
    //recursive
    if (length(xRequest)==0) then 
        yResMAT=[]
        disp( "lbl.2")   
    else
        disp( "lbl4")
        yResMAT=[3333]
        yResMAT

        if (length(xSov)==1) then
            disp( "lbl.5 n arrive jamais si on part de self")
            yResMAT=[0000]
            yResMAT
        elseif (length(xSov)>=2) then
            if ((xRequest(1)>=xSov(1))& ((xRequest(1)<=xSov(2)))) then
                interpolated=(ySov(1)+(xRequest(1)-xSov(1))*(ySov(2)-ySov(1))/(xSov(2)-xSov(1)))
                disp( "lbl1 if1 interpolated=")
                disp(interpolated)
                yResMAT=[interpolated,resampling([xRequest(1),xSov(2:$)],[interpolated,ySov(2:$)],xRequest(2:$))] //xRequest(1) 1!!!! tjs
                //yResMAT=[1 2]
                disp( "lbl2  yResMAT")
                disp(yResMAT)
            elseif (xRequest(1)>xSov(2)) then
                disp( "lbl2 if2")
                yResMAT=resampling(xSov(2:$),ySov(2:$),xRequest(1:$))
                disp(yResMAT)

            else 
                disp( "lbl3")
                yResMAT=[9999]
                yResMAT
            end
        else
            yResMAT=[1111]
            yResMAT
        end

    end
endfunction

resampling([1 2 3],[10 20 30],[1.5 2.2 2.5 3])//-> [15 22 25 30]


//plot(ys)
//by Peter MOUEZA

function yResMAT=resamplingNb(x,y,nb)
     yResMAT=resampling(x,y,linspace(x(1),length(x),nb))
endfunction
resamplingNb([1 2 3],[10 20 30],5)
