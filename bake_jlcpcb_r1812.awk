# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_1812_4532Metric\""

	//LCSC Part numbers

R1812["0"] = "C56161"
R1812["1"] = "C42963"
R1812["1.2"] = "C21617"
R1812["1.8"] = "C25455"
R1812["1.8k"] = "C26068"
R1812["10"] = "C42962"
R1812["100k"] = "C72209"
R1812["10k"] = "C110424"
R1812["12"] = "C174699"
R1812["120k"] = "C422154"
R1812["12k"] = "C84287"
R1812["15"] = "C25454"
R1812["15k"] = "C25713"
R1812["18k"] = "C422019"
R1812["1k"] = "C21618"
R1812["2"] = "C61435"
R1812["2.7k"] = "C422118"
R1812["20"] = "C62198"
R1812["200"] = "C112150"
R1812["220"] = "C60694"
R1812["2k"] = "C21619"
R1812["3.3"] = "C61431"
R1812["3.3k"] = "C33780"
R1812["3.9k"] = "C174870"
R1812["300"] = "C109215"
R1812["300k"] = "C65306"
R1812["30k"] = "C109214"
R1812["33"] = "C174838"
R1812["330"] = "C270975"
R1812["390"] = "C56727"
R1812["390k"] = "C164857"
R1812["4.7"] = "C74570"
R1812["4.7k"] = "C26069"
R1812["43k"] = "C174766"
R1812["470k"] = "C80761"
R1812["5.1"] = "C84642"
R1812["5.1k"] = "C60766"
R1812["51"] = "C25456"
R1812["510"] = "C124344"
R1812["56"] = "C107596"
R1812["6.2"] = "C422064"
R1812["6.2k"] = "C174873"
R1812["6.8"] = "C25457"
R1812["6.8k"] = "C26070"
R1812["68k"] = "C82936"
R1812["910k"] = "C96184"
R1812["?"] = "C422159"

}

function JLCPCB_output( ) {
	if (add_lcsc == 0 ) return
	
	if ( fp ~ FP_R ){
		val = match( value, /[^"]+[^"]/)
		found = "#error"
		if (val) {
			value = substr(value, RSTART, RLENGTH)
			val = match( value, /[MkKR][0-9]+/)
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
			val = match( value, /K/)			
			if (val){
				value = tolower(value)
			}			
		}
		lcsc = value
		f_field += 1
		if (value in R1210){
			lcsc = R1210[value]
		}
		print "F " f_field " \"" lcsc "\" " orientation " " posx " " posy " " size " 0001 " justify " " style " \"LCSC\"";
		fp =""
	}
	add_lcsc = 0
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
					fp = FP_R
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
		if ( add_lcsc != 0) {
			JLCPCB_output( )
		}
	}

	{ print $0; 
	 next;
	}
