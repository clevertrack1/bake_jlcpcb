# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_0402_1005Metric\""

	//LCSC Part numbers
	
R0402["0"] = "C25495"
R0402["0.05"] = "C270383"
R0402["0.1"] = "C270384"
R0402["0.2"] = "C270629"
R0402["0.22"] = "C270628"
R0402["0.36"] = "C270606"
R0402["0.68"] = "C38005"
R0402["1"] = "C25086"
R0402["1.02K"] = "C85373"
R0402["1.02M"] = "C26084"
R0402["1.07K"] = "C26260"
R0402["1.13K"] = "C67014"
R0402["1.15K"] = "C29401"
R0402["1.18K"] = "C270651"
R0402["1.1K"] = "C25860"
R0402["1.1M"] = "C133039"
R0402["1.2"] = "C44198"
R0402["1.21K"] = "C25863"
R0402["1.24K"] = "C25864"
R0402["1.27K"] = "C25865"
R0402["1.2K"] = "C25862"
R0402["1.2M"] = "C43675"
R0402["1.3"] = "C247163"
R0402["1.33"] = "C270647"
R0402["1.33M"] = "C270648"
R0402["1.3K"] = "C25929"
R0402["1.43K"] = "C11671"
R0402["1.4K"] = "C39650"
R0402["1.4M"] = "C270644"
R0402["1.5"] = "C270642"
R0402["1.54K"] = "C122549"
R0402["1.58K"] = "C113483"
R0402["1.5K"] = "C98835"
R0402["1.5M"] = "C22276"
R0402["1.6"] = "C407711"
R0402["1.62K"] = "C61897"
R0402["1.65K"] = "C25869"
R0402["1.69K"] = "C25870"
R0402["1.69M"] = "C38586"
R0402["1.6K"] = "C4908"
R0402["1.74K"] = "C270638"
R0402["1.74M"] = "C270637"
R0402["1.78K"] = "C113478"
R0402["1.8"] = "C270635"
R0402["1.87K"] = "C270633"
R0402["1.8K"] = "C25871"
R0402["1.8M"] = "C38587"
R0402["1.91K"] = "C36951"
R0402["1.96K"] = "C70427"
R0402["10"] = "C270395"
R0402["10.2K"] = "C11660"
R0402["10.5K"] = "C25850"
R0402["10.7K"] = "C270654"
R0402["100"] = "C270393"
R0402["100K"] = "C25724"
R0402["102K"] = "C26991"
R0402["105"] = "C75737"
R0402["105K"] = "C25742"
R0402["107K"] = "C25743"
R0402["10K"] = "C25725"
R0402["10M"] = "C26082"
R0402["11.3K"] = "C25851"
R0402["11.5K"] = "C270653"
R0402["11.8K"] = "C93752"
R0402["110"] = "C25078"
R0402["110K"] = "C270379"
R0402["113"] = "C95594"
R0402["113K"] = "C25746"
R0402["115K"] = "C25747"
R0402["118"] = "C270652"
R0402["118K"] = "C25748"
R0402["11K"] = "C25749"
R0402["12"] = "C70284"
R0402["12.1K"] = "C25852"
R0402["12.4K"] = "C11692"
R0402["12.7"] = "C247128"
R0402["12.7K"] = "C25853"
R0402["120"] = "C25079"
R0402["120K"] = "C25750"
R0402["121"] = "C25080"
R0402["121K"] = "C11693"
R0402["124"] = "C39886"
R0402["124K"] = "C36777"
R0402["127"] = "C247127"
R0402["127K"] = "C25751"
R0402["12K"] = "C25752"
R0402["13.3K"] = "C122547"
R0402["13.7"] = "C270646"
R0402["13.7K"] = "C25854"
R0402["130"] = "C270649"
R0402["130K"] = "C52929"
R0402["133"] = "C270378"
R0402["133K"] = "C25753"
R0402["137K"] = "C32298"
R0402["13K"] = "C25754"
R0402["14.3K"] = "C25855"
R0402["14.7K"] = "C25856"
R0402["140"] = "C25081"
R0402["140K"] = "C270645"
R0402["143"] = "C270643"
R0402["143K"] = "C82292"
R0402["147"] = "C64531"
R0402["147K"] = "C64171"
R0402["14K"] = "C54831"
R0402["15"] = "C25497"
R0402["15.4"] = "C114988"
R0402["15.4K"] = "C62740"
R0402["15.8K"] = "C26956"
R0402["150"] = "C25082"
R0402["150K"] = "C25755"
R0402["154K"] = "C26993"
R0402["158K"] = "C99856"
R0402["15K"] = "C25756"
R0402["16"] = "C270640"
R0402["16.2"] = "C270639"
R0402["16.2K"] = "C27176"
R0402["16.5K"] = "C25857"
R0402["16.9"] = "C82287"
R0402["16.9K"] = "C25858"
R0402["160"] = "C270641"
R0402["160K"] = "C25757"
R0402["162"] = "C67232"
R0402["162K"] = "C54068"
R0402["165K"] = "C38706"
R0402["169"] = "C36954"
R0402["169K"] = "C25758"
R0402["16K"] = "C25759"
R0402["17.4"] = "C270636"
R0402["17.4K"] = "C26957"
R0402["17.8K"] = "C129766"
R0402["174K"] = "C26994"
R0402["178K"] = "C26995"
R0402["18"] = "C25084"
R0402["18.2"] = "C53516"
R0402["18.2K"] = "C25859"
R0402["18.7K"] = "C11476"
R0402["180"] = "C25145"
R0402["180K"] = "C25760"
R0402["182"] = "C270634"
R0402["182K"] = "C11481"
R0402["187"] = "C39887"
R0402["187K"] = "C25761"
R0402["18K"] = "C25762"
R0402["19.1K"] = "C52036"
R0402["19.6K"] = "C26959"
R0402["191"] = "C25085"
R0402["191K"] = "C270632"
R0402["196"] = "C270631"
R0402["196K"] = "C26996"
R0402["1K"] = "C25726"
R0402["1M"] = "C26083"
R0402["2"] = "C270630"
R0402["2.05K"] = "C60076"
R0402["2.15K"] = "C25878"
R0402["2.1K"] = "C25877"
R0402["2.2"] = "C25101"
R0402["2.21K"] = "C270376"
R0402["2.26K"] = "C270627"
R0402["2.2K"] = "C26075"
R0402["2.2M"] = "C11490"
R0402["2.32K"] = "C82297"
R0402["2.37K"] = "C25881"
R0402["2.4"] = "C270624"
R0402["2.43K"] = "C25883"
R0402["2.49K"] = "C25884"
R0402["2.4K"] = "C25882"
R0402["2.55K"] = "C95596"
R0402["2.61K"] = "C34906"
R0402["2.67K"] = "C82298"
R0402["2.7"] = "C407695"
R0402["2.74K"] = "C33360"
R0402["2.7K"] = "C26076"
R0402["2.7M"] = "C270621"
R0402["2.87K"] = "C113479"
R0402["2.8K"] = "C62741"
R0402["2.94K"] = "C25886"
R0402["20"] = "C2004"
R0402["20.5K"] = "C57105"
R0402["200"] = "C2011"
R0402["200K"] = "C25764"
R0402["205"] = "C25088"
R0402["205K"] = "C26997"
R0402["20K"] = "C2022"
R0402["20M"] = "C30328"
R0402["21.5K"] = "C25872"
R0402["210"] = "C25090"
R0402["210K"] = "C58827"
R0402["215"] = "C52959"
R0402["215K"] = "C11489"
R0402["21K"] = "C25766"
R0402["22"] = "C25499"
R0402["22.1"] = "C59651"
R0402["22.1K"] = "C43473"
R0402["22.6"] = "C25093"
R0402["22.6K"] = "C26960"
R0402["220"] = "C25498"
R0402["220K"] = "C25546"
R0402["221"] = "C247122"
R0402["221K"] = "C26998"
R0402["226"] = "C52960"
R0402["226K"] = "C26999"
R0402["22K"] = "C270657"
R0402["23.2"] = "C82296"
R0402["23.2K"] = "C25873"
R0402["23.7"] = "C67233"
R0402["23.7K"] = "C82134"
R0402["232"] = "C270626"
R0402["232K"] = "C27000"
R0402["237"] = "C52962"
R0402["237K"] = "C27001"
R0402["24"] = "C25500"
R0402["24.3K"] = "C26969"
R0402["24.9"] = "C5099"
R0402["24.9K"] = "C25874"
R0402["240"] = "C270375"
R0402["240K"] = "C64043"
R0402["243"] = "C25095"
R0402["243K"] = "C43249"
R0402["249"] = "C25096"
R0402["249K"] = "C11425"
R0402["24K"] = "C25769"
R0402["25.5"] = "C129579"
R0402["25.5K"] = "C26970"
R0402["255K"] = "C270623"
R0402["26.1"] = "C25098"
R0402["26.1K"] = "C25875"
R0402["26.7K"] = "C25876"
R0402["261"] = "C25097"
R0402["261K"] = "C27003"
R0402["267K"] = "C270622"
R0402["27"] = "C25494"
R0402["27.4"] = "C31439"
R0402["27.4K"] = "C26971"
R0402["270"] = "C25099"
R0402["270K"] = "C25770"
R0402["274"] = "C270620"
R0402["274K"] = "C27004"
R0402["27K"] = "C25771"
R0402["28.7K"] = "C26972"
R0402["280K"] = "C46006"
R0402["28K"] = "C25772"
R0402["29.4"] = "C82293"
R0402["29.4K"] = "C26973"
R0402["294"] = "C270618"
R0402["294K"] = "C40836"
R0402["2K"] = "C44891"
R0402["2M"] = "C11512"
R0402["3"] = "C2002"
R0402["3.01K"] = "C25889"
R0402["3.09K"] = "C11460"
R0402["3.16K"] = "C11462"
R0402["3.24K"] = "C11457"
R0402["3.3"] = "C270612"
R0402["3.32"] = "C60073"
R0402["3.32K"] = "C60075"
R0402["3.3K"] = "C26077"
R0402["3.3M"] = "C270613"
R0402["3.48K"] = "C22065"
R0402["3.4K"] = "C4940"
R0402["3.57K"] = "C270609"
R0402["3.6"] = "C45432"
R0402["3.65K"] = "C67235"
R0402["3.6K"] = "C25891"
R0402["3.74K"] = "C15172"
R0402["3.83K"] = "C67236"
R0402["3.9"] = "C44937"
R0402["3.92K"] = "C25892"
R0402["3.9K"] = "C51721"
R0402["3.9M"] = "C30329"
R0402["30"] = "C270392"
R0402["30.1"] = "C67234"
R0402["30.1K"] = "C29402"
R0402["30.9K"] = "C270615"
R0402["300"] = "C25102"
R0402["300K"] = "C25774"
R0402["301"] = "C25103"
R0402["301K"] = "C25775"
R0402["309"] = "C270616"
R0402["309K"] = "C122546"
R0402["30K"] = "C105614"
R0402["31.6K"] = "C11463"
R0402["316"] = "C247119"
R0402["316K"] = "C25777"
R0402["32.4"] = "C270614"
R0402["32.4K"] = "C26974"
R0402["324K"] = "C113480"
R0402["33"] = "C25501"
R0402["33.2"] = "C25106"
R0402["33.2K"] = "C122548"
R0402["330"] = "C102635"
R0402["330K"] = "C25554"
R0402["332"] = "C29281"
R0402["332K"] = "C44358"
R0402["33K"] = "C25779"
R0402["34"] = "C270611"
R0402["34.8"] = "C270610"
R0402["34.8K"] = "C47493"
R0402["340"] = "C247118"
R0402["348"] = "C25107"
R0402["348K"] = "C25780"
R0402["34K"] = "C48939"
R0402["35.7"] = "C270608"
R0402["35.7K"] = "C26975"
R0402["357K"] = "C27005"
R0402["36"] = "C25502"
R0402["36.5K"] = "C25887"
R0402["360"] = "C270607"
R0402["360K"] = "C45956"
R0402["365"] = "C270605"
R0402["365K"] = "C27006"
R0402["36K"] = "C43676"
R0402["37.4"] = "C25108"
R0402["37.4K"] = "C25888"
R0402["374"] = "C270604"
R0402["374K"] = "C25781"
R0402["38.3K"] = "C26976"
R0402["383K"] = "C45993"
R0402["39"] = "C56142"
R0402["39.2"] = "C45323"
R0402["39.2K"] = "C57106"
R0402["390"] = "C25109"
R0402["390K"] = "C25782"
R0402["392"] = "C92196"
R0402["392K"] = "C27007"
R0402["39K"] = "C25783"
R0402["3K"] = "C141649"
R0402["3M"] = "C56582"
R0402["4.02"] = "C270603"
R0402["4.02K"] = "C43251"
R0402["4.12K"] = "C60081"
R0402["4.22"] = "C270601"
R0402["4.22K"] = "C25898"
R0402["4.3K"] = "C25899"
R0402["4.42K"] = "C52269"
R0402["4.53K"] = "C79537"
R0402["4.64K"] = "C60154"
R0402["4.7"] = "C25121"
R0402["4.75K"] = "C25901"
R0402["4.75M"] = "C270598"
R0402["4.7K"] = "C29586"
R0402["4.87K"] = "C25902"
R0402["4.99"] = "C25122"
R0402["4.99K"] = "C84352"
R0402["4.99M"] = "C270596"
R0402["40.2"] = "C170311"
R0402["40.2K"] = "C25893"
R0402["402"] = "C41042"
R0402["402K"] = "C25785"
R0402["41.2"] = "C270602"
R0402["41.2K"] = "C26978"
R0402["412"] = "C25112"
R0402["412K"] = "C27008"
R0402["42.2K"] = "C26979"
R0402["422"] = "C67237"
R0402["422K"] = "C60390"
R0402["43"] = "C270600"
R0402["43.2"] = "C25114"
R0402["43.2K"] = "C25894"
R0402["430"] = "C36356"
R0402["430K"] = "C25786"
R0402["432"] = "C25113"
R0402["432K"] = "C25787"
R0402["43K"] = "C8329"
R0402["44.2"] = "C25115"
R0402["44.2K"] = "C25895"
R0402["442"] = "C126137"
R0402["442K"] = "C5101"
R0402["45.3"] = "C45325"
R0402["45.3K"] = "C26980"
R0402["453"] = "C270599"
R0402["453K"] = "C27009"
R0402["46.4K"] = "C52378"
R0402["464"] = "C25116"
R0402["464K"] = "C25789"
R0402["47"] = "C50334"
R0402["47.5"] = "C82290"
R0402["47.5K"] = "C25896"
R0402["470"] = "C270656"
R0402["470K"] = "C37722"
R0402["475"] = "C49065"
R0402["475K"] = "C25791"
R0402["47K"] = "C2028"
R0402["48.7"] = "C270597"
R0402["48.7K"] = "C26981"
R0402["487"] = "C126124"
R0402["487K"] = "C27010"
R0402["49.9"] = "C136850"
R0402["49.9K"] = "C25897"
R0402["499"] = "C57982"
R0402["499K"] = "C25793"
R0402["5.1"] = "C25128"
R0402["5.11"] = "C270593"
R0402["5.11K"] = "C25906"
R0402["5.1K"] = "C2021"
R0402["5.1M"] = "C270595"
R0402["5.23K"] = "C25907"
R0402["5.36K"] = "C93751"
R0402["5.6"] = "C247162"
R0402["5.62K"] = "C25909"
R0402["5.6K"] = "C25908"
R0402["5.76K"] = "C25910"
R0402["5.9K"] = "C38006"
R0402["51"] = "C25503"
R0402["51.1"] = "C270594"
R0402["51.1K"] = "C25904"
R0402["510"] = "C25123"
R0402["510K"] = "C61442"
R0402["511"] = "C25124"
R0402["511K"] = "C64042"
R0402["51K"] = "C25794"
R0402["52.3"] = "C114978"
R0402["52.3K"] = "C26982"
R0402["523"] = "C270592"
R0402["523K"] = "C27011"
R0402["53.6K"] = "C53398"
R0402["536K"] = "C68457"
R0402["54.9"] = "C129765"
R0402["54.9K"] = "C11626"
R0402["549K"] = "C25795"
R0402["56"] = "C84607"
R0402["56.2"] = "C67238"
R0402["56.2K"] = "C54968"
R0402["560"] = "C25126"
R0402["560K"] = "C132339"
R0402["562K"] = "C48838"
R0402["56K"] = "C25796"
R0402["57.6K"] = "C26983"
R0402["576"] = "C45320"
R0402["576K"] = "C27012"
R0402["590K"] = "C46007"
R0402["59K"] = "C32297"
R0402["6.04K"] = "C25913"
R0402["6.19K"] = "C25914"
R0402["6.2"] = "C270589"
R0402["6.2K"] = "C25915"
R0402["6.34K"] = "C45013"
R0402["6.49K"] = "C270374"
R0402["6.65K"] = "C45194"
R0402["6.8"] = "C38373"
R0402["6.81K"] = "C27175"
R0402["6.8K"] = "C25917"
R0402["6.98K"] = "C47500"
R0402["60.4"] = "C144744"
R0402["60.4K"] = "C25911"
R0402["604"] = "C8369"
R0402["604K"] = "C27013"
R0402["61.9K"] = "C25912"
R0402["619K"] = "C247117"
R0402["62"] = "C4962"
R0402["620"] = "C4961"
R0402["620K"] = "C270590"
R0402["62K"] = "C37825"
R0402["63.4K"] = "C38606"
R0402["634K"] = "C270588"
R0402["64.9K"] = "C26984"
R0402["649"] = "C82294"
R0402["66.5K"] = "C29381"
R0402["665"] = "C25129"
R0402["665K"] = "C56583"
R0402["68"] = "C52984"
R0402["68.1"] = "C270587"
R0402["68.1K"] = "C11537"
R0402["680"] = "C25130"
R0402["680K"] = "C4131"
R0402["681K"] = "C25797"
R0402["68K"] = "C77129"
R0402["69.8"] = "C82289"
R0402["69.8K"] = "C26985"
R0402["698"] = "C33359"
R0402["698K"] = "C27015"
R0402["7.15K"] = "C270586"
R0402["7.5"] = "C47764"
R0402["7.5K"] = "C25945"
R0402["7.68K"] = "C25919"
R0402["7.87K"] = "C25920"
R0402["71.5"] = "C270584"
R0402["71.5K"] = "C43534"
R0402["715"] = "C113474"
R0402["715K"] = "C270585"
R0402["73.2"] = "C82295"
R0402["73.2K"] = "C26986"
R0402["732K"] = "C27016"
R0402["75"] = "C38895"
R0402["750"] = "C25132"
R0402["750K"] = "C122545"
R0402["75K"] = "C25798"
R0402["76.8"] = "C270583"
R0402["76.8K"] = "C26987"
R0402["768K"] = "C27017"
R0402["78.7K"] = "C67239"
R0402["787"] = "C270582"
R0402["787K"] = "C27018"
R0402["8.06K"] = "C25923"
R0402["8.2"] = "C270581"
R0402["8.25"] = "C48938"
R0402["8.25K"] = "C95598"
R0402["8.2K"] = "C26079"
R0402["8.45"] = "C247161"
R0402["8.45K"] = "C270579"
R0402["8.66K"] = "C270576"
R0402["8.87K"] = "C36953"
R0402["80.6"] = "C25134"
R0402["80.6K"] = "C25921"
R0402["806"] = "C150511"
R0402["806K"] = "C29263"
R0402["82"] = "C25136"
R0402["82.5"] = "C52037"
R0402["82.5K"] = "C11717"
R0402["820"] = "C25135"
R0402["820K"] = "C67558"
R0402["825K"] = "C58495"
R0402["82K"] = "C4142"
R0402["84.5"] = "C270577"
R0402["84.5K"] = "C26988"
R0402["845K"] = "C270578"
R0402["86.6"] = "C270575"
R0402["86.6K"] = "C19709"
R0402["866K"] = "C27020"
R0402["88.7K"] = "C25922"
R0402["9.09"] = "C245838"
R0402["9.09K"] = "C98847"
R0402["9.1"] = "C270573"
R0402["9.1K"] = "C25947"
R0402["9.31K"] = "C270572"
R0402["9.53K"] = "C96273"
R0402["9.76K"] = "C270420"
R0402["90.9"] = "C129693"
R0402["90.9K"] = "C26989"
R0402["909"] = "C11550"
R0402["909K"] = "C25799"
R0402["91"] = "C270574"
R0402["910"] = "C44933"
R0402["910K"] = "C25572"
R0402["91K"] = "C25573"
R0402["93.1"] = "C25137"
R0402["93.1K"] = "C25925"
R0402["931"] = "C35293"
R0402["931K"] = "C27021"
R0402["95.3"] = "C270571"
R0402["95.3K"] = "C26990"
R0402["953"] = "C113475"
R0402["953K"] = "C25801"
R0402["97.6"] = "C32980"
R0402["97.6K"] = "C62742"
R0402["976K"] = "C25802"
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
		if (value in R0402){
			lcsc = R0402[value]
		}	
		print "F " f_field " \"" lcsc "\" " orientation " " posx " " posy " " size " "flags " " justify " " style " \"LCSC\"";
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