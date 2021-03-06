echo off
RD /S /Q ".\Archives"
rem Copying asi loader
setlocal enabledelayedexpansion
FOR /R ".\" %%F IN (*.tmp) DO (
findstr /c:"loadfromscriptsonly" "%%F" >nul 2>&1
if errorlevel 1 (
    echo String not found...
) else (
   SET filepath=%%F
   SET dll=!filepath:.tmp=.dll!
   ECHO !dll! 	
   copy "..\..\Ultimate-ASI-Loader\bin\Release\dinput8.dll" !dll!
)
)

rem Creating archives

FOR /d %%X IN (*) DO (
7za a -tzip "Archives\%%X.zip" "%%X\" -r -xr^^!Archives -x^^!*.pdb -x^^!*.db -x^^!*.ipdb -x^^!*.iobj -x^^!*.tmp
)
EXIT

7-Zip Extra
~~~~~~~~~~~
License for use and distribution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Copyright (C) 1999-2016 Igor Pavlov.

7-Zip Extra files are under the GNU LGPL license.


Notes: 
  You can use 7-Zip Extra on any computer, including a computer in a commercial 
  organization. You don't need to register or pay for 7-Zip.


GNU LGPL information
--------------------

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You can receive a copy of the GNU Lesser General Public License from 
  http://www.gnu.org/

