within TILMedia.SolidTypes;
model TILMedia_MineralWool "TILMedia.MineralWool"
  extends TILMedia.SolidTypes.BaseSolid(
    final cp_nominal=900,
    final lambda_nominal=0.030,
    final d=35);
equation
  cp = cp_nominal;
  lambda = lambda_nominal;
end TILMedia_MineralWool;
