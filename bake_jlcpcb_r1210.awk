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
R1210["0"] = "C270882"
R1210["0.01"] = "C155699"
R1210["0.015"] = "C270879"
R1210["0.02"] = "C127685"
R1210["0.033"] = "C127712"
R1210["0.047"] = "C127695"
R1210["0.05"] = "C127694"
R1210["0.056"] = "C127696"
R1210["0.1"] = "C52365"
R1210["0.18"] = "C69866"
R1210["0.2"] = "C52362"
R1210["0.27"] = "C55807"
R1210["0.33"] = "C95211"
R1210["0.39"] = "C69867"
R1210["0.4"] = "C270889"
R1210["0.43"] = "C55826"
R1210["0.5"] = "C21355"
R1210["0.51"] = "C22519"
R1210["0.62"] = "C55825"
R1210["0.75"] = "C62271"
R1210["1"] = "C78022"
R1210["1.6"] = "C66578"
R1210["10"] = "C44451"
R1210["100"] = "C56239"
R1210["120"] = "C122363"
R1210["12K"] = "C182355"
R1210["137"] = "C132122"
R1210["16.2"] = "C51988"
R1210["180"] = "C66696"
R1210["1K"] = "C52444"
R1210["2.7"] = "C68599"
R1210["20"] = "C32486"
R1210["200"] = "C55914"
R1210["200K"] = "C59294"
R1210["22"] = "C99151"
R1210["22K"] = "C147142"
R1210["24"] = "C113358"
R1210["249"] = "C75157"
R1210["270"] = "C47444"
R1210["3.3"] = "C21624"
R1210["3.3K"] = "C58850"
R1210["3.6"] = "C50720"
R1210["30"] = "C25423"
R1210["33K"] = "C270890"
R1210["360"] = "C25426"
R1210["390"] = "C122364"
R1210["39K"] = "C58849"
R1210["4.7"] = "C270827"
R1210["4.7K"] = "C26060"
R1210["43"] = "C99152"
R1210["430K"] = "C110257"
R1210["47"] = "C72398"
R1210["51"] = "C70407"
R1210["510K"] = "C37784"
R1210["56"] = "C72399"
R1210["6.2"] = "C134162"
R1210["6.2K"] = "C182356"
R1210["6.8"] = "C111107"
R1210["60.4"] = "C90385"
R1210["62"] = "C99153"
R1210["64.9"] = "C40223"
R1210["64.9K"] = "C59292"
R1210["68K"] = "C25707"
R1210["7.5"] = "C55014"
R1210["750"] = "C270878"
R1210["8.2"] = "C35528"
R1210["91"] = "C70405"
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
	if (value in R1210){
		lcsc = R1210[value]
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