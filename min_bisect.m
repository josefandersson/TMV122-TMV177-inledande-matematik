
function m=min_bisect(f,I,tol)
% min_bisect - ber�knar nollst�lle till f(x) p� intervallet I.
%   Syntax:
%           x = min_bisect(f,I,tol)
%   Argument:
%           f   - funktionshandtag: pekar p� namnet till en funktionsfil eller
%                 till en anonym funktion. T.ex. f=@funk eller f=@(x)cos(x)-x
%           I   - 1x2 matris, anger ett intervall I=[a,b]. Funktionen m�ste 
%                 v�xla tecken p� intervallet.
%           tol - positivt tal som anger �nskad noggrannhet f�r nollst�llet.
%   Returnerar:
%           x   - ett tal som ger approximativt nollst�lle.
%   Beskrivning:
%           Programmet ber�knar ett approximativt nollst�lle till f(x) p�
%           intervallet I med intervallhalveringsmetoden.
%   Exempel:
%           x = min_bisect(@(x)cos(x)-x,[0,1],1e-5)
	   
    a=I(1);
    b=I(2);

    msg=sprintf('??? Felaktig anv�ndning ==> min_bisect \n Funktionen m�ste v�xla tecken p� intervallet.');
	     
    if f(a)*f(b) >= 0
        disp(msg)
        m=[];
        return
    end

    while b-a > tol
        m = (a+b) / 2;
        if f(a)*f(m) < 0
            b = m;
        else
            a = m;
        end
    end

    m=(a+b)/2;