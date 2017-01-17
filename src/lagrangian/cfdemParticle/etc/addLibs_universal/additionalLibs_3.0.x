# Specify additional include and library paths, as well as libraries for the compilation
#
#CFDEM_ADD_INC = \
#CFDEM_ADD_LIB_PATHS = \
#CFDEM_ADD_LIBS = \

# additional static libraries to be linked to lagrangian library
CFDEM_ADD_STATICLIBS = \
-lmpi_cxx \

# If you don't want VTK comment the following line and use the appropriate LIGGGHTS Makefile
# via setting CFDEM_LIGGGHTS_MAKEFILE_NAME that does not contain VTK.
include $(CFDEM_ADD_LIBS_DIR)/additionalLibs_vtk
include $(CFDEM_ADD_LIBS_DIR)/additionalLibs_superquadric


# If you don't want ParSCale comment the following line
#include $(CFDEM_ADD_LIBS_DIR)/additionalLibs_ParScale

#################################################################
## SETTINGS FOR 3.0.x                                          ##
#################################################################
#----------------------------------------------------------------
# incompressible turbulence model settings
#----------------------------------------------------------------
# paths for incompressible turbulence models to use
CFDEM_ADD_INCOMPTURBMOD_PATHS = \
-I$(LIB_SRC)/TurbulenceModels/turbulenceModels/lnInclude \
-I$(LIB_SRC)/TurbulenceModels/incompressible/lnInclude \
-I$(LIB_SRC)/fvOptions/lnInclude \
###-I$(LIB_SRC)/thermophysicalModels/radiation/lnInclude \

# libs for turbulence models to use
CFDEM_ADD_INCOMPTURBMOD_LIBS = \
-lturbulenceModels \
-lincompressibleTurbulenceModels \
-lfvOptions \

#----------------------------------------------------------------
# compressible turbulence model settings
#----------------------------------------------------------------
# paths for compressible turbulence models to use
CFDEM_ADD_COMPTURBMOD_PATHS = \
-I$(LIB_SRC)/TurbulenceModels/turbulenceModels/lnInclude \
-I$(LIB_SRC)/TurbulenceModels/compressible/lnInclude \
-I$(LIB_SRC)/transportModels/compressible/lnInclude \
-I$(LIB_SRC)/thermophysicalModels/radiation/lnInclude \

# libs for turbulence models to use
CFDEM_ADD_COMPTURBMOD_LIBS = \
-lturbulenceModels \
-lcompressibleTurbulenceModels \
#################################################################
