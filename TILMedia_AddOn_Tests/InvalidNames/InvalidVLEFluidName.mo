within TILMedia_AddOn_Tests.InvalidNames;
model InvalidVLEFluidName "This model should fail"
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.VLEFluid_ph vleFluid(
    h=3,
    redeclare TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType(
      fixedMixingRatio=false,
      nc_propertyCalculation=1,
      vleFluidNames={"doesntexist"}),
    p=100000) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
end InvalidVLEFluidName;
