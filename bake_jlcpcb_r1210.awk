# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_1210_3225Metric\""

	//LCSC Part numbers

R1210["0"] = "C270882"
R1210["0.01"] = "C155699"
R1210["0.015"] = "C270879"
R1210["0.02"] = "C18686"
R1210["0.033"] = "C127712"
R1210["0.047"] = "C40516"
R1210["0.05"] = "C35282"
R1210["0.056"] = "C41125"
R1210["0.068"] = "C422195"
R1210["0.1"] = "C37794"
R1210["0.13"] = "C422221"
R1210["0.15"] = "C67559"
R1210["0.18"] = "C69866"
R1210["0.2"] = "C52362"
R1210["0.24"] = "C270877"
R1210["0.27"] = "C55807"
R1210["0.3"] = "C55827"
R1210["0.33"] = "C75544"
R1210["0.39"] = "C69867"
R1210["0.4"] = "C270889"
R1210["0.43"] = "C55826"
R1210["0.5"] = "C21355"
R1210["0.51"] = "C22519"
R1210["0.62"] = "C55825"
R1210["0.68"] = "C270876"
R1210["0.75"] = "C62271"
R1210["1"] = "C78022"
R1210["1.1k"] = "C26049"
R1210["1.2"] = "C25411"
R1210["1.2k"] = "C26050"
R1210["1.5"] = "C25412"
R1210["1.5k"] = "C26051"
R1210["1.6"] = "C66578"
R1210["1.8"] = "C25413"
R1210["1.8k"] = "C26052"
R1210["10"] = "C44451"
R1210["100"] = "C56239"
R1210["100k"] = "C25671"
R1210["10M"] = "C26127"
R1210["10k"] = "C25672"
R1210["110"] = "C25401"
R1210["11k"] = "C25673"
R1210["12"] = "C25403"
R1210["120"] = "C122363"
R1210["120k"] = "C25674"
R1210["12k"] = "C182355"
R1210["13"] = "C38960"
R1210["130"] = "C50594"
R1210["137"] = "C132122"
R1210["13k"] = "C25675"
R1210["15"] = "C25405"
R1210["150"] = "C25404"
R1210["150k"] = "C25676"
R1210["15k"] = "C25677"
R1210["16"] = "C25407"
R1210["16.2"] = "C51988"
R1210["160"] = "C25406"
R1210["16k"] = "C25678"
R1210["18"] = "C25409"
R1210["180"] = "C66696"
R1210["180k"] = "C25679"
R1210["18k"] = "C25680"
R1210["1M"] = "C26128"
R1210["1k"] = "C52444"
R1210["2"] = "C25419"
R1210["2.2"] = "C25420"
R1210["2.21k"] = "C333148"
R1210["2.2M"] = "C26130"
R1210["2.2k"] = "C26053"
R1210["2.4"] = "C25421"
R1210["2.4k"] = "C26054"
R1210["2.7"] = "C68599"
R1210["2.7k"] = "C26055"
R1210["20"] = "C32486"
R1210["200"] = "C55914"
R1210["200k"] = "C59294"
R1210["20k"] = "C25683"
R1210["22"] = "C99151"
R1210["220"] = "C25414"
R1210["220k"] = "C25684"
R1210["22k"] = "C147142"
R1210["24"] = "C113358"
R1210["240"] = "C25416"
R1210["240k"] = "C25685"
R1210["249"] = "C94903"
R1210["24k"] = "C25686"
R1210["27"] = "C10972"
R1210["270"] = "C47444"
R1210["270k"] = "C25687"
R1210["27k"] = "C25688"
R1210["2M"] = "C26129"
R1210["2k"] = "C25689"
R1210["3"] = "C25430"
R1210["3.3"] = "C21624"
R1210["3.3k"] = "C58850"
R1210["3.6"] = "C50720"
R1210["3.6k"] = "C26057"
R1210["3.9"] = "C159345"
R1210["3.9k"] = "C26058"
R1210["30"] = "C25423"
R1210["300"] = "C25422"
R1210["300k"] = "C25690"
R1210["30k"] = "C25691"
R1210["33"] = "C25425"
R1210["330"] = "C25424"
R1210["330k"] = "C25692"
R1210["33k"] = "C270890"
R1210["36"] = "C25427"
R1210["360"] = "C25426"
R1210["36k"] = "C25694"
R1210["39"] = "C25429"
R1210["390"] = "C122364"
R1210["390k"] = "C25695"
R1210["39k"] = "C58849"
R1210["3k"] = "C25697"
R1210["4.3"] = "C25436"
R1210["4.3k"] = "C26059"
R1210["4.7"] = "C270827"
R1210["4.7k"] = "C52443"
R1210["43"] = "C99152"
R1210["430"] = "C25432"
R1210["430k"] = "C110257"
R1210["43k"] = "C25698"
R1210["47"] = "C72398"
R1210["470"] = "C25434"
R1210["470k"] = "C25699"
R1210["47k"] = "C25700"
R1210["49.9"] = "C46035"
R1210["5.1"] = "C25442"
R1210["5.1k"] = "C26061"
R1210["5.6"] = "C25443"
R1210["5.6k"] = "C26062"
R1210["50k"] = "C231750"
R1210["51"] = "C70407"
R1210["510"] = "C25438"
R1210["510k"] = "C37784"
R1210["51k"] = "C25702"
R1210["56"] = "C72399"
R1210["560"] = "C25440"
R1210["560k"] = "C25703"
R1210["56k"] = "C25704"
R1210["6.2"] = "C134162"
R1210["6.2k"] = "C182356"
R1210["6.8"] = "C111107"
R1210["6.8k"] = "C26064"
R1210["60.4"] = "C90385"
R1210["62"] = "C99153"
R1210["620"] = "C25444"
R1210["620k"] = "C34998"
R1210["62k"] = "C25705"
R1210["64.9"] = "C40223"
R1210["64.9k"] = "C59292"
R1210["68"] = "C25447"
R1210["680"] = "C25446"
R1210["680k"] = "C25706"
R1210["68k"] = "C25707"
R1210["7.5"] = "C55014"
R1210["7.5k"] = "C26065"
R1210["75"] = "C25449"
R1210["750"] = "C270878"
R1210["750k"] = "C25708"
R1210["75k"] = "C25709"
R1210["8.2"] = "C35528"
R1210["8.2k"] = "C26066"
R1210["82"] = "C25451"
R1210["820"] = "C25450"
R1210["820k"] = "C25710"
R1210["82k"] = "C25711"
R1210["9.1k"] = "C26067"
R1210["91"] = "C70405"
R1210["910"] = "C25452"
R1210["91k"] = "C25712"

}

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
			if (value in R1210){
				lcsc = R1210[value]
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
			# reference, orientation, posx, posy, size, flags, hor_justify, style, <???field_name???>
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
				if (rindex in R1210){
					if ($3 !~ R1210[rindex] ){
						add_error = 1
						error_msg =  "expected " R1210[rindex]
					}				
				}
			}				
			add_lcsc = 0
		}
    }
	
$1 !~ /F/	{
			JLCPCB_output( )
	}

	{ print $0; 
	 next;
	}
