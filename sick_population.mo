class Sick_population "Take ps[1]:Infected population"
  extends InOut;
  Real SickPop(start = 0);
  Real Incubation, CureRate;
equation
  Incubation=floor(pinput.ps[1]/Time_to_breakdown);
  CureRate=floor(SickPop/Sickness_period);
  
  der(SickPop)=Incubation-CureRate;
  
  poutput.ps[1]=SickPop;
end Sick_population;