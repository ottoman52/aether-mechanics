@echo off
REM Compile every .tex file in ..\TeX to PDF.
REM Run from anywhere; this script cd's into ..\TeX (relative to its own location).
REM Final PDFs are placed in the aether-mechanics root (parent of TeX).
REM
REM Pass 1: generate .aux files for all papers
REM Pass 2: resolve cross-paper references via xr-hyper
REM Pass 3: finalize all internal references

cd /d "%~dp0..\TeX"

REM Safety check: at least one .tex file present
dir /b *.tex >nul 2>&1
if errorlevel 1 (
    echo ERROR: No .tex files found in %cd%
    pause
    exit /b 1
)

echo ============================================================
echo Pass 1 of 3: Generating .aux files...
echo ============================================================
call :compile_pass
echo.
echo ============================================================
echo Pass 2 of 3: Resolving cross-paper references...
echo ============================================================
call :compile_pass
echo.
echo ============================================================
echo Pass 3 of 3: Finalizing...
echo ============================================================
call :compile_pass

echo.
echo ============================================================
echo Moving PDFs to aether-mechanics root...
echo ============================================================
for %%F in (*.pdf) do call :move_pdf "%%F"

REM Clean up: ONLY delete .log .out .toc files (not .tex, .aux, or .pdf)
echo.
echo Cleaning up .log .out .toc files...
del /Q *.log 2>nul
del /Q *.out 2>nul
del /Q *.toc 2>nul

echo.
echo Done! PDFs are in the aether-mechanics root.
pause
exit /b 0

:compile_pass
for %%F in (*.tex) do call :compile_one "%%F"
goto :eof

:compile_one
pdflatex -interaction=nonstopmode "%~1" >nul 2>&1
goto :eof

:move_pdf
if not exist "%~1" goto :eof
move /Y "%~1" "..\%~1" >nul
echo   Moved %~1
goto :eof
