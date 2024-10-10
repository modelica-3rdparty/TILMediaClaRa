within TILMedia.Internals;
function redirectModelicaFormatMessage
  input Real y=0;
  //protected
  output Integer x;
  external "C" x = TILMedia_redirectModelicaFormatMessage_wrapper() annotation(__iti_dllNoExport = true, Library="TILMedia182ClaRa",
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
#ifndef TILMEDIAMODELICAFORMATMESSAGE
#define TILMEDIAMODELICAFORMATMESSAGE
#include \"ModelicaUtilities.h\"
#if defined(_JMI_GLOBAL_H) || defined(WSM_VERSION) || defined(DYMOLA_STATIC) || (defined(ITI_CRT_INCLUDE) && !defined(ITI_COMP_SIM)) || defined(OPENMODELICA_H_)
#ifndef _WIN32
#define TILMEDIAMODELICAFORMATMESSAGE_CC
#else
#define TILMEDIAMODELICAFORMATMESSAGE_CC __stdcall
#endif
int TILMedia_redirectModelicaFormatMessage(int(TILMEDIAMODELICAFORMATMESSAGE_CC* formatMessage)(const char* _Format, ...));
int TILMedia_redirectModelicaFormatError(int(TILMEDIAMODELICAFORMATMESSAGE_CC* formatMessage)(const char* _Format, ...));
int TILMedia_redirectCustomUserErrorFunction(int(TILMEDIAMODELICAFORMATMESSAGE_CC* customFunction)(const char*, int, void*), void* messageUserData);
#if defined(DYMOLA_STATIC)
int TILMEDIAMODELICAFORMATMESSAGE_CC TILMedia_DymosimErrorLevWrapper(const char* message, int level, void* messageUserData) {
    return (int) DymosimErrorLev(message, level >= 5? 2 : 1);
}
#endif
int TILMedia_redirectModelicaFormatMessage_wrapper(void) {
    TILMedia_redirectModelicaFormatMessage((int(TILMEDIAMODELICAFORMATMESSAGE_CC*)(const char* _Format, ...))ModelicaFormatMessage);
    TILMedia_redirectModelicaFormatError((int(TILMEDIAMODELICAFORMATMESSAGE_CC*)(const char* _Format, ...))ModelicaFormatError);
#if defined(DYMOLA_STATIC)
    TILMedia_redirectCustomUserErrorFunction(TILMedia_DymosimErrorLevWrapper, NULL);
#endif
    return 0;
}
#endif
#else
int TILMedia_redirectModelicaFormatMessage_wrapper(void);
#endif
");
annotation(Inline=false, LateInline=true);
end redirectModelicaFormatMessage;
