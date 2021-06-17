# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_2512_6332Metric\""

	//LCSC Part numbers

R2512["0"] = "C270957"
R2512["0.001"] = "C76233"
R2512["0.0015"] = "C76265"
R2512["0.002"] = "C108929"
R2512["0.003"] = "C60922"
R2512["0.004"] = "C270946"
R2512["0.005"] = "C63276"
R2512["0.006"] = "C68832"
R2512["0.007"] = "C62405"
R2512["0.008"] = "C76271"
R2512["0.01"] = "C127692"
R2512["0.012"] = "C76273"
R2512["0.015"] = "C127702"
R2512["0.018"] = "C270951"
R2512["0.02"] = "C127705"
R2512["0.025"] = "C110419"
R2512["0.03"] = "C76277"
R2512["0.033"] = "C270950"
R2512["0.035"] = "C87220"
R2512["0.045"] = "C60734"
R2512["0.05"] = "C127698"
R2512["0.051"] = "C270949"
R2512["0.06"] = "C87222"
R2512["0.07"] = "C76279"
R2512["0.075"] = "C78195"
R2512["0.08"] = "C76281"
R2512["0.1"] = "C154690"
R2512["0.12"] = "C81248"
R2512["0.15"] = "C76256"
R2512["0.18"] = "C76257"
R2512["0.2"] = "C76284"
R2512["0.22"] = "C76259"
R2512["0.24"] = "C270954"
R2512["0.25"] = "C25467"
R2512["0.27"] = "C76261"
R2512["0.3"] = "C16074"
R2512["0.33"] = "C25468"
R2512["0.36"] = "C168925"
R2512["0.39"] = "C147837"
R2512["0.4"] = "C76262"
R2512["0.43"] = "C64339"
R2512["0.47"] = "C21097"
R2512["0.5"] = "C27777"
R2512["0.56"] = "C56739"
R2512["0.68"] = "C48169"
R2512["1"] = "C11254"
R2512["1.2"] = "C46193"
R2512["1.5"] = "C39346"
R2512["1.8"] = "C25473"
R2512["10"] = "C47019"
R2512["100"] = "C24920"
R2512["100K"] = "C52842"
R2512["10K"] = "C270956"
R2512["11"] = "C30206"
R2512["110K"] = "C30708"
R2512["12"] = "C30210"
R2512["120K"] = "C30707"
R2512["130K"] = "C55487"
R2512["15"] = "C20087"
R2512["150"] = "C25471"
R2512["150K"] = "C30413"
R2512["15K"] = "C81251"
R2512["180"] = "C82626"
R2512["1K"] = "C54315"
R2512["1M"] = "C55485"
R2512["2"] = "C25479"
R2512["2.2"] = "C25480"
R2512["2.2M"] = "C72208"
R2512["20"] = "C41950"
R2512["20K"] = "C68384"
R2512["22"] = "C118189"
R2512["220K"] = "C55486"
R2512["24"] = "C25476"
R2512["240"] = "C26428"
R2512["24K"] = "C421600"
R2512["27"] = "C25478"
R2512["270"] = "C25477"
R2512["270K"] = "C73112"
R2512["2K"] = "C150966"
R2512["3"] = "C69478"
R2512["3.3"] = "C39347"
R2512["3.3K"] = "C147125"
R2512["3.6"] = "C55502"
R2512["3.9"] = "C48395"
R2512["3.9K"] = "C71971"
R2512["300K"] = "C175383"
R2512["33"] = "C53728"
R2512["33.2K"] = "C65089"
R2512["33K"] = "C30706"
R2512["36"] = "C190228"
R2512["39"] = "C109426"
R2512["390"] = "C60131"
R2512["39K"] = "C30705"
R2512["4.3"] = "C25488"
R2512["4.7"] = "C25489"
R2512["4.7M"] = "C34762"
R2512["4.99K"] = "C81247"
R2512["43K"] = "C69400"
R2512["470K"] = "C55559"
R2512["47K"] = "C95455"
R2512["49.9"] = "C25487"
R2512["49.9K"] = "C96245"
R2512["5.1"] = "C70196"
R2512["51"] = "C25490"
R2512["510K"] = "C60136"
R2512["51K"] = "C30412"
R2512["52.3"] = "C84674"
R2512["56"] = "C55484"
R2512["560K"] = "C175529"
R2512["6.8"] = "C48277"
R2512["62"] = "C44304"
R2512["62K"] = "C55093"
R2512["68"] = "C50371"
R2512["680"] = "C56080"
R2512["7.5"] = "C35217"
R2512["75"] = "C25493"
R2512["8.2"] = "C35219"
R2512["91"] = "C36686"

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
		if (value in R2512){
			lcsc = R2512[value]
		}
		print "F " f_field " " lcsc " " orientation " " posx " " posy " " size " "flags " " justify " " style " \"LCSC\"";
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