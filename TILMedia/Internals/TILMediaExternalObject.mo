within TILMedia.Internals;
class TILMediaExternalObject
  extends ExternalObject;
  function constructor "get memory"
    input String objectType;
    input String mediumName;
    input Integer flags;
    input Real[:] xi;
    input Integer nc;
    input Integer condensingIndex;
    input String instanceName;
    output TILMediaExternalObject externalObject;
  protected
    Integer nc_propertyCalculation=1;
  external "C" externalObject = TILMedia_createExternalObject(
          objectType,
          mediumName,
          flags,
          xi,
          nc,
          condensingIndex,
          instanceName) annotation (
      __iti_dllNoExport=true,
      Include="
/* uncomment for source code version
#ifndef TILMEDIA_REAL_TIME
#define TILMEDIA_REAL_TIME
#define TILMEDIA_STATIC_LIBRARY
#if defined(FMU_SOURCE_CODE_EXPORT) && defined(DYMOLA_STATIC)
#include \"include/TILMediaTotal.c\"
#else
#include \"TILMediaTotal.c\"
#endif
#endif
*/
#ifndef TILMEDIAEXTERNALOBJECTCONSTRUCTOR
#define TILMEDIAEXTERNALOBJECTCONSTRUCTOR
#include \"ModelicaUtilities.h\"
#if defined(_JMI_GLOBAL_H) || defined(WSM_VERSION) || defined(DYMOLA_STATIC) || (defined(ITI_CRT_INCLUDE) && !defined(ITI_COMP_SIM)) || defined(OPENMODELICA_H_)
#ifndef _WIN32
#define TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC
#else
#define TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC __stdcall
#endif
void* TILMedia_createExternalObject_errorInterface(
    const char* objectType,
    const char* mixtureName,
    int flags,
    double* xi,
    int _nc,
    int condensingIndex,
    const char* instanceName,
    int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC* formatMessage)(const char* _Format, ...),
    int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC* formatError)(const char* _Format, ...),
    int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC* customFunction)(const char*, int, void*),
    void* messageUserData);
#if defined(DYMOLA_STATIC)
int TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC TILMedia_DymosimErrorLevWrapper_externalObject(const char* message, int level, void* messageUserData) {
    return (int) DymosimErrorLev(message, level >= 5? 2 : 1);
}
#endif
void* TILMedia_createExternalObject(const char* objectType, const char* mixtureName, int flags, double* xi, int _nc, int condensingIndex, const char* instanceName) {
#if defined(DYMOLA_STATIC)
    return TILMedia_createExternalObject_errorInterface(
      objectType,
      mixtureName,
      flags,
      xi,
      _nc,
      condensingIndex,
      instanceName,
      (int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC*)(const char* _Format, ...))ModelicaFormatMessage,
      (int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC*)(const char* _Format, ...))ModelicaFormatError,
      (int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC*)(const char*, int, void*))TILMedia_DymosimErrorLevWrapper_externalObject,
      NULL);
#else
    return TILMedia_createExternalObject_errorInterface(objectType,
      mixtureName,
      flags,
      xi,
      _nc,
      condensingIndex,
      instanceName,
      (int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC*)(const char* _Format, ...))ModelicaFormatMessage,
      (int(TILMEDIAEXTERNALOBJECTCONSTRUCTOR_CC*)(const char* _Format, ...))ModelicaFormatError,
      NULL,
      NULL);
#endif
}
#endif
#else
void* TILMedia_createExternalObject(const char* objectType, const char* mixtureName, int flags, double* xi, int _nc, int condensingIndex, const char* instanceName);
#endif
",    Library="TILMedia190ClaRa");
  end constructor;

  function destructor "free memory"
    input TILMediaExternalObject externalObject;
  external "C" TILMedia_destroyExternalObject(externalObject) annotation (
      __iti_dllNoExport=true,
      Include="void TILMedia_destroyExternalObject(void*);",
      Library="TILMedia190ClaRa");
  end destructor;
end TILMediaExternalObject;
