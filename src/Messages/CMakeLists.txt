########################################################################################
#############              ���� message ���ļ�                               ############## 
########################################################################################
LIST (APPEND message_LIB_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/logMessage.c
    ${CMAKE_CURRENT_SOURCE_DIR}/MessageQueue.c
    ${CMAKE_CURRENT_SOURCE_DIR}/MessageType.c
    ${CMAKE_CURRENT_SOURCE_DIR}/MessageInterface.c
    )



########################################################################################
#############               ���� message ��汾��                          ############## 
########################################################################################
set(message_LIB_VERSION     "1.0.0")
set(message_LIB_SOVERSION   "1")



########################################################################################
#############              ����ͷ�ļ�Ŀ¼                                 ############## 
########################################################################################
include_directories(  
    ${PROJECT_SOURCE_DIR}/includes  
    ${PROJECT_SOURCE_DIR}/Messages
)  



########################################################################################
#############               ���� ���ӿ��ļ�Ŀ¼                           ############## 
########################################################################################
link_directories(  
    /usr/local/lib   
    )  



########################################################################################
#############           ����Ŀ����ļ� �� �����汾��                      ############## 
########################################################################################
IF (COMPONENT_message)
    #���ɶ�̬��  ��̬���� STATIC  
    add_library (messagelib SHARED      ${message_LIB_SRCS})  
    add_library (messages STATIC        ${message_LIB_SRCS})  
    # ���ð汾�ţ�SOVERSIONΪAPI�汾��
    set_target_properties(messagelib   PROPERTIES 
                            VERSION ${message_LIB_VERSION} 
                            SOVERSION ${message_LIB_SOVERSION} )
ELSE (COMPONENT_message)
    MESSAGE(STATUS "Not Include message module.")
ENDIF (COMPONENT_message)



########################################################################################
#############                 ����Ŀ�������ļ�                          ############## 
########################################################################################
IF (TEST_MODULE_FLAG)
    add_executable(TestMessage.elf  messageTest.c)
    add_dependencies(TestMessage.elf    messagelib  loglib)
    target_link_libraries(TestMessage.elf   loglib  messagelib )

ELSE (TEST_MODULE_FLAG)
    MESSAGE(STATUS "Not Include jsoncpp module.")
ENDIF (TEST_MODULE_FLAG)



