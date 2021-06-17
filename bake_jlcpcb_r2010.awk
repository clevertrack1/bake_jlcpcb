# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_2010_5025Metric\""

	//LCSC Part numbers

R2010["0"] = "C270974"
R2010["0.039"] = "C270952"
R2010["0.22"] = "C146381"
R2010["0.33"] = "C64067"
R2010["0.36"] = "C92994"
R2010["0.5"] = "C60104"
R2010["0.68"] = "C146268"
R2010["1"] = "C60111"
R2010["1.1K"] = "C70993"
R2010["1.21K"] = "C191220"
R2010["1.2K"] = "C56348"
R2010["1.4K"] = "C54203"
R2010["1.5K"] = "C20374"
R2010["1.6K"] = "C54195"
R2010["1.8K"] = "C131001"
R2010["10"] = "C55022"
R2010["100"] = "C50472"
R2010["100K"] = "C179828"
R2010["10K"] = "C61618"
R2010["110"] = "C70992"
R2010["11K"] = "C70994"
R2010["120"] = "C133501"
R2010["15"] = "C40361"
R2010["180"] = "C42957"
R2010["2.2M"] = "C20400"
R2010["2.4"] = "C97157"
R2010["200K"] = "C99964"
R2010["215K"] = "C145018"
R2010["22"] = "C70404"
R2010["249"] = "C92703"
R2010["280"] = "C58775"
R2010["3.3"] = "C270971"
R2010["3.9"] = "C68084"
R2010["300"] = "C20406"
R2010["33"] = "C20411"
R2010["39"] = "C83487"
R2010["4.3K"] = "C93205"
R2010["4.7"] = "C270968"
R2010["4.7K"] = "C20431"
R2010["47K"] = "C20428"
R2010["5.1"] = "C76471"
R2010["5.6"] = "C270966"
R2010["5.6K"] = "C20441"
R2010["510"] = "C109103"
R2010["51K"] = "C20435"
R2010["6.8"] = "C270965"
R2010["71.5"] = "C68734"
R2010["75"] = "C34839"
R2010["750"] = "C20456"
R2010["8.2"] = "C20466"

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
		if (value in R0603){
			lcsc = R0603[value]
		}
		print "F " f_field " " lcsc " " orientation " " posx " " posy " " size " "flags " " justify " " style " \"LCSC\"";
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
        if ($2 ~ /0/) { ref   = $3; } # reference, orientation, posx, posy, size, flags, hor_justify, style, <“field_name”>
        if ($2 ~ /1/) { value = $3; } # value, orientation, posx, posy, size, flags, hor_justify, style
        if ($2 ~ /2/) { # footprint, orientation, posx, posy, size, flags, hor_justify, style
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
 
		if ($2 ~ /3/) {  # datasheet, orientation, posx, posy, size, flags, hor_justify, style
			orientation = $4; size = $7; flags = $8 ; justify = $9 ; style = $10
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