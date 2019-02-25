# MPS-Updater
Updates MPS files and Titlepack.
It can also be used for creating a new instalation.

Instalation:
1. Copy "MPS_updater.bat" and the "updater.cfg" in the folder where the "ManiaPlanetServer.exe" is located
2. Instalation finished !

Configuration:
1. Open the "updater.cfg" file (Use ONLY Notepad++)
2. The config is pre configurated for Stadium TitlePack

For Example: 
If you want to update or to download a other TitlePack you only have to 
replace the filename (line 8) with one of the folowing lines: 

TRACKMANIA:
TMStadium@nadeo.Title.Pack.gbx
TMCanyon@nadeo.Title.Pack.gbx
TMValley@nadeo.Title.Pack.gbx
TMLagoon@nadeo.Title.Pack.gbx
RPG@tmrpg.Title.Pack.gbx

SHOOTMANIA:
SMStorm@nadeo.Title.Pack.gbx
SMStormSiege@nadeolabs.Title.Pack.gbx
SMStormElite@nadeolabs.Title.Pack.gbx
SMStormRoyal@nadeolabs.Title.Pack.gbx
SMStormBattle@nadeolabs.Title.Pack.gbx
SMStormWarlords@nadeolabs.Title.Pack.gbx
SMStormCombo@nadeolabs.Title.Pack.gbx
SMStormJoust@nadeolabs.Title.Pack.gbx


In Special cases:
If you want to update a non public Titlepack you have to know the link to your TitlePack
and cut it in two parts.

for example your custom link is:
https://some.thing.url/and/somthing/Some-non-Public-Title@non-public.Title.Pack.gbx

Part 1: https://some.thing.url/and/somthing/
Part 2:Some-non-Public-Title@non-public.Title.Pack.gbx

Place "Part 1" in (line 5) and "Part 2" in (line 8)

