# Shell script to create basic files for a c++ program

clear

main_file=main.cpp

echo "Generating basic files for your simple C++ program."

echo "Enter the name of program"
read program_name

#check if directory already exists
if [ -d $program_name ]; then
echo "Error: Directory exists, Directory not created"
else

mkdir $program_name
cd $program_name

#----------------------------------------------------------------
#                       Header file
#----------------------------------------------------------------

touch $program_name.h
echo "// File contains class and variables declaration"\
    " and header files\n\n"\
    "#include <iostream> \n"\
    "using namespace std; \n\n"\
    "//Class declaration\n"\
    "class $program_name \n"\
    "{ \n"\
    "\tprivate: \n"\
    "\t\t// Data members\n\n"\
    "\tpublic: \n"\
    "\t\t// Member functions\n"\
    "}; \n"\
    > $program_name.h

#----------------------------------------------------------------
#                   Class members definition file
#----------------------------------------------------------------

touch $program_name.cc
echo "// File contains class and variables definition \n\n"\
    "#include \"$program_name.h\" \n"\
    > $program_name.cc

#----------------------------------------------------------------
#                       Main functiin file
#----------------------------------------------------------------

touch $main_file
echo "// File contains main function \n\n"\
    "#include \"$program_name.h\" \n\n"\
    "int main() \n"\
    "{ \n" \
    "\t// Create class objects  \n"\
    "\t$program_name ob; \n\n"\
    "} \n"\
     > $main_file
     
echo "\n"Your three basic files are created in $program_name.

fi