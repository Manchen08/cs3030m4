#!/usr/bin/awk -f


BEGIN {FS = ","} 
{
	#leangth 10
	if (length($4) == 10) {
		if ( (substr($4,7,2) == 19) || (substr($4,7,2) == "20") ){
			print $2 " From " $4 " to " $5
		}
	}

	if (length($4) == 9) {	
		if ( (substr($4,6,2) == 19) || (substr($4,6,2) == "20") ){
			
			print $2 " From " $4 " to " $5
		}
	}

	if (length($4) == 8) {
		if ( (substr($4,5,2) == 19) || (substr($4,5,2) == "20") ){
			
			print $2 " From " $4 " to " $5
		}
	}
}
