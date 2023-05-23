# -----------------------------------------------------------------------------
#
#   Copyright (c) Charles Carley.
#
#   This software is provided 'as-is', without any express or implied
# warranty. In no event will the authors be held liable for any damages
# arising from the use of this software.
#
#   Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not
#    claim that you wrote the original software. If you use this software
#    in a product, an acknowledgment in the product documentation would be
#    appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be
#    misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.
# ------------------------------------------------------------------------------
include(GitUpdate)
if (NOT GitUpdate_SUCCESS)
    return()
endif()

include(StaticRuntime)
include(GTestUtils)
include(ExternalTarget)
include(ConfigureQt)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY AUTOGEN_TARGETS_FOLDER "CMakePredefinedTargets/Qt")
set_property(GLOBAL PROPERTY AUTOGEN_SOURCE_GROUP   "Generated/Qt")

option(QtTemplate_BUILD_TEST          "Build the unit test program." ON)
option(QtTemplate_AUTO_RUN_TEST       "Automatically run the test program." ON)

# can cause isuses with std::string, so you 
# have to force the dll dependency
# on the final executable
set_dynamic_runtime()

DefineExternalTargetEx(
    Utils Extern
    ${QtTemplate_SOURCE_DIR}/Internal/Utils 
    ${QtTemplate_SOURCE_DIR}/Internal/Utils
    ${QtTemplate_BUILD_TEST}
    ${QtTemplate_AUTO_RUN_TEST}
)

DefineExternalTargetEx(
    View Extern
    ${QtTemplate_SOURCE_DIR}/Internal/View 
    ${QtTemplate_SOURCE_DIR}/Internal/View
    ${QtTemplate_BUILD_TEST}
    ${QtTemplate_AUTO_RUN_TEST}
)

DefineExternalTargetEx(
    Thread Extern
    ${QtTemplate_SOURCE_DIR}/Internal/Thread 
    ${QtTemplate_SOURCE_DIR}/Internal/Thread
    ${QtTemplate_BUILD_TEST}
    ${QtTemplate_AUTO_RUN_TEST}
)

configure_gtest(${QtTemplate_SOURCE_DIR}/Test/googletest 
                ${QtTemplate_SOURCE_DIR}/Test/googletest/googletest/include)

if (WIN32)
    configure_qt_windows(Core Widgets Gui Test)
    qt_standard_project_setup()
else()
    configure_qt_linux(Core Widgets Gui Test)
endif()
    
            
set(Configure_SUCCEEDED TRUE)