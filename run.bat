@echo off
if not exist out mkdir out
dir /s /B src\*.java > sources.txt
javac -d out @sources.txt
del sources.txt
java -cp out com.smartlms.Main
