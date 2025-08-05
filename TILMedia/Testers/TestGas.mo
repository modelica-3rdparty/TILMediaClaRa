﻿within TILMedia.Testers;
model TestGas
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  // This tester demonstrates the calculation of therodynamic properties of flue gas
  // using the gas objects Gas_ph, Gas_ps and Gas_pT

  SI.Pressure p;
  SI.Temperature T;

  // Instance of the gas object Gas_pT that requires the pressure p and the temperature T as inputs.
  TILMedia.Gas.Gas_pT gas1(p=p, T=T,
    redeclare Gas.Types.FlueGasTILMedia gasType)
                    annotation (Placement(transformation(extent={{-20,20},{0,40}},
          rotation=0)));

  // Instance of the gas object Gas_ps that requires the pressure p and the specific entropy s as inputs.
  TILMedia.Gas.Gas_ps gas2(p=p, s=gas1.s,
    redeclare Gas.Types.FlueGasTILMedia gasType)
    annotation (Placement(transformation(extent={{-20,-20},{0,0}})));

  // Instance of a gas object Gas_ph that requires the pressure p and the specific enthalpy h as inputs.
  TILMedia.Gas.Gas_ph gas3(p=p, h=gas1.h,
    redeclare Gas.Types.FlueGasTILMedia gasType)
    annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));

equation
  p = 1e5;
  T = 274 + 50*time;

  annotation (experiment(StopTime=1));
end TestGas;
