class Immune_population "Take ps[1]: Sick"
  extends InOut;
  parameter Integer vaccination;
  Real ImmunePop(start = 0);
  Real CureRate, Activation, VaccinationRate;
equation
  CureRate=floor(pinput.ps[1]/Sickness_period);
  
  Activation=floor(ImmunePop/Immune_period);
  
  VaccinationRate=floor(Vaccinations/Vaccination_period);
  if vaccination==0 then
    der(ImmunePop)=CureRate-Activation;
  else
    der(ImmunePop)=CureRate-Activation+VaccinationRate;
  end if;
  poutput.ps[1]=ImmunePop;
end Immune_population;