within TILMedia.Internals.GasDiffusionCoefficients.Testers;
model TesterBinaryDiffCoeffLit
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  parameter TILMedia.Internals.GetIDXfromCAS.ListOfSubstances listOfSubstances;
  parameter Integer idxVector[:]=TILMedia.Internals.GetIDXfromCAS.getGasIDXVector(gasType,listOfSubstances);
  parameter Integer idxVector2[:]=TILMedia.Internals.GetIDXfromCAS.getGasIDXVector(gasType2,listOfSubstances);

  parameter TILMedia.Gas.Types.BaseGas gasType=TILMedia.Gas.Types.BaseGas(
      fixedMixingRatio=false,
      nc_propertyCalculation=7,
      gasNames={"TILMediaXTR.Water","TILMediaXTR.Methane","TILMediaXTR.Hydrogen","TILMediaXTR.Carbon_Monoxide",
        "TILMediaXTR.Carbon_Dioxide","TILMediaXTR.Oxygen","TILMediaXTR.Nitrogen"},
      condensingIndex=1,
      mixingRatio_propertyCalculation={0.00579111,1e-6,1e-6,1e-6,1e-6,0.230146,0.764063})
    annotation (Placement(transformation(extent={{52,72},{72,92}})));

  parameter TILMedia.Gas.Types.BaseGas gasType2=TILMedia.Gas.Types.BaseGas(
      fixedMixingRatio=false,
      nc_propertyCalculation=7,
      gasNames={"TILMediaXTR.Water","TILMediaXTR.Methane","TILMediaXTR.Hydrogen","TILMediaXTR.Argon",
        "TILMediaXTR.Ammonia","TILMediaXTR.Oxygen","TILMediaXTR.Nitrogen"},
      condensingIndex=1,
      mixingRatio_propertyCalculation={0.00579111,1e-6,1e-6,1e-6,1e-6,0.230146,0.764063})
    annotation (Placement(transformation(extent={{72,72},{92,92}})));

  parameter TILMedia.Internals.TILMediaExternalObject gasPointer=TILMedia.Internals.TILMediaExternalObject(
        "Gas",
        gasType.concatGasName,
        TILMedia.Internals.calcComputeFlags(
          false,
          false,
          true,
          false,
          false),
        gasType.mixingRatio_propertyCalculation[1:end - 1]/sum(gasType.mixingRatio_propertyCalculation),
        gasType.nc,
        gasType.condensingIndex,
        getInstanceName());

  parameter TILMedia.Internals.TILMediaExternalObject gasPointer2=TILMedia.Internals.TILMediaExternalObject(
        "Gas",
        gasType2.concatGasName,
        TILMedia.Internals.calcComputeFlags(
          false,
          false,
          true,
          false,
          false),
        gasType2.mixingRatio_propertyCalculation[1:end - 1]/sum(gasType2.mixingRatio_propertyCalculation),
        gasType2.nc,
        gasType2.condensingIndex,
        getInstanceName());

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_CH4_H2O_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CH4_H2O,
    1,
    2,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CH4_H2O_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CH4_H2O,
    1,
    2,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CH4_H2O_Chapman_Enskog_soll = 0.29241e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CH4_H2O_Fuller_soll = 0.35378e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CH4_H2O_exp = 0.361e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_CH4_H2O_diff_Fuller = (D_CH4_H2O_Fuller - D_CH4_H2O_exp)/D_CH4_H2O_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_CH4_H2O_diff_Chapman_Enskog = (D_CH4_H2O_Chapman_Enskog - D_CH4_H2O_exp)/D_CH4_H2O_exp*100;

  Modelica.Units.SI.Temperature T_CH4_H2O = 352;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_CO2_H2O_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CO2_H2O,
    1,
    5,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CO2_H2O_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CO2_H2O,
    1,
    5,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CO2_H2O_Chapman_Enskog_soll =  0.15879e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CO2_H2O_Fuller_soll =  0.22311e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CO2_H2O_exp = 0.201e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_CO2_H2O_diff_Fuller = (D_CO2_H2O_Fuller - D_CO2_H2O_exp)/D_CO2_H2O_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_CO2_H2O_diff_Chapman_Enskog = (D_CO2_H2O_Chapman_Enskog - D_CO2_H2O_exp)/D_CO2_H2O_exp*100;

  Modelica.Units.SI.Temperature T_CO2_H2O = 307;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_CO2_N2_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CO2_N2,
    7,
    5,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CO2_N2_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CO2_N2,
    7,
    5,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CO2_N2_Chapman_Enskog_soll = 0.15717e-4;  // [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CO2_N2_Fuller_soll = 0.16393e-4;  // [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CO2_N2_exp = 0.169e-4;  // [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_CO2_N2_diff_Fuller = (D_CO2_N2_Fuller - D_CO2_N2_exp)/D_CO2_N2_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_CO2_N2_diff_Chapman_Enskog = (D_CO2_N2_Chapman_Enskog - D_CO2_N2_exp)/D_CO2_N2_exp*100;

  Modelica.Units.SI.Temperature T_CO2_N2 = 298;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_CO_N2_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CO_N2,
    7,
    4,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CO_N2_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_CO_N2,
    7,
    4,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_CO_N2_Chapman_Enskog_soll = 0.30268e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CO_N2_Fuller_soll = 0.30912e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_CO_N2_exp = 0.322e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_CO_N2_diff_Fuller = (D_CO_N2_Fuller - D_CO_N2_exp)/D_CO_N2_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_CO_N2_diff_Chapman_Enskog = (D_CO_N2_Chapman_Enskog - D_CO_N2_exp)/D_CO_N2_exp*100;

  Modelica.Units.SI.Temperature T_CO_N2 = 373;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_H2_H2O_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_H2O,
    1,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_H2O_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_H2O,
    1,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_H2O_Chapman_Enskog_soll = 0.81576e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_H2_H2O_Fuller_soll =  0.96408e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_H2_H2O_exp =  0.927e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_H2_H2O_diff_Fuller = (D_H2_H2O_Fuller - D_H2_H2O_exp)/D_H2_H2O_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_H2_H2O_diff_Chapman_Enskog = (D_H2_H2O_Chapman_Enskog - D_H2_H2O_exp)/D_H2_H2O_exp*100;

  Modelica.Units.SI.Temperature T_H2_H2O = 307;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_N2,
    7,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_N2,
    7,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_Chapman_Enskog_soll = 0.73435e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_Fuller_soll = 0.76527e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_exp = 0.773e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_diff_Fuller = (D_H2_N2_Fuller - D_H2_N2_exp)/D_H2_N2_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_diff_Chapman_Enskog = (D_H2_N2_Chapman_Enskog - D_H2_N2_exp)/D_H2_N2_exp*100;

  Modelica.Units.SI.Temperature T_H2_N2 = 294;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_1_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_N2_1,
    7,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_1_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_N2_1,
    7,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_1_Chapman_Enskog_soll = 2.25308e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_1_Fuller_soll = 2.47349e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_1_exp = 2.449e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_1_diff_Fuller = (D_H2_N2_1_Fuller - D_H2_N2_1_exp)/D_H2_N2_1_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_1_diff_Chapman_Enskog = (D_H2_N2_1_Chapman_Enskog - D_H2_N2_1_exp)/D_H2_N2_1_exp*100;

  Modelica.Units.SI.Temperature T_H2_N2_1 = 573;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_2_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_N2_2,
    7,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_2_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_H2_N2_2,
    7,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer,
    idxVector);

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_2_exp = 0.674e-4;// [Bird]

  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_2_diff_Fuller = (D_H2_N2_2_Fuller - D_H2_N2_2_exp)/D_H2_N2_2_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_H2_N2_2_diff_Chapman_Enskog = (D_H2_N2_2_Chapman_Enskog - D_H2_N2_2_exp)/D_H2_N2_2_exp*100;

  Modelica.Units.SI.Temperature T_H2_N2_2 = 273;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_1_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_Ar_H2_1,
    4,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_1_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_Ar_H2_1,
    4,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_1_Chapman_Enskog_soll = 0.7644e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_1_Fuller_soll = 0.8064e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_1_exp = 0.84e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_1_diff_Fuller = (D_Ar_H2_1_Fuller - D_Ar_H2_1_exp)/D_Ar_H2_1_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_1_diff_Chapman_Enskog = (D_Ar_H2_1_Chapman_Enskog - D_Ar_H2_1_exp)/D_Ar_H2_1_exp*100;

  Modelica.Units.SI.Temperature T_Ar_H2_1 = 295;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_2_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_Ar_H2_2,
    4,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_2_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_Ar_H2_2,
    4,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_2_Chapman_Enskog_soll = 2.7625e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_2_Fuller_soll = 3.0225e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_2_exp = 3.25e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_2_diff_Fuller = (D_Ar_H2_2_Fuller - D_Ar_H2_2_exp)/D_Ar_H2_2_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_Ar_H2_2_diff_Chapman_Enskog = (D_Ar_H2_2_Chapman_Enskog - D_Ar_H2_2_exp)/D_Ar_H2_2_exp*100;

  Modelica.Units.SI.Temperature T_Ar_H2_2 = 628;// [Poling2020]

    //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_1_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_NH3_H2_1,
    5,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_1_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_NH3_H2_1,
    5,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_1_Chapman_Enskog_soll =  0.5974e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_1_Fuller_soll = 0.6206e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_1_exp = 0.58e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_1_diff_Fuller = (D_NH3_H2_1_Fuller - D_NH3_H2_1_exp)/D_NH3_H2_1_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_1_diff_Chapman_Enskog = (D_NH3_H2_1_Chapman_Enskog - D_NH3_H2_1_exp)/D_NH3_H2_1_exp*100;

  Modelica.Units.SI.Temperature T_NH3_H2_1 = 263;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_2_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_NH3_H2_2,
    5,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_2_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_NH3_H2_2,
    5,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_2_Chapman_Enskog_soll = 1.0656e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_2_Fuller_soll = 1.0656e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_2_exp = 1.11e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_2_diff_Fuller = (D_NH3_H2_2_Fuller - D_NH3_H2_2_exp)/D_NH3_H2_2_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_2_diff_Chapman_Enskog = (D_NH3_H2_2_Chapman_Enskog - D_NH3_H2_2_exp)/D_NH3_H2_2_exp*100;

  Modelica.Units.SI.Temperature T_NH3_H2_2 = 358;// [Poling2020]

  //********************************************************//

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_3_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_NH3_H2_3,
    5,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_3_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    100000,
    T_NH3_H2_3,
    5,
    3,TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gasPointer2,
    idxVector2);

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_3_Chapman_Enskog_soll = 1.7766e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_3_Fuller_soll = 1.7199e-4;// [Poling2020]
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_3_exp = 1.89e-4;// [Poling2020]

  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_3_diff_Fuller = (D_NH3_H2_3_Fuller - D_NH3_H2_3_exp)/D_NH3_H2_3_exp*100;
  Modelica.Units.SI.DiffusionCoefficient D_NH3_H2_3_diff_Chapman_Enskog = (D_NH3_H2_3_Chapman_Enskog - D_NH3_H2_3_exp)/D_NH3_H2_3_exp*100;

  Modelica.Units.SI.Temperature T_NH3_H2_3 = 473;// [Poling2020]

  //********************************************************//

  // Collision Integrals for diffusity
  Real fOmegax[:](each unit="1") = {0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1,1.05,1.1,1.15,1.2,1.25,1.3,
    1.35,1.4,1.45,1.5,1.55,1.6,1.65,1.7,1.75,1.8,1.85,1.9,1.95,2,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3,3.1,3.2,3.3,3.4,3.5,
    3.6,3.7,3.8,3.9,4,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5,6,7,8,9,10,12,14,16,18,20,25,30,35,40,50,75,100}; //[Bird2007]
  Real fOmegay[:](each unit="1") = {2.649,2.468,2.314,2.182,2.066,1.965,1.877,1.799,1.729,1.667,1.612,1.562,1.517,1.477,1.44,
    1.406,1.375,1.347,1.32,1.296,1.274,1.253,1.234,1.216,1.199,1.183,1.168,1.154,1.141,1.128,1.117,1.105,1.095,1.085,1.075,
    1.058,1.042,1.027,1.013,1.0006,0.989,0.9782,0.9682,0.9588,0.95,0.9418,0.934,0.9267,0.9197,0.9131,0.9068,0.9008,0.8952,
    0.8897,0.8845,0.8796,0.8748,0.8703,0.8659,0.8617,0.8576,0.8537,0.8499,0.8463,0.8428,0.8129,0.7898,0.7711,0.7555,0.7422,
    0.7202,0.7025,0.6878,0.6751,0.664,0.6414,0.6235,0.6088,0.5964,0.5763,0.5415,0.518}; // [Bird2007]
  Real fOmegay_[size(fOmegax,1)](each unit="1");

  parameter Real A(unit="1")=1.06036; // [Bird2007] and [Poling2020]
  parameter Real B(unit="1")=0.15610; // [Bird2007] and [Poling2020]
  parameter Real C(unit="1")=0.19300; // [Bird2007] and [Poling2020]
  parameter Real D(unit="1")=0.47635; // [Bird2007] and [Poling2020]
  parameter Real E(unit="1")=1.03587; // [Bird2007] and [Poling2020]
  parameter Real F(unit="1")=1.52996; // [Bird2007] and [Poling2020]
  parameter Real G(unit="1")=1.76474; // [Bird2007] and [Poling2020]
  parameter Real H(unit="1")=3.89411; // [Bird2007] and [Poling2020]

  //********************************************************//
  // Collision integral test for H2O and H2

  Modelica.Units.SI.Temperature T = 307;
  Modelica.Units.SI.Length sigma_i = 2.641e-10  "Molecular radius i";
  Modelica.Units.SI.Length sigma_j = 2.827e-10  "Molecular radius j";
  Modelica.Units.SI.Energy epsilon_i = 809.1*Modelica.Constants.k "Lennard-Jones potential";
  Modelica.Units.SI.Energy epsilon_j = 59.4*Modelica.Constants.k "Lennard-Jones potential";
  Modelica.Units.SI.Length sigma_ij "Molecular radius";
  Modelica.Units.SI.Energy epsilon_ij "Lennard-Jones potential";
  Real omega_ij(unit="1") "Collision integral";
  Real omega_ij_(unit="1") "Collision integral";
  Real fOmega(unit="1");

equation
  sigma_ij = 0.5*(sigma_i + sigma_j);
  epsilon_ij = (epsilon_i*epsilon_j)^(1/2);
  fOmega = Modelica.Constants.k*T/epsilon_ij;
  omega_ij_ = Modelica.Math.Vectors.interpolate( fOmegax,  fOmegay, fOmega); // Bird
  omega_ij = A/(fOmega^B) + C/exp(D*fOmega) + E/exp(F*fOmega) + G/exp(H*fOmega); //[Bird2007] and [Poling2020]

  for i in 1:size(fOmegax,1) loop
    fOmegay_[i] = A/(fOmegax[i]^B) + C/exp(D*fOmegax[i]) + E/exp(F*fOmegax[i]) + G/exp(H*fOmegax[i]);
  end for;

  annotation (experiment(
      StopTime=100,
      Interval=0.2,
      __Dymola_Algorithm="Dassl"));
end TesterBinaryDiffCoeffLit;
