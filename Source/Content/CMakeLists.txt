include(GroupSet)
set(TargetName QtTemplate)

set_group(
    TargetName_SRC 
    Source:*.cpp
    Header:*.h
)

include_directories(
    ${QtTemplate_INCLUDE} 
    ${Utils_INCLUDE}
    ${View_INCLUDE}
    ${Thread_INCLUDE}
)

add_library(
    ${TargetName} 
    ${TargetName_SRC}
)

target_link_libraries(
    ${TargetName} 
    ${Utils_LIBRARY}
    ${View_LIBRARY}
    ${Thread_LIBRARY}
    Qt6::Widgets
    Qt6::Core
    Qt6::Gui
)

set_target_properties(
    ${TargetName} 
    PROPERTIES FOLDER "${TargetGroup}"
)
