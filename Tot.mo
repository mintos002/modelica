class Tot
  extends InOut;
  //extends Constants;
  Real tot(start = TotalStartPop);
equation
  tot=pinput.ps[1] + pinput.ps[2] + pinput.ps[3] + pinput.ps[4];
  poutput.ps[1]=tot;
  
  poutput.ps[1]=tot;
  
  //der(tot)=floor((1+Birth_rate-Death_rate));
end Tot;