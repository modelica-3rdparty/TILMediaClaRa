within TILMedia.Internals;
class TableObject
   extends ExternalObject;
   function constructor "get memory"
      input String value1;
      input String value2;
    output TableObject pointer;
    external "C" pointer = TILMedia_allocateTable(value1, value2)
      annotation(__iti_dllNoExport = true,Include="
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
#ifndef TILMEDIATABLEALLOCATOR
#define TILMEDIATABLEALLOCATOR
#include \"ModelicaUtilities.h\"
#if defined(_JMI_GLOBAL_H) || defined(WSM_VERSION) || defined(DYMOLA_STATIC) || (defined(ITI_CRT_INCLUDE) && !defined(ITI_COMP_SIM)) || defined(OPENMODELICA_H_)
#ifndef _WIN32
#define TILMEDIATABLEALLOCATOR_CC
#else
#define TILMEDIATABLEALLOCATOR_CC __stdcall
#endif
void* TILMedia_allocateTable_errorInterface(
    const char* table,
    const char* parameters,
    int(TILMEDIATABLEALLOCATOR_CC* formatMessage)(const char* _Format, ...),
    int(TILMEDIATABLEALLOCATOR_CC* formatError)(const char* _Format, ...),
    int(TILMEDIATABLEALLOCATOR_CC* customFunction)(const char*, int, void*),
    void* messageUserData);
#if defined(DYMOLA_STATIC)
int TILMEDIATABLEALLOCATOR_CC TILMedia_DymosimErrorLevWrapper_tableObject(const char* message, int level, void* messageUserData) {
  return (int) DymosimErrorLev(message, level >= 5? 2 : 1);
};
#endif
void* TILMedia_allocateTable(const char* table, const char* parameters){
#if defined(DYMOLA_STATIC)
    return TILMedia_allocateTable_errorInterface(
      table,
      parameters,
      (int(TILMEDIATABLEALLOCATOR_CC*)(const char* _Format, ...)) ModelicaFormatMessage,
      (int(TILMEDIATABLEALLOCATOR_CC*)(const char* _Format, ...)) ModelicaFormatError,
      (int(TILMEDIATABLEALLOCATOR_CC*)(const char*, int, void*)) TILMedia_DymosimErrorLevWrapper_tableObject,
      NULL);
#else
    return TILMedia_allocateTable_errorInterface(
      table,
      parameters,
      &ModelicaFormatMessage,
      &ModelicaFormatError,
      NULL,
      NULL);
#endif
}
#endif
#else
void* TILMedia_allocateTable(const char* table, const char* parameters);
#endif
",    Library="TILMedia190ClaRa");
   end constructor;

   function destructor "free memory"
    input TableObject pointer;
    external "C" TILMedia_freeTable(pointer)
              annotation(__iti_dllNoExport = true,Include="void TILMedia_freeTable(void*);",Library="TILMedia190ClaRa");
   end destructor;

  annotation(Protection(access=Access.documentation));

end TableObject;
