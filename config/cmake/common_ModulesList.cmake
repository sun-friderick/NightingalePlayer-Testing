########################################################################################
######################             配置包含的库文件                 ####################
########################################################################################
set (Module_ffmpeg_Version      "0.8.15"    CACHE STRING    "ffmpeg version .")
set (Module_SDL2_Version        "2.0.3"     CACHE STRING    "SDL2 version .")




########################################################################################
####################        一般情况下所 必须 包含的模块组件         ###################
########################################################################################
option  (COMPONENT_player                   "Enable player component."          ON)
option  (COMPONENT_views                    "Enable views component."           ON)
option  (COMPONENT_utils                    "Enable utils component."           ON)
option  (COMPONENT_log                      "Enable log component."             ON)
option  (COMPONENT_functions_statistics     "Enable functions_statistics."      ON)
option  (COMPONENT_stackinfo                "Enable function stackinfo."        ON)
option  (COMPONENT_debug_heap               "Enable debug heap component."      ON)
option  (COMPONENT_message                  "Enable message component"          ON)
option  (COMPONENT_thread                   "Enable thread component"           ON)
option  (COMPONENT_monitor                  "Enable monitor component"          ON)
option  (COMPONENT_settings                 "Enable settings component"         ON)




########################################################################################
##################               配置所包含的功能模块                 ##################
########################################################################################
option  (MODULE_base64              "Enable base64 module"                     OFF)
option  (MODULE_jsoncpp             "Enable json module"                       ON)
option  (MODULE_ini-parser          "Enable ini-parser module"                 ON)
option  (MODULE_xml                 "Enable xml module"                        ON)
option  (MODULE_sqlite              "Enable sqlite3 module"                    ON)
option  (MODULE_ftpserver           "Enable monitor ftp server module"         ON)
option  (MODULE_ftpclient           "Enable monitor ftp client module"         ON)
option  (MODULE_modifykeeping       "Enable modify record keeping module"      ON)
option  (MODULE_gif                 "Enable views gif module"                  ON)
option  (MODULE_tinyjpeg            "Enable tiny jpeg module"                  ON)
option  (MODULE_lodepng             "Enable lodepng module"                    ON)
option  (MODULE_easybmp             "Enable easybmp module"                    ON)
option  (MODULE_system_monitor      "Enable system monitor module"             ON)


#option  (MODULE_                         "Enable xml"                        OFF)



########################################################################################
##################            功能模块 or 组件 测试标志位             ##################
########################################################################################
option  (TEST_MODULE_FLAG                   "Enable module test"                ON)









