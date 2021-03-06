@echo off

set CONFIG_NAME=%1

rem Create the x64 subfolder:
if not exist ..\..\Build\Output\%CONFIG_NAME%\bin\x64 mkdir ..\..\Build\Output\%CONFIG_NAME%\bin\x64

rem Copy core files:
XCopy /r /d /y "..\..\Core\OpenGL\VirtualContext\Release\win64\VirtualContext.exe" "..\..\Build\Output\%CONFIG_NAME%\bin\x64\"
XCopy /r /d /y "..\..\Core\ShaderAnalysis\Windows\x86\shae.exe" "..\..\Build\Output\%CONFIG_NAME%\bin\x64\"
XCopy /r /d /y "..\..\Core\Vulkan\rev_1_0_0\Release\win64\amdspv.exe" "..\..\Build\Output\%CONFIG_NAME%\bin\x64\"
XCopy /r /d /y "..\..\Core\Vulkan\rev_1_0_0\Release\win64\spvgen.dll" "..\..\Build\Output\%CONFIG_NAME%\bin\x64\"




