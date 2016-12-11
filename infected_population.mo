class Infected_population "In-> ps[1]: Non-infected, ps[2]:Sick"
  extends InOut;
  Real InfectedPop(start=0);
  Real InfectionRate;
  Real Incubation;
  Real PercInfected;
equation
  PercInfected=(pinput.ps[2]+InfectedPop)/TotalStartPop;
  
  InfectionRate=min(floor(pinput.ps[1] * C_wk * PercInfected * Rate_C + InitialPop), pinput.ps[1]);
  
  Incubation=floor(InfectedPop/Time_to_breakdown);
  
  der(InfectedPop)=InfectionRate-Incubation;
  
  poutput.ps[1]=InfectedPop;
end Infected_population;