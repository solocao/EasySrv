!macro preInit
	SetRegView 64
	WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "D:\EasySrv"
	WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "D:\EasySrv"
	SetRegView 32
	WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "D:\EasySrv"
	WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "D:\EasySrv"
!macroend

!macro customRemoveFiles
    ${if} ${isUpdated}
        !insertmacro quitSuccess
    ${else}
        RMDir /r $INSTDIR
    ${endIf}
!macroend