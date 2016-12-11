class Population
  import C=Constants;
  parameter Real Sick_population=10;
  parameter Real Immune_population=0;
  parameter Real Non_infected_population=9000 "C.InitialPopulation";
  parameter Real Infected_population=890;
  Real Incubation;
  Real Activation;
  Real Cure_rate;
  Real Infection_rate;
  Real Perc_infected;
  
equation
  Incubation=floor(Infected_population/C.Time_to_breakdown);
  Activation=floor(Immune_population/C.Immune_period);
  Cure_rate=floor(Sick_population/C.Sickness_period);
  
  
  Perc_infected=((Infected_population+Sick_population)/C.InitialPopulation);
  Infection_rate=min(floor(Non_infected_population*C.C_wk*Perc_infected*C.Rate_C+C.InitialPopulation), Non_infected_population);
  
  der(Non_infected_population)=Activation-Infection_rate;
  der(Infected_population)=Infection_rate-Incubation;
  der(Immune_population)=Cure_rate-Activation;
  der(Sick_population)=Incubation-Cure_rate;
  
end Population;