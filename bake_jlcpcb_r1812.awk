# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 

	rotations["\"Capacitor_SMD:CP_Elec_10x10.5\""] = "\"0;0;180\""
	rotations["\"Diode_SMD:Diode_Bridge_Vishay_DFS\""] = "\"0;0;0\""
	rotations["\"Package_SO:SO-14_3.9x8.65mm_P1.27mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:SO-16_5.3x10.2mm_P1.27mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:SO-4_4.4x3.6mm_P2.54mm\""] = "\"0;0;0\""
	rotations["\"Package_SO:SOIC-14_3.9x8.7mm_P1.27mm\""] = "\"0;0;270\""		
	rotations["\"Package_SO:SOIC-16_3.9x9.9mm_P1.27mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm\""] = "\"0;0;270\""	
	rotations["\"Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:SOIC-8_3.9x4.9mm_P1.27mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:SOIC-8_5.23x5.23mm_P1.27mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:TSSOP-14_4.4x5mm_P0.65mm\""] = "\"0;0;270\""
	rotations["\"Package_SO:TSSOP-16_4.4x5mm_P0.65mm\""] = "\"0;0;270\""
	rotations["\"Package_TO_SOT_SMD:SOT-23\""] = "\"0;0;180\""	
	rotations["\"Package_TO_SOT_SMD:TO-252-2\""] = "\"0;0;0\""

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
	if (value in R1812){
		lcsc = R1812[value]
	}
	print "F " f_field " " lcsc " " orientation " " posx " " posy " " size " "flags " " justify " " style " \"LCSC\"";
}

#output field rotation
function RotationOutput( ){
		if ( fp ~ /Resistor/ ) JLCPCB_output()
		if (fp in rotations) {
			f_field += 1
			print "F " f_field " " rotations[fp] " " orientation " " posx " " posy " " size " "flags " " justify " " style " \"JLCPCB_CORRECTION\"";
		}
		fp = ""
}	
	
$1 ~ /\$Comp/    { Component = 1; print $0 ; next; }

$1 ~ /\$EndComp/  { 
		# add a field
		RotationOutput()
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
        # name reference 
		# ($2 ~ /Device:C/)  match capacitor
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
        if ($2 ~ /0/) { ref   = $3; } # reference, orientation, posx, posy, size, flags, hor_justify, style, <“field_name”>
        if ($2 ~ /1/) { value = $3; } # value, orientation, posx, posy, size, flags, hor_justify, style
        if ($2 ~ /2/) { fp    = $3; } # footprint, orientation, posx, posy, size, flags, hor_justify, style
        if ($2 ~ /3/) {  # datasheet, orientation, posx, posy, size, flags, hor_justify, style
			orientation = $4; size = $7; flags = $8 ; justify = $9 ; style = $10
		}
		# value, orientation, posx, posy, size, flags, hor_justify, style, field_name
		if ( $11 ~ /JLCPCB_CORRECTION/){	
			if (! fp in rotations){ 
				found_rotation = 1;
				rotations[fp] = $3
				new_rotations[fp] = $3
			}
			fp = ""	# set fp so no extra correction occurs
		}
    }
	
$1 !~ /F/	{
		if ( f_field != 0) {
			RotationOutput()
		}
	}

	{ print $0; 
	 next;
	}
	
END {
# output all the rotations
	if (found_rotation){
		print "NEW FOOTPRINT ROTATIONS FOUND" > "/dev/stderr"
		n = asorti(new_rotations, neat)
		for (k = 1; k<=n ; k++){
			print "rotations[" neat[k] "] = " new_rotations[neat[k]] > "/dev/stderr"
		}
	}
}