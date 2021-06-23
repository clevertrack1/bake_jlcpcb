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
R2512["0.002"] = "C76234"
R2512["0.003"] = "C76235"
R2512["0.004"] = "C76237"
R2512["0.005"] = "C49483"
R2512["0.006"] = "C76239"
R2512["0.007"] = "C76240"
R2512["0.008"] = "C76241"
R2512["0.01"] = "C25465"
R2512["0.012"] = "C76243"
R2512["0.015"] = "C76244"
R2512["0.018"] = "C270951"
R2512["0.02"] = "C68608"
R2512["0.025"] = "C76246"
R2512["0.03"] = "C76247"
R2512["0.033"] = "C76248"
R2512["0.035"] = "C87220"
R2512["0.04"] = "C133082"
R2512["0.045"] = "C60734"
R2512["0.05"] = "C61904"
R2512["0.051"] = "C270949"
R2512["0.06"] = "C87222"
R2512["0.07"] = "C76251"
R2512["0.075"] = "C76252"
R2512["0.08"] = "C76253"
R2512["0.1"] = "C76254"
R2512["0.12"] = "C81248"
R2512["0.18"] = "C76257"
R2512["0.2"] = "C76258"
R2512["0.22"] = "C76259"
R2512["0.24"] = "C270954"
R2512["0.25"] = "C25467"
R2512["0.27"] = "C76261"
R2512["0.3"] = "C16074"
R2512["0.33"] = "C25468"
R2512["0.36"] = "C168925"
R2512["0.4"] = "C76262"
R2512["0.43"] = "C64339"
R2512["0.47"] = "C21097"
R2512["0.5"] = "C27777"
R2512["0.56"] = "C56739"
R2512["0.62"] = "C25470"
R2512["0.68"] = "C48169"
R2512["0.82"] = "C56426"
R2512["1"] = "C11254"
R2512["1.1"] = "C41010"
R2512["1.1k"] = "C175321"
R2512["1.2"] = "C46193"
R2512["1.2k"] = "C64662"
R2512["1.3k"] = "C310401"
R2512["1.5"] = "C39346"
R2512["1.5k"] = "C26071"
R2512["1.8"] = "C25473"
R2512["10"] = "C47019"
R2512["100"] = "C35218"
R2512["100k"] = "C52842"
R2512["10k"] = "C270956"
R2512["11"] = "C30206"
R2512["110k"] = "C30708"
R2512["11k"] = "C406967"
R2512["12"] = "C30210"
R2512["120"] = "C19865"
R2512["120k"] = "C30707"
R2512["130k"] = "C55487"
R2512["15"] = "C20087"
R2512["150"] = "C25471"
R2512["150k"] = "C30413"
R2512["15k"] = "C81251"
R2512["16k"] = "C32233"
R2512["180"] = "C82626"
R2512["1M"] = "C55485"
R2512["1k"] = "C54315"
R2512["2"] = "C49298"
R2512["2.2"] = "C25480"
R2512["2.2M"] = "C72208"
R2512["2.4"] = "C25481"
R2512["2.4k"] = "C48046"
R2512["2.7k"] = "C26072"
R2512["20"] = "C41950"
R2512["200"] = "C25474"
R2512["200k"] = "C38961"
R2512["20k"] = "C68384"
R2512["22"] = "C118189"
R2512["220"] = "C38808"
R2512["220k"] = "C55486"
R2512["24"] = "C107659"
R2512["240"] = "C26428"
R2512["240k"] = "C25721"
R2512["24k"] = "C421600"
R2512["27"] = "C25478"
R2512["270"] = "C25477"
R2512["270k"] = "C73112"
R2512["27k"] = "C175357"
R2512["2M"] = "C45124"
R2512["2k"] = "C150966"
R2512["3"] = "C69478"
R2512["3.3"] = "C39347"
R2512["3.3k"] = "C31884"
R2512["3.6"] = "C55502"
R2512["3.9"] = "C39356"
R2512["3.9k"] = "C71971"
R2512["30"] = "C25483"
R2512["300"] = "C25482"
R2512["300k"] = "C175383"
R2512["30k"] = "C25722"
R2512["33"] = "C53728"
R2512["33.2k"] = "C65089"
R2512["330"] = "C91264"
R2512["330k"] = "C621305"
R2512["33k"] = "C30706"
R2512["36"] = "C190228"
R2512["360"] = "C25484"
R2512["39"] = "C109426"
R2512["390"] = "C60131"
R2512["39k"] = "C30705"
R2512["3k"] = "C71872"
R2512["4.3"] = "C48874"
R2512["4.7"] = "C25489"
R2512["4.7M"] = "C34762"
R2512["4.7k"] = "C33178"
R2512["4.99k"] = "C81247"
R2512["43"] = "C38957"
R2512["43k"] = "C69400"
R2512["47"] = "C15261"
R2512["470"] = "C24919"
R2512["470k"] = "C55559"
R2512["47k"] = "C95455"
R2512["49.9"] = "C25487"
R2512["49.9k"] = "C96245"
R2512["5.1"] = "C73113"
R2512["5.1k"] = "C50609"
R2512["5.6k"] = "C46346"
R2512["51"] = "C41977"
R2512["510"] = "C55877"
R2512["510k"] = "C60136"
R2512["51k"] = "C30412"
R2512["52.3"] = "C84674"
R2512["549k"] = "C421538"
R2512["56"] = "C55484"
R2512["560"] = "C25491"
R2512["560k"] = "C175529"
R2512["56k"] = "C98481"
R2512["6.2k"] = "C406926"
R2512["6.8"] = "C48277"
R2512["6.8k"] = "C26073"
R2512["62"] = "C44304"
R2512["620"] = "C159179"
R2512["62k"] = "C55093"
R2512["68"] = "C50371"
R2512["680"] = "C56080"
R2512["680k"] = "C109047"
R2512["7.5"] = "C35217"
R2512["7.5k"] = "C49477"
R2512["75"] = "C25493"
R2512["750"] = "C16627"
R2512["750k"] = "C421512"
R2512["8.2"] = "C35219"
R2512["8.2k"] = "C46347"
R2512["82"] = "C175438"
R2512["820"] = "C53163"
R2512["82k"] = "C34378"
R2512["9.1"] = "C47445"
R2512["9.1k"] = "C26074"
R2512["91"] = "C36686"
R2512["910"] = "C55916"
R2512["910k"] = "C406891"
R2512["91k"] = "C72401"

}

# This is where we output extra fields needed to support JLCPCB


function r_value_index( instring ) {
	val = match( instring, /[^"]+[^"]/)
	found = "#error"
	if (val) {
		instring = substr(instring, RSTART, RLENGTH)
		val = match( instring, /[MkKR][0-9]+/)
		if (val){
			if (RLENGTH == 1){
				found = substr(instring,1, RSTART-1) substr(instring,RSTART,1)
			} else {
				found = substr(instring,1, RSTART-1) "." substr(instring,RSTART+1) substr(instring,RSTART,1)
			}	
			instring = found
		}
		val = match( instring, /R/)
		if (val){
			instring = substr(instring,1, RSTART-1)
		}
		val = match( instring, /K/)
		if (val){
			instring = tolower(instring)
		}
	}
	return instring
}

function JLCPCB_output( ) {
	if (add_lcsc ) {
	
		if ( fp ~ FP_R ){
			value = r_value_index(value)
			lcsc = ""
			f_field += 1
			if (value in R2512){
				lcsc = R2512[value]
			}	
			print "F " f_field " \"" lcsc "\" " orientation " " posx " " posy " " size "  0001 " justify " " style " \"LCSC\"";
			fp =""
		}
		add_lcsc = 0
	}
	ERROR_output()
}

function ERROR_output( ) {
	if (add_error ){
		f_field += 1	
		print "F " f_field " \"" error_msg "\" " orientation " " posx " " posy " " size "  0000 " justify " " style " \"ERROR\"";
		add_error = 0
	}
}

$1 ~ /\$Comp/    { Component = 1; print $0 ; next; }

		# component block has finished
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
			if ( fp ~ FP_R ){
				rindex = r_value_index(value)
				if (rindex in R2512){
					if ($3 !~ R2512[rindex] ){
						add_error = 1
						error_msg =  "expected " R2512[rindex]
					}				
				}
			}				
			add_lcsc = 0
		}
    }
	
		# a block of fields can end before the component end catch it here
$1 !~ /F/	{
			JLCPCB_output( )
		}

		# print it out
	{ print $0; 
	 next;
	}
