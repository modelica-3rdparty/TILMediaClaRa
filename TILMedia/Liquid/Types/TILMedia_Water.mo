within TILMedia.Liquid.Types;
record TILMedia_Water "TILMedia.Water"
  extends TILMedia.Liquid.Types.BaseLiquid(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=1,
    final liquidNames={"TILMedia.Water"},
    final mixingRatio_propertyCalculation={1});
end TILMedia_Water;
