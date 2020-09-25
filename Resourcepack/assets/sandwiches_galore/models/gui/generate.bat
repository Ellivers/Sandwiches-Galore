@echo off
set number=1
:loop
echo {"parent":"item/generated","textures":{"layer0":"sandwiches_galore:gui/cog_%number%"}}>>cog_%number%.json
set /a number=%number%+1
if not %number% GTR 16 goto loop