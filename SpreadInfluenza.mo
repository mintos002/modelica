model SpreadInfluenza
  Immune_population ImmunePop(vaccination=0,pin=1, pout=1);  
  Immune_population VaccImmunePop(vaccination=1,pin=1, pout=1);
  
  Infected_population InfectedPop(pin=2, pout=1);
  Infected_population VaccInfectedPop(pin=2, pout=1);
  
  Non_infected_population NonInfectedPop(vaccination=0,pin=3, pout=1);
  Non_infected_population VaccNonInfectedPop(vaccination=1,pin=3, pout=1);
  
  Sick_population SickPop(pin=1, pout=1);
  Sick_population VaccSickPop(pin=1, pout=1);
  
  Tot Total(pin=4, pout=1);
equation
  // WITHOUT VACUNATION
  connect(ImmunePop.poutput.ps[1],NonInfectedPop.pinput.ps[1]);
  
  connect(InfectedPop.poutput.ps[1],NonInfectedPop.pinput.ps[3]);
  connect(InfectedPop.poutput.ps[1],SickPop.pinput.ps[1]);
  
  connect(SickPop.poutput.ps[1],NonInfectedPop.pinput.ps[2]);
  connect(SickPop.poutput.ps[1],ImmunePop.pinput.ps[1]);
  connect(SickPop.poutput.ps[1],InfectedPop.pinput.ps[2]);
  
  connect(NonInfectedPop.poutput.ps[1],InfectedPop.pinput.ps[1]);
  
  // WITH VACUNATION
  connect(VaccImmunePop.pinput.ps[1],VaccSickPop.poutput.ps[1]);
  connect(VaccNonInfectedPop.pinput.ps[1],VaccImmunePop.poutput.ps[1]);
  connect(VaccNonInfectedPop.pinput.ps[2],VaccSickPop.poutput.ps[1]);
  connect(VaccNonInfectedPop.pinput.ps[3],VaccInfectedPop.poutput.ps[1]);
  connect(VaccInfectedPop.pinput.ps[1],VaccNonInfectedPop.poutput.ps[1]);
  connect(VaccInfectedPop.pinput.ps[2],VaccSickPop.poutput.ps[1]);
  connect(VaccSickPop.pinput.ps[1],VaccInfectedPop.poutput.ps[1]);
  
  
  connect(Total.pinput.ps[1],ImmunePop.poutput.ps[1]);
  connect(Total.pinput.ps[2],InfectedPop.poutput.ps[1]);
  connect(Total.pinput.ps[3],NonInfectedPop.poutput.ps[1]);
  connect(Total.pinput.ps[4],SickPop.poutput.ps[1]);
end SpreadInfluenza;