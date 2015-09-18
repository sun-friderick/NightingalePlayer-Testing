########################################################################################
#############           添加所要编译的源文件.                             ############## 
########################################################################################
list( APPEND gloox_SRCS
	${CMAKE_CURRENT_SOURCE_DIR}/logUtils.c
    ${CMAKE_CURRENT_SOURCE_DIR}/UtilsInterface.c
    )


########################################################################################
#############               添加源码子目录                                ############## 
########################################################################################
add_subdirectory( gloox )
add_subdirectory( gloox-api )
add_subdirectory( tests )
add_subdirectory( examples )

MESSAGE("${CMAKE_CURRENT_SOURCE_DIR} status.")



########################################################################################
#############               设置 gloox 库版本号                         ############## 
########################################################################################
set(gloox_LIB_VERSION     "1.0.0")
set(gloox_LIB_SOVERSION   "1")



########################################################################################
#############           生成目标库文件 并 标明版本号                      ############## 
########################################################################################
IF (COMPONENT_gloox)
    #生成动态库  静态库则 STATIC  
    add_library (glooxlib SHARED      ${gloox_SRCS})  
    add_library (glooxs STATIC        ${gloox_SRCS})  
    
    # 设置依赖关系，如果当前库是最底层的共享库，则不需要设置
    add_dependencies (glooxlib  loglib )
    add_dependencies (glooxs    loglib )
    
    # 添加要链接的共享库, 库的顺序就是编译器的链接时顺序
    target_link_libraries (glooxlib  loglib )
    target_link_libraries (glooxs    loglib )
    
    # 设置版本号，SOVERSION为API版本号
    set_target_properties(glooxlib     PROPERTIES 
                            VERSION     ${gloox_LIB_VERSION} 
                            SOVERSION   ${gloox_LIB_SOVERSION} )
ELSE (COMPONENT_gloox)
    MESSAGE(STATUS "Not Include COMPONENT_gloox module.")
ENDIF (COMPONENT_gloox)


