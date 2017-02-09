#!/bin/bash - 
#===============================================================================
#
#          FILE: hw3.sh
# 
#         USAGE: ./hw3.sh 
# 
#   DESCRIPTION: 
# 
#         NOTES: ---
#        AUTHOR: Jon Wheeler (), jonathanwheeler1@weber.edu
#       CREATED: 02/09/2017 18:37
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

help()
{
	echo "Usage"
	exit 1;
}

if [[ $1 == "--help" ]]
then
	help
fi

while getops ":s:a:i:" opt
do
	case $opt in
		s) sedFile=$OPTARG
			;;
		a) awkFile=$OPTARG
			;;
		i) inFile=$OPTARG
			;;
		/?)
			help
			;;
	esac
done

if [[ -z $sedFile ]]
then
	echo "Sed file missing"
	help
fi

if [[ -z $awkFile ]]
then
	echo "Awk file missing"
	help
fi

if [[ -z $inFile ]]
	echo "inFile is missing"
	help
fi

echo "Your output file will be saved in the 20CenturyPresidents.txt file"

sed -f $sedFile $inFile | awk -f $awkFile > 20CenturyPresidents.txt

exit 0

