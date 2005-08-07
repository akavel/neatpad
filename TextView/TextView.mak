# Microsoft Developer Studio Generated NMAKE File, Based on TextView.dsp
!IF "$(CFG)" == ""
CFG=TextView - Win32 Debug
!MESSAGE No configuration specified. Defaulting to TextView - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "TextView - Win32 Release" && "$(CFG)" != "TextView - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "TextView.mak" CFG="TextView - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "TextView - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "TextView - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "TextView - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\TextView.lib" "$(OUTDIR)\TextView.bsc"


CLEAN :
	-@erase "$(INTDIR)\TextDocument.obj"
	-@erase "$(INTDIR)\TextDocument.sbr"
	-@erase "$(INTDIR)\TextView.obj"
	-@erase "$(INTDIR)\TextView.sbr"
	-@erase "$(INTDIR)\TextViewFile.obj"
	-@erase "$(INTDIR)\TextViewFile.sbr"
	-@erase "$(INTDIR)\TextViewFont.obj"
	-@erase "$(INTDIR)\TextViewFont.sbr"
	-@erase "$(INTDIR)\TextViewMouse.obj"
	-@erase "$(INTDIR)\TextViewMouse.sbr"
	-@erase "$(INTDIR)\TextViewPaint.obj"
	-@erase "$(INTDIR)\TextViewPaint.sbr"
	-@erase "$(INTDIR)\TextViewScroll.obj"
	-@erase "$(INTDIR)\TextViewScroll.sbr"
	-@erase "$(INTDIR)\Trace.obj"
	-@erase "$(INTDIR)\Trace.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\TextView.bsc"
	-@erase "$(OUTDIR)\TextView.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O1 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\TextView.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\TextView.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\TextDocument.sbr" \
	"$(INTDIR)\TextView.sbr" \
	"$(INTDIR)\TextViewFile.sbr" \
	"$(INTDIR)\TextViewFont.sbr" \
	"$(INTDIR)\TextViewMouse.sbr" \
	"$(INTDIR)\TextViewPaint.sbr" \
	"$(INTDIR)\TextViewScroll.sbr" \
	"$(INTDIR)\Trace.sbr"

"$(OUTDIR)\TextView.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\TextView.lib" 
LIB32_OBJS= \
	"$(INTDIR)\TextDocument.obj" \
	"$(INTDIR)\TextView.obj" \
	"$(INTDIR)\TextViewFile.obj" \
	"$(INTDIR)\TextViewFont.obj" \
	"$(INTDIR)\TextViewMouse.obj" \
	"$(INTDIR)\TextViewPaint.obj" \
	"$(INTDIR)\TextViewScroll.obj" \
	"$(INTDIR)\Trace.obj"

"$(OUTDIR)\TextView.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "TextView - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\TextView.lib" "$(OUTDIR)\TextView.bsc"


CLEAN :
	-@erase "$(INTDIR)\TextDocument.obj"
	-@erase "$(INTDIR)\TextDocument.sbr"
	-@erase "$(INTDIR)\TextView.obj"
	-@erase "$(INTDIR)\TextView.sbr"
	-@erase "$(INTDIR)\TextViewFile.obj"
	-@erase "$(INTDIR)\TextViewFile.sbr"
	-@erase "$(INTDIR)\TextViewFont.obj"
	-@erase "$(INTDIR)\TextViewFont.sbr"
	-@erase "$(INTDIR)\TextViewMouse.obj"
	-@erase "$(INTDIR)\TextViewMouse.sbr"
	-@erase "$(INTDIR)\TextViewPaint.obj"
	-@erase "$(INTDIR)\TextViewPaint.sbr"
	-@erase "$(INTDIR)\TextViewScroll.obj"
	-@erase "$(INTDIR)\TextViewScroll.sbr"
	-@erase "$(INTDIR)\Trace.obj"
	-@erase "$(INTDIR)\Trace.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\TextView.bsc"
	-@erase "$(OUTDIR)\TextView.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\TextView.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\TextView.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\TextDocument.sbr" \
	"$(INTDIR)\TextView.sbr" \
	"$(INTDIR)\TextViewFile.sbr" \
	"$(INTDIR)\TextViewFont.sbr" \
	"$(INTDIR)\TextViewMouse.sbr" \
	"$(INTDIR)\TextViewPaint.sbr" \
	"$(INTDIR)\TextViewScroll.sbr" \
	"$(INTDIR)\Trace.sbr"

"$(OUTDIR)\TextView.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\TextView.lib" 
LIB32_OBJS= \
	"$(INTDIR)\TextDocument.obj" \
	"$(INTDIR)\TextView.obj" \
	"$(INTDIR)\TextViewFile.obj" \
	"$(INTDIR)\TextViewFont.obj" \
	"$(INTDIR)\TextViewMouse.obj" \
	"$(INTDIR)\TextViewPaint.obj" \
	"$(INTDIR)\TextViewScroll.obj" \
	"$(INTDIR)\Trace.obj"

"$(OUTDIR)\TextView.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("TextView.dep")
!INCLUDE "TextView.dep"
!ELSE 
!MESSAGE Warning: cannot find "TextView.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "TextView - Win32 Release" || "$(CFG)" == "TextView - Win32 Debug"
SOURCE=.\TextDocument.cpp

"$(INTDIR)\TextDocument.obj"	"$(INTDIR)\TextDocument.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\TextView.cpp

"$(INTDIR)\TextView.obj"	"$(INTDIR)\TextView.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\TextViewFile.cpp

"$(INTDIR)\TextViewFile.obj"	"$(INTDIR)\TextViewFile.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\TextViewFont.cpp

"$(INTDIR)\TextViewFont.obj"	"$(INTDIR)\TextViewFont.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\TextViewMouse.cpp

"$(INTDIR)\TextViewMouse.obj"	"$(INTDIR)\TextViewMouse.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\TextViewPaint.cpp

"$(INTDIR)\TextViewPaint.obj"	"$(INTDIR)\TextViewPaint.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=.\TextViewScroll.cpp

"$(INTDIR)\TextViewScroll.obj"	"$(INTDIR)\TextViewScroll.sbr" : $(SOURCE) "$(INTDIR)"


SOURCE=..\..\..\common\Trace.c

"$(INTDIR)\Trace.obj"	"$(INTDIR)\Trace.sbr" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

