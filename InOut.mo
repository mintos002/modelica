class InOut
  extends Constants;
  parameter Integer pin, pout;
  PeopleConnector pinput(p = pin), poutput(p = pout);
end InOut;