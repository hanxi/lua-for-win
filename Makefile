# Before run nmake, need run this vcvars64.bat
# "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\vc\Auxiliary\Build\vcvars64.bat"

# *_O is copy from src/Makefile
CORE_O= lapi.o lcode.o lctype.o ldebug.o ldo.o ldump.o lfunc.o lgc.o llex.o \
    lmem.o lobject.o lopcodes.o lparser.o lstate.o lstring.o ltable.o \
    ltm.o lundump.o lvm.o lzio.o
LIB_O=  lauxlib.o lbaselib.o lbitlib.o lcorolib.o ldblib.o liolib.o \
    lmathlib.o loslib.o lstrlib.o ltablib.o lutf8lib.o loadlib.o linit.o
BASE_O= $(CORE_O) $(LIB_O)

# for windows 
LUA_A=  lua53.dll
LUA_T=  lua.exe
LUA_O=  lua.o

LUAC_T= luac.exe
LUAC_O= luac.o

ALL_T= $(LUA_A) $(LUA_T) $(LUAC_T)

SRC_DIR=lua-5.3.4\src

LUA_INC=/I $(SRC_DIR)
INC=/I "$(INCLUDE)" $(LUA_INC)
LINK_LIB=/LIBPATH:"$(LIB)"

all: $(ALL_T)
    @del *.o
    @del *.exp
    @del luac.lib

#compile
{$(SRC_DIR)}.c.o:
    @$(CC) /nologo /MT $(INC) /Fo$@ /c -DLUA_BUILD_AS_DLL $?

# link
$(LUA_A): $(BASE_O)
    @LINK /nologo /DLL /OUT:$@ $(LINK_LIB) $?

$(LUA_T): $(LUA_O) lua53.lib
    @LINK /nologo /OUT:$@ $(LINK_LIB) $?

$(LUAC_T): $(LUAC_O) $(BASE_O)
    @LINK /nologo /OUT:$@ $(LINK_LIB) $?
    
clean:
    @del *.o
    @del *.lib
    @del *.exp
    @del *.dll
    @del *.exe
