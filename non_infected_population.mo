class Non_infected_population "In-> ps[1]: ImmunePop, ps[2]:sick, ps[3]:InfectedPop "
  extends InOut;
  parameter Integer vaccination;
  Real NonInfectedPop(start = TotalStartPop);
  Real Activation, InfectionRate, PercInfected, VaccinationRate;
equation
  Activation=floor(pinput.ps[1]/Immune_period);
  
  PercInfected=(pinput.ps[2]+pinput.ps[3])/TotalStartPop;

  InfectionRate=min(floor(NonInfectedPop*C_wk*PercInfected*Rate_C+InitialPop), NonInfectedPop);
  
  VaccinationRate=floor(Vaccinations/Vaccination_period*Vaccination_effectiveness);
  
  if vaccination==0 then
    der(NonInfectedPop)=Activation-InfectionRate;
  else
    der(NonInfectedPop)=Activation-InfectionRate-VaccinationRate;
  end if;
  
  poutput.ps[1]=NonInfectedPop;
end Non_infected_population;