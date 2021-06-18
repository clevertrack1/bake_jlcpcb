# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_1812_4532Metric\""

	//LCSC Part numbers

R1812["1"] = "C42963"
R1812["1.2"] = "C21617"
R1812["10"] = "C42962"
R1812["100K"] = "C73169"
R1812["15K"] = "C25713"
R1812["1K"] = "C21618"
R1812["2K"] = "C21619"
R1812["300K"] = "C65306"
R1812["330"] = "C270975"
R1812["470K"] = "C80761"
R1812["5.1"] = "C84642"
R1812["510"] = "C124344"
R1812["56"] = "C107596"
R1812["910K"] = "C96184"

}

function JLCPCB_output( ) {
	if (JLCPCB == 0 ) return
	
	if ( fp ~ FP_R ){
		val = match( value, /[^"]+[^"]/)
		found = "#error"
		if (val) {
			value = toupper(substr(value, RSTART, RLENGTH))
			val = match( value, /[MKR][0-9]+/)
			if (val){
				if (RLENGTH == 1){
					found = substr(value,1, RSTART-1) substr(value,RSTART,1)
				} else {
					found = substr(value,1, RSTART-1) "." substr(value,RSTART+1) substr(value,RSTART,1)
				}	
				value = found
			}
			val = match( value, /R/)
			if (val){
				value = substr(value,1, RSTART-1)
			}
		}
		lcsc = value
		f_field += 1
		if (value in R1210){
			lcsc = R1210[value]
		}
		print "F " f_field " "" lcsc "\" " orientation " " posx " " posy " " size " "flags " " justify " " style " \"LCSC\"";
		fp =""
	}
	JLCPCB = 0
}


$1 ~ /\$Comp/    { Component = 1; print $0 ; next; }

$1 ~ /\$EndComp/  { 
		# add a field
		JLCPCB_output()
		Component = 0
		print $0;
		next;		
	}

    { if (Component != 1 ){
		print $0 ; 
		next; 
		}
	}

$1 ~ /L/ {
		add_lcsc = 0
		device = $2
        # name reference 
		# ($2 ~ /Device:C/)  match capacitor
		# ($2 ~ /Device:R/) match R
    }
		
$1 ~ /U/ {
        # time stamp
    }  		


$1 ~ /P/ {
        # position
		posx = $2; posy = $3;
    }

$1 ~ /F/ {
		JLCPCB = 1;
		f_field = $2
        if ($2 ~ /0/) { 
			# reference, orientation, posx, posy, size, flags, hor_justify, style, <“field_name”>
			ref = $3; orientation = $4; size = $7; flags = $8 ; justify = $9 ; style = $10
		}			
		if ($2 ~ /1/) { 
			# value, orientation, posx, posy, size, flags, hor_justify, style
			value = $3
		}
        if ($2 ~ /2/) { 
			# footprint, orientation, posx, posy, size, flags, hor_justify, style
			fp    = $3; 
			if (device ~ /Device:R/){ 
				if ( fp ~ "\"\""){
					fp = FP_R; 
					$3 = FP_R 
					$0 = $0
				}
				add_lcsc = 1
			}
		} 
		if ($2 ~ /3/) {  
			# datasheet, orientation, posx, posy, size, flags, hor_justify, style
		}
		if ( $11 ~ /LCSC/){	
			add_lcsc = 0
		}
    }
	
$1 !~ /F/	{
		if ( f_field != 0) {
			JLCPCB_output( )
		}
	}

	{ print $0; 
	 next;
	}