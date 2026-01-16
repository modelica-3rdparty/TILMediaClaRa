within TILMedia_AddOn_Tests.VLEFluid;
model VLEFluidMixture
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  parameter Real dp = -1e5;
  parameter Real dh = 500e3;

  TILMedia.VLEFluid.MixtureCompatible.VLEFluid_ph vleFluid_nc4(
    redeclare TILMedia.VLEFluid.Types.BaseVLEFluid vleFluidType(
      fixedMixingRatio=false,
      nc_propertyCalculation=4,
      vleFluidNames={"VDIWA2006.METHANE(REF=STP)","VDIWA2006.CARBON DIOXIDE","VDIWA2006.WATER","VDIWA2006.HYDROGEN"},
      mixingRatio_propertyCalculation={10,10,1,1}),
    deactivateDensityDerivatives=true,
    p=vleFluid_nc4.crit.p - dp,
    h=vleFluid_nc4.crit.h + dh*(time - 0.5)) annotation (Placement(transformation(extent={{-60,80},{-40,100}})));

  TILMedia.VLEFluid.MixtureCompatible.VLEFluid_ph vleFluid_nc4_2(
    redeclare TILMedia.VLEFluid.Types.BaseVLEFluid vleFluidType(
      fixedMixingRatio=false,
      nc_propertyCalculation=4,
      vleFluidNames={"VDIWA2006.METHANE(REF=STP)","VDIWA2006.CARBON DIOXIDE","VDIWA2006.WATER","VDIWA2006.HYDROGEN"},
      mixingRatio_propertyCalculation={10,10,1,1}),
    deactivateDensityDerivatives=true,
    p=vleFluid_nc4.crit.p - dp,
    h=vleFluid_nc4.crit.h + dh*(time - 0.5),
    xi=vleFluid_nc4_2.vleFluidType.xi_default + {-time*0.04,time*0.03,0})
    annotation (Placement(transformation(extent={{-30,80},{-10,100}})));

  TILMedia.VLEFluid.MixtureCompatible.VLEFluid_ph vleFluid_nc4_fixedMixingRatio(
    redeclare TILMedia.VLEFluid.Types.BaseVLEFluid vleFluidType(
      fixedMixingRatio=true,
      nc_propertyCalculation=4,
      vleFluidNames={"VDIWA2006.METHANE(REF=STP)","VDIWA2006.CARBON DIOXIDE","VDIWA2006.WATER","VDIWA2006.HYDROGEN"},
      mixingRatio_propertyCalculation={10,10,1,1}),
    deactivateDensityDerivatives=true,
    p=vleFluid_nc4.crit.p - dp,
    h=vleFluid_nc4.crit.h + dh*(time - 0.5)) annotation (Placement(transformation(extent={{0,80},{20,100}})));

  TILMedia.VLEFluid.MixtureCompatible.VLEFluid_ph vleFluid_nc4_fixedMixingRatio_2(
    redeclare TILMedia.VLEFluid.Types.BaseVLEFluid vleFluidType(
      fixedMixingRatio=true,
      nc_propertyCalculation=4,
      vleFluidNames={"VDIWA2006.METHANE(REF=STP)","VDIWA2006.CARBON DIOXIDE","VDIWA2006.WATER","VDIWA2006.HYDROGEN"},
      mixingRatio_propertyCalculation={10,6,1,1}),
    deactivateDensityDerivatives=true,
    p=vleFluid_nc4.crit.p - dp,
    h=vleFluid_nc4.crit.h + dh*(time - 0.5)) annotation (Placement(transformation(extent={{30,80},{50,100}})));

initial equation
  assert(abs(vleFluid_nc4.T - vleFluid_nc4_2.T) < 1e-5, "These values should be equal");
equation
  assert(abs(vleFluid_nc4.T - vleFluid_nc4_fixedMixingRatio.T) < 1e-5, "These values should be equal");

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=1,
      Interval=0.02,
      __Dymola_Algorithm="Dassl",
      __Dymola_fixedstepsize=0.001));
end VLEFluidMixture;
