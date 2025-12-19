function Y=ModePropre(kn,s,Nw,Aff)
  global CL;

  
  if(CL == [0,0] | CL == [0,1])
    for in=1:Nw
        % Y_ij, avec i=>n et j=>s
        Y(in,:)=sin(kn(in)*s);
      end
  elseif (CL == [1,0] | CL == [1,1])
    Y(1,:)=cos(0*s);
      for in=1:Nw
        % Y_ij, avec i=>n et j=>s
        Y(in,:)=cos(kn(in)*s);
      end
    end

%=> visualisation de quelques modes propres
figure(1);
plot(s,Y([1:3 Nw],:),'LineWidth',2)
xlabel('s [m]')
legend('n=1','n=2','n=3','n=nmax')
set(gca,'FontSize',24)
end
