class Constants
  constant Integer InitialPop = 1 "Initial population";
  constant Integer TotalStartPop = 10000 "Total population";
  constant Integer C_wk=15 "Average weekly contacts of a person with others";
  constant Real Rate_C = 0.25 "Contraction rate per contact";
  constant Integer Sickness_period=2 "Sickness period in weeks";
  constant Integer Time_to_breakdown=4 "Time to breakdown in weeks";
  constant Integer Immune_period=26 "Immune period in weeks";
  
  constant Real Birth_rate=(8.99/1000)/(365/7) "In Spain: 8.99 children every 1000 habitants in a year, divided in weeks";
  constant Real Death_rate=(9.05/1000)/(365/7) "In Spain: 9.5 persons every 1000 habitants in a year, divided in weeks";
  constant Real Vaccinations=400 "Vaccination per week";
  constant Integer Vaccination_period=2 "Vaccination needs 2 weeks to produce enough antibodies";
  constant Real Vaccination_effectiveness=0.6 "Vaccination effectiveness on influenza is 60%";
end Constants;