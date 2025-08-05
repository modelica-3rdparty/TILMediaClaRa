within TILMedia.Solid.Types;
model TILMedia_MineralWool "TILMedia.MineralWool"
  extends TILMedia.Solid.Types.BaseSolid(
    final cp_nominal=900,
    final lambda_nominal=0.030,
    final d=35);
equation
  cp = cp_nominal;
  lambda = lambda_nominal;
end TILMedia_MineralWool;
