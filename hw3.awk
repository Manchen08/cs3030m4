#!/usr/bin/awk -f


BEGIN {FS = ","} 
{
	#leangth 10
	if (length($4) == 10) {
		if ( (substr($4,7,2) == 19) || (substr($4,7,2) == "20") ){
			print "19th or 20th cent date: "$4
		}
	}
}
