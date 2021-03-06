# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_2010_5025Metric\""

	//LCSC Part numbers

R2010["0"] = "C270974"
R2010["0.039"] = "C270952"
R2010["0.1"] = "C43093"
R2010["0.2"] = "C19682"
R2010["0.22"] = "C146381"
R2010["0.25"] = "C421880"
R2010["0.33"] = "C64067"
R2010["0.36"] = "C92994"
R2010["0.47"] = "C55830"
R2010["0.5"] = "C60104"
R2010["0.51"] = "C44219"
R2010["1"] = "C60111"
R2010["1.1k"] = "C70993"
R2010["1.2"] = "C20379"
R2010["1.21k"] = "C191220"
R2010["1.2k"] = "C56348"
R2010["1.3k"] = "C20373"
R2010["1.4k"] = "C54203"
R2010["1.5"] = "C20380"
R2010["1.5M"] = "C20375"
R2010["1.5k"] = "C20374"
R2010["1.6k"] = "C54195"
R2010["1.8"] = "C25461"
R2010["1.8k"] = "C131001"
R2010["10"] = "C55022"
R2010["100"] = "C50472"
R2010["100k"] = "C65168"
R2010["10M"] = "C26131"
R2010["10k"] = "C61618"
R2010["110"] = "C70992"
R2010["110k"] = "C20351"
R2010["11k"] = "C70994"
R2010["12"] = "C20357"
R2010["120"] = "C133501"
R2010["120k"] = "C20354"
R2010["12k"] = "C20356"
R2010["130"] = "C25459"
R2010["130k"] = "C20358"
R2010["13k"] = "C20359"
R2010["15"] = "C40361"
R2010["150"] = "C20361"
R2010["150k"] = "C20360"
R2010["15k"] = "C20362"
R2010["16"] = "C20366"
R2010["160"] = "C20364"
R2010["160k"] = "C20363"
R2010["16k"] = "C20365"
R2010["18"] = "C20370"
R2010["180"] = "C42957"
R2010["180k"] = "C20367"
R2010["18k"] = "C20369"
R2010["1M"] = "C20377"
R2010["1k"] = "C270963"
R2010["2"] = "C20401"
R2010["2.2"] = "C20402"
R2010["2.2M"] = "C20400"
R2010["2.2k"] = "C20397"
R2010["2.4"] = "C97157"
R2010["2.4k"] = "C20398"
R2010["2.7"] = "C20404"
R2010["2.7M"] = "C73666"
R2010["2.7k"] = "C18480"
R2010["20"] = "C20384"
R2010["200"] = "C270961"
R2010["200k"] = "C31987"
R2010["20k"] = "C20383"
R2010["215k"] = "C145018"
R2010["22"] = "C70404"
R2010["220"] = "C20386"
R2010["220k"] = "C20385"
R2010["22k"] = "C20387"
R2010["24"] = "C20391"
R2010["240"] = "C20389"
R2010["240k"] = "C20388"
R2010["249"] = "C88090"
R2010["24k"] = "C20390"
R2010["27"] = "C20395"
R2010["270"] = "C20393"
R2010["270k"] = "C20392"
R2010["27k"] = "C20394"
R2010["280"] = "C58775"
R2010["2M"] = "C20399"
R2010["2k"] = "C20396"
R2010["3"] = "C25463"
R2010["3.3"] = "C270971"
R2010["3.3k"] = "C19683"
R2010["3.6"] = "C92452"
R2010["3.6k"] = "C20419"
R2010["3.9"] = "C68084"
R2010["3.9k"] = "C19630"
R2010["30"] = "C20407"
R2010["300"] = "C20406"
R2010["300k"] = "C20405"
R2010["30M"] = "C86324"
R2010["30k"] = "C25714"
R2010["33"] = "C20411"
R2010["330"] = "C20409"
R2010["330k"] = "C20408"
R2010["33k"] = "C20410"
R2010["36"] = "C20415"
R2010["360"] = "C20413"
R2010["360k"] = "C20412"
R2010["36k"] = "C20414"
R2010["39"] = "C83487"
R2010["390"] = "C20417"
R2010["390k"] = "C20416"
R2010["39k"] = "C20418"
R2010["3k"] = "C25715"
R2010["4.3"] = "C20432"
R2010["4.3k"] = "C93205"
R2010["4.7"] = "C270968"
R2010["4.75k"] = "C421823"
R2010["4.7M"] = "C26132"
R2010["4.7k"] = "C20431"
R2010["43"] = "C20425"
R2010["430"] = "C20423"
R2010["430k"] = "C20422"
R2010["43k"] = "C20424"
R2010["47"] = "C20429"
R2010["470"] = "C20427"
R2010["470k"] = "C18328"
R2010["47k"] = "C20428"
R2010["5.1"] = "C76471"
R2010["5.11"] = "C174954"
R2010["5.1k"] = "C20440"
R2010["5.6"] = "C270966"
R2010["5.6k"] = "C20441"
R2010["51"] = "C20436"
R2010["510"] = "C109103"
R2010["510k"] = "C20434"
R2010["51k"] = "C20435"
R2010["56"] = "C20439"
R2010["560"] = "C20438"
R2010["560k"] = "C20437"
R2010["56k"] = "C25716"
R2010["6.2"] = "C20453"
R2010["6.2k"] = "C20452"
R2010["6.8"] = "C270965"
R2010["6.8k"] = "C19631"
R2010["62"] = "C20447"
R2010["620"] = "C20445"
R2010["620k"] = "C20444"
R2010["62k"] = "C20446"
R2010["68"] = "C20451"
R2010["680"] = "C20449"
R2010["680k"] = "C20448"
R2010["68k"] = "C20450"
R2010["7.5"] = "C20460"
R2010["7.5k"] = "C20459"
R2010["71.5"] = "C68734"
R2010["75"] = "C34839"
R2010["750"] = "C20456"
R2010["750k"] = "C20455"
R2010["75k"] = "C20457"
R2010["8.2"] = "C270964"
R2010["8.2k"] = "C20465"
R2010["82"] = "C20464"
R2010["820"] = "C20462"
R2010["820k"] = "C20461"
R2010["82k"] = "C20463"
R2010["9.1"] = "C20471"
R2010["9.1k"] = "C20472"
R2010["91"] = "C20470"
R2010["910"] = "C20468"
R2010["910k"] = "C20467"
R2010["91k"] = "C20469"

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
			if (value in R2010){
				lcsc = R2010[value]
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
				if (rindex in R2010){
					if ($3 !~ R2010[rindex] ){
						add_error = 1
						error_msg =  "expected " R2010[rindex]
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
