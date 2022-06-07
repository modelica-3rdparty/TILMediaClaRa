within TILMedia_AddOn_Tests.MediumRecord.BasicHandling;
model TestGas_mixture
  extends TILMedia.Testers.TestGas_mixture(
    gas_pT(gasType=GasTypes.FlueGasTILMedia()),
    gas_ph(gasType=GasTypes.FlueGasTILMedia()),
    MyGasMixture=GasTypes.VDIWA2006_DryAir(),
    myGas(gasType=GasTypes.VDIWA2006_DryAir(), xi={0.7}));
end TestGas_mixture;
