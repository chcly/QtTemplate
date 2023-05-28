include(GroupSet)
set(TargetGroup Sample)
set(TargetName SampleQtTemplate)

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


add_executable(
    ${TargetName} 
    ${TargetName_SRC}
    ${View_ICON_SRC}
)

target_link_libraries(
    ${TargetName} 
    ${QtTemplate_DEP_LIBRARY} 
    QtTemplate
)

set_target_properties(
    ${TargetName} 
    PROPERTIES FOLDER "${TargetGroup}"
)

copy_to_bin(${TargetName} ${CMAKE_SOURCE_DIR}/Bin)