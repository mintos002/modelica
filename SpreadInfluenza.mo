model SpreadInfluenza
  Immune_population ImmunePop(pin=1, pout=1);
  Infected_population InfectedPop(pin=2, pout=1);
  Non_infected_population NonInfectedPop(pin=3, pout=1);
  Sick_population SickPop(pin=1, pout=1);
  
  Tot Total(pin=4, pout=1);
equation
  connect(ImmunePop.poutput.ps[1],NonInfectedPop.pinput.ps[1]);
  
  connect(InfectedPop.poutput.ps[1],NonInfectedPop.pinput.ps[3]);
  connect(InfectedPop.poutput.ps[1],SickPop.pinput.ps[1]);
  
  connect(SickPop.poutput.ps[1],NonInfectedPop.pinput.ps[2]);
  connect(SickPop.poutput.ps[1],ImmunePop.pinput.ps[1]);
  connect(SickPop.poutput.ps[1],InfectedPop.pinput.ps[2]);
  
  connect(NonInfectedPop.poutput.ps[1],InfectedPop.pinput.ps[1]);
  
  connect(Total.pinput.ps[1],ImmunePop.poutput.ps[1]);
  connect(Total.pinput.ps[2],InfectedPop.poutput.ps[1]);
  connect(Total.pinput.ps[3],NonInfectedPop.poutput.ps[1]);
  connect(Total.pinput.ps[4],SickPop.poutput.ps[1]);
end SpreadInfluenza;