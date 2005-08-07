# Microsoft Developer Studio Generated NMAKE File, Based on Neatpad.dsp
!IF "$(CFG)" == ""
CFG=Neatpad - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Neatpad - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Neatpad - Win32 Release" && "$(CFG)" != "Neatpad - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Neatpad.mak" CFG="Neatpad - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Neatpad - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Neatpad - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Neatpad - Win32 Release"

OUTDIR=.\..\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\..\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\Neatpad.exe" "$(OUTDIR)\Neatpad.bsc"

!ELSE 

ALL : "TextView - Win32 Release" "$(OUTDIR)\Neatpad.exe" "$(OUTDIR)\Neatpad.bsc"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"TextView - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\Neatpad.obj"
	-@erase "$(INTDIR)\Neatpad.sbr"
	-@erase "$(INTDIR)\NeatUtils.obj"
	-@erase "$(INTDIR)\NeatUtils.sbr"
	-@erase "$(INTDIR)\Options.obj"
	-@erase "$(INTDIR)\Options.sbr"
	-@erase "$(INTDIR)\OptionsDisplay.obj"
	-@erase "$(INTDIR)\OptionsDisplay.sbr"
	-@erase "$(INTDIR)\OptionsFont.obj"
	-@erase "$(INTDIR)\OptionsFont.sbr"
	-@erase "$(INTDIR)\OptionsMisc.obj"
	-@erase "$(INTDIR)\OptionsMisc.sbr"
	-@erase "$(INTDIR)\resource.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Neatpad.bsc"
	-@erase "$(OUTDIR)\Neatpad.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Neatpad.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\resource.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Neatpad.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\Neatpad.sbr" \
	"$(INTDIR)\NeatUtils.sbr" \
	"$(INTDIR)\Options.sbr" \
	"$(INTDIR)\OptionsDisplay.sbr" \
	"$(INTDIR)\OptionsFont.sbr" \
	"$(INTDIR)\OptionsMisc.sbr"

"$(OUTDIR)\Neatpad.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Neatpad.pdb" /machine:IA64 /out:"$(OUTDIR)\Neatpad.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Neatpad.obj" \
	"$(INTDIR)\NeatUtils.obj" \
	"$(INTDIR)\Options.obj" \
	"$(INTDIR)\OptionsDisplay.obj" \
	"$(INTDIR)\OptionsFont.obj" \
	"$(INTDIR)\OptionsMisc.obj" \
	"$(INTDIR)\resource.res" \
	"..\TextView\Release\TextView.lib"

"$(OUTDIR)\Neatpad.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Neatpad - Win32 Debug"

OUTDIR=.\..\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\..\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\Neatpad.exe" "$(OUTDIR)\Neatpad.bsc"

!ELSE 

ALL : "TextView - Win32 Debug" "$(OUTDIR)\Neatpad.exe" "$(OUTDIR)\Neatpad.bsc"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"TextView - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\Neatpad.obj"
	-@erase "$(INTDIR)\Neatpad.sbr"
	-@erase "$(INTDIR)\NeatUtils.obj"
	-@erase "$(INTDIR)\NeatUtils.sbr"
	-@erase "$(INTDIR)\Options.obj"
	-@erase "$(INTDIR)\Options.sbr"
	-@erase "$(INTDIR)\OptionsDisplay.obj"
	-@erase "$(INTDIR)\OptionsDisplay.sbr"
	-@erase "$(INTDIR)\OptionsFont.obj"
	-@erase "$(INTDIR)\OptionsFont.sbr"
	-@erase "$(INTDIR)\OptionsMisc.obj"
	-@erase "$(INTDIR)\OptionsMisc.sbr"
	-@erase "$(INTDIR)\resource.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Neatpad.bsc"
	-@erase "$(OUTDIR)\Neatpad.exe"
	-@erase "$(OUTDIR)\Neatpad.ilk"
	-@erase "$(OUTDIR)\Neatpad.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Neatpad.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\resource.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Neatpad.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\Neatpad.sbr" \
	"$(INTDIR)\NeatUtils.sbr" \
	"$(INTDIR)\Options.sbr" \
	"$(INTDIR)\OptionsDisplay.sbr" \
	"$(INTDIR)\OptionsFont.sbr" \
	"$(INTDIR)\OptionsMisc.sbr"

"$(OUTDIR)\Neatpad.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Neatpad.pdb" /debug /machine:IA64 /out:"$(OUTDIR)\Neatpad.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Neatpad.obj" \
	"$(INTDIR)\NeatUtils.obj" \
	"$(INTDIR)\Options.obj" \
	"$(INTDIR)\OptionsDisplay.obj" \
	"$(INTDIR)\OptionsFont.obj" \
	"$(INTDIR)\OptionsMisc.obj" \
	"$(INTDIR)\resource.res" \
	"..\TextView\Debug\TextView.lib"

"$(OUTDIR)\Neatpad.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Neatpad.dep")
!INCLUDE "Neatpad.dep"
!ELSE 
!MESSAGE Warning: cannot find "Neatpad.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Neatpad - Win32 Release" || "$(CFG)" == "Neatpad - Win32 Debug"
SOURCE=.\Neatpad.c

"$(INTDIR)\Neatpad.obj"	"$(INTDIR)\Neatpad.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\NeatUtils.c

"$(INTDIR)\NeatUtils.obj"	"$(INTDIR)\NeatUtils.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\Options.c

"$(INTDIR)\Options.obj"	"$(INTDIR)\Options.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\OptionsDisplay.c

"$(INTDIR)\OptionsDisplay.obj"	"$(INTDIR)\OptionsDisplay.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\OptionsFont.c

"$(INTDIR)\OptionsFont.obj"	"$(INTDIR)\OptionsFont.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\OptionsMisc.c

"$(INTDIR)\OptionsMisc.obj"	"$(INTDIR)\OptionsMisc.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\resource.rc

"$(INTDIR)\resource.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!IF  "$(CFG)" == "Neatpad - Win32 Release"

"TextView - Win32 Release" : 
   cd "\src\win32\Neatpad07\TextView"
   $(MAKE) /$(MAKEFLAGS) /F .\TextView.mak CFG="TextView - Win32 Release" 
   cd "..\Neatpad"

"TextView - Win32 ReleaseCLEAN" : 
   cd "\src\win32\Neatpad07\TextView"
   $(MAKE) /$(MAKEFLAGS) /F .\TextView.mak CFG="TextView - Win32 Release" RECURSE=1 CLEAN 
   cd "..\Neatpad"

!ELSEIF  "$(CFG)" == "Neatpad - Win32 Debug"

"TextView - Win32 Debug" : 
   cd "\src\win32\Neatpad07\TextView"
   $(MAKE) /$(MAKEFLAGS) /F .\TextView.mak CFG="TextView - Win32 Debug" 
   cd "..\Neatpad"

"TextView - Win32 DebugCLEAN" : 
   cd "\src\win32\Neatpad07\TextView"
   $(MAKE) /$(MAKEFLAGS) /F .\TextView.mak CFG="TextView - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\Neatpad"

!ENDIF 


!ENDIF 

