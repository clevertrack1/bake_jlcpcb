# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_0402_1005Metric\""

	//LCSC Part numbers
	
R0402["0"] = "C17168"
R0402["0.05"] = "C270383"
R0402["0.1"] = "C270384"
R0402["0.2"] = "C270629"
R0402["0.22"] = "C270628"
R0402["0.3"] = "C270410"
R0402["0.33"] = "C332660"
R0402["0.36"] = "C270606"
R0402["0.47"] = "C423162"
R0402["0.68"] = "C38005"
R0402["1"] = "C25086"
R0402["1.02M"] = "C26084"
R0402["1.02k"] = "C85373"
R0402["1.07k"] = "C26260"
R0402["1.1"] = "C11803"
R0402["1.13k"] = "C67014"
R0402["1.15k"] = "C29401"
R0402["1.18k"] = "C270651"
R0402["1.1M"] = "C133039"
R0402["1.1k"] = "C25860"
R0402["1.2"] = "C44198"
R0402["1.21k"] = "C25863"
R0402["1.24k"] = "C25864"
R0402["1.27k"] = "C25865"
R0402["1.2M"] = "C43675"
R0402["1.2k"] = "C25862"
R0402["1.3"] = "C247163"
R0402["1.33"] = "C270647"
R0402["1.33M"] = "C270648"
R0402["1.3k"] = "C25866"
R0402["1.43k"] = "C11671"
R0402["1.4M"] = "C270644"
R0402["1.4k"] = "C39650"
R0402["1.5"] = "C270642"
R0402["1.54k"] = "C122549"
R0402["1.58k"] = "C113483"
R0402["1.5M"] = "C22276"
R0402["1.5k"] = "C25867"
R0402["1.6"] = "C407711"
R0402["1.62k"] = "C61897"
R0402["1.65k"] = "C25869"
R0402["1.69M"] = "C38586"
R0402["1.69k"] = "C25870"
R0402["1.6M"] = "C57065"
R0402["1.6k"] = "C4908"
R0402["1.74M"] = "C270637"
R0402["1.74k"] = "C270638"
R0402["1.78k"] = "C113478"
R0402["1.8"] = "C270635"
R0402["1.87k"] = "C270633"
R0402["1.8M"] = "C38587"
R0402["1.8k"] = "C25871"
R0402["1.91k"] = "C36951"
R0402["1.96k"] = "C70427"
R0402["10"] = "C25077"
R0402["10.2k"] = "C11660"
R0402["10.5k"] = "C25850"
R0402["10.7k"] = "C270654"
R0402["100"] = "C25076"
R0402["100k"] = "C25741"
R0402["102k"] = "C26991"
R0402["105"] = "C75737"
R0402["105k"] = "C25742"
R0402["107k"] = "C25743"
R0402["10M"] = "C26082"
R0402["10k"] = "C25744"
R0402["11.3k"] = "C25851"
R0402["11.5k"] = "C270653"
R0402["11.8k"] = "C93752"
R0402["110"] = "C25078"
R0402["110k"] = "C25745"
R0402["113"] = "C95594"
R0402["113k"] = "C25746"
R0402["115k"] = "C25747"
R0402["118"] = "C270652"
R0402["118k"] = "C25748"
R0402["11k"] = "C25749"
R0402["12"] = "C270650"
R0402["12.1k"] = "C25852"
R0402["12.4k"] = "C11692"
R0402["12.7"] = "C247128"
R0402["12.7k"] = "C25853"
R0402["120"] = "C25079"
R0402["120k"] = "C25750"
R0402["121"] = "C25080"
R0402["121k"] = "C11693"
R0402["124"] = "C39886"
R0402["124k"] = "C36777"
R0402["127"] = "C247127"
R0402["127k"] = "C25751"
R0402["12k"] = "C25752"
R0402["13.3k"] = "C122547"
R0402["13.7"] = "C270646"
R0402["13.7k"] = "C25854"
R0402["130"] = "C270649"
R0402["130k"] = "C52929"
R0402["133"] = "C65628"
R0402["133k"] = "C25753"
R0402["137k"] = "C32298"
R0402["13k"] = "C25754"
R0402["14.3k"] = "C25855"
R0402["14.7k"] = "C25856"
R0402["140"] = "C25081"
R0402["140k"] = "C270645"
R0402["143"] = "C270643"
R0402["143k"] = "C82292"
R0402["147"] = "C64531"
R0402["147k"] = "C64171"
R0402["14k"] = "C54831"
R0402["15"] = "C25083"
R0402["15.4"] = "C114988"
R0402["15.4k"] = "C62740"
R0402["15.8k"] = "C26956"
R0402["150"] = "C25082"
R0402["150k"] = "C25755"
R0402["154k"] = "C26993"
R0402["158k"] = "C99856"
R0402["15k"] = "C25756"
R0402["16"] = "C270640"
R0402["16.2"] = "C270639"
R0402["16.2k"] = "C27176"
R0402["16.5k"] = "C25857"
R0402["16.9"] = "C82287"
R0402["16.9k"] = "C25858"
R0402["160"] = "C270641"
R0402["160k"] = "C25757"
R0402["162"] = "C67232"
R0402["162k"] = "C54068"
R0402["165k"] = "C38706"
R0402["169"] = "C36954"
R0402["169k"] = "C25758"
R0402["16k"] = "C25759"
R0402["17.4"] = "C270636"
R0402["17.4k"] = "C26957"
R0402["17.8k"] = "C129766"
R0402["174k"] = "C26994"
R0402["178k"] = "C26995"
R0402["18"] = "C25084"
R0402["18.2"] = "C53516"
R0402["18.2k"] = "C25859"
R0402["18.7k"] = "C11476"
R0402["180"] = "C38941"
R0402["180k"] = "C25760"
R0402["182"] = "C270634"
R0402["182k"] = "C11481"
R0402["187"] = "C39887"
R0402["187k"] = "C25761"
R0402["18k"] = "C25762"
R0402["19.1k"] = "C52036"
R0402["19.6k"] = "C26959"
R0402["191"] = "C25085"
R0402["191k"] = "C270632"
R0402["196"] = "C270631"
R0402["196k"] = "C26996"
R0402["1M"] = "C26083"
R0402["1k"] = "C11702"
R0402["2"] = "C270630"
R0402["2.05k"] = "C60076"
R0402["2.15k"] = "C25878"
R0402["2.1k"] = "C25877"
R0402["2.2"] = "C25101"
R0402["2.21k"] = "C25880"
R0402["2.26k"] = "C270627"
R0402["2.2M"] = "C11490"
R0402["2.2k"] = "C25879"
R0402["2.32k"] = "C82297"
R0402["2.37k"] = "C25881"
R0402["2.4"] = "C270624"
R0402["2.43k"] = "C25883"
R0402["2.49k"] = "C25884"
R0402["2.4k"] = "C25882"
R0402["2.55k"] = "C95596"
R0402["2.61k"] = "C34906"
R0402["2.67k"] = "C82298"
R0402["2.7"] = "C270414"
R0402["2.74k"] = "C33360"
R0402["2.7M"] = "C270621"
R0402["2.7k"] = "C26076"
R0402["2.87k"] = "C113479"
R0402["2.8k"] = "C62741"
R0402["2.94k"] = "C25886"
R0402["20"] = "C25089"
R0402["20.5k"] = "C57105"
R0402["200"] = "C25087"
R0402["200k"] = "C25764"
R0402["205"] = "C25088"
R0402["205k"] = "C26997"
R0402["20M"] = "C30328"
R0402["20k"] = "C25765"
R0402["21.5k"] = "C25872"
R0402["210"] = "C25090"
R0402["210k"] = "C58827"
R0402["215"] = "C52959"
R0402["215k"] = "C11489"
R0402["21k"] = "C25766"
R0402["22"] = "C25092"
R0402["22.1"] = "C59651"
R0402["22.1k"] = "C43473"
R0402["22.6"] = "C25093"
R0402["22.6k"] = "C26960"
R0402["220"] = "C25091"
R0402["220k"] = "C25767"
R0402["221"] = "C247122"
R0402["221k"] = "C26998"
R0402["226"] = "C52960"
R0402["226k"] = "C26999"
R0402["22M"] = "C423111"
R0402["22k"] = "C25768"
R0402["23.2"] = "C82296"
R0402["23.2k"] = "C25873"
R0402["23.7"] = "C67233"
R0402["23.7k"] = "C82134"
R0402["232"] = "C270626"
R0402["232k"] = "C27000"
R0402["237"] = "C52962"
R0402["237k"] = "C27001"
R0402["24"] = "C270625"
R0402["24.3k"] = "C26969"
R0402["24.9"] = "C5099"
R0402["24.9k"] = "C25874"
R0402["240"] = "C25094"
R0402["240k"] = "C64043"
R0402["243"] = "C25095"
R0402["243k"] = "C43249"
R0402["249"] = "C25096"
R0402["249k"] = "C11425"
R0402["24k"] = "C25769"
R0402["25.5"] = "C129579"
R0402["25.5k"] = "C26970"
R0402["255k"] = "C270623"
R0402["26.1"] = "C25098"
R0402["26.1k"] = "C25875"
R0402["26.7k"] = "C25876"
R0402["261"] = "C25097"
R0402["261k"] = "C27003"
R0402["267k"] = "C270622"
R0402["27"] = "C25100"
R0402["27.4"] = "C31439"
R0402["27.4k"] = "C26971"
R0402["270"] = "C25099"
R0402["270k"] = "C25770"
R0402["274"] = "C270620"
R0402["274k"] = "C27004"
R0402["27k"] = "C25771"
R0402["28.7k"] = "C26972"
R0402["280k"] = "C46006"
R0402["28k"] = "C25772"
R0402["29.4"] = "C82293"
R0402["29.4k"] = "C26973"
R0402["294"] = "C270618"
R0402["294k"] = "C40836"
R0402["2M"] = "C11512"
R0402["2k"] = "C4109"
R0402["3"] = "C327280"
R0402["3.01k"] = "C25889"
R0402["3.09k"] = "C11460"
R0402["3.16k"] = "C11462"
R0402["3.24k"] = "C11457"
R0402["3.3"] = "C270612"
R0402["3.32"] = "C60073"
R0402["3.32k"] = "C60075"
R0402["3.3M"] = "C270613"
R0402["3.3k"] = "C25890"
R0402["3.48k"] = "C22065"
R0402["3.4k"] = "C4940"
R0402["3.57k"] = "C270609"
R0402["3.6"] = "C45432"
R0402["3.65k"] = "C67235"
R0402["3.6M"] = "C270408"
R0402["3.6k"] = "C25891"
R0402["3.74k"] = "C15172"
R0402["3.83k"] = "C67236"
R0402["3.9"] = "C44937"
R0402["3.92k"] = "C25892"
R0402["3.9M"] = "C30329"
R0402["3.9k"] = "C51721"
R0402["30"] = "C270617"
R0402["30.1"] = "C67234"
R0402["30.1k"] = "C29402"
R0402["30.9k"] = "C270615"
R0402["300"] = "C25102"
R0402["300k"] = "C25774"
R0402["301"] = "C25103"
R0402["301k"] = "C25775"
R0402["309"] = "C270616"
R0402["309k"] = "C122546"
R0402["30k"] = "C141650"
R0402["31.6k"] = "C11463"
R0402["316"] = "C247119"
R0402["316k"] = "C25777"
R0402["32.4"] = "C270614"
R0402["32.4k"] = "C26974"
R0402["324k"] = "C113480"
R0402["33"] = "C25105"
R0402["33.2"] = "C25106"
R0402["33.2k"] = "C122548"
R0402["330"] = "C25104"
R0402["330k"] = "C25778"
R0402["332"] = "C29281"
R0402["332k"] = "C44358"
R0402["33k"] = "C25779"
R0402["34"] = "C270611"
R0402["34.8"] = "C270610"
R0402["34.8k"] = "C47493"
R0402["340"] = "C247118"
R0402["348"] = "C25107"
R0402["348k"] = "C25780"
R0402["34k"] = "C48939"
R0402["35.7"] = "C270608"
R0402["35.7k"] = "C26975"
R0402["357k"] = "C27005"
R0402["36"] = "C57678"
R0402["36.5k"] = "C25887"
R0402["360"] = "C270607"
R0402["360k"] = "C45956"
R0402["365"] = "C270605"
R0402["365k"] = "C27006"
R0402["36k"] = "C43676"
R0402["37.4"] = "C25108"
R0402["37.4k"] = "C25888"
R0402["374"] = "C270604"
R0402["374k"] = "C25781"
R0402["38.3k"] = "C26976"
R0402["383k"] = "C45993"
R0402["39"] = "C25110"
R0402["39.2"] = "C45323"
R0402["39.2k"] = "C57106"
R0402["390"] = "C25109"
R0402["390k"] = "C25782"
R0402["392"] = "C92196"
R0402["392k"] = "C27007"
R0402["39k"] = "C25783"
R0402["3M"] = "C56582"
R0402["3k"] = "C141649"
R0402["4.02"] = "C270603"
R0402["4.02k"] = "C43251"
R0402["4.12k"] = "C60081"
R0402["4.22"] = "C270601"
R0402["4.22k"] = "C25898"
R0402["4.3M"] = "C270405"
R0402["4.3k"] = "C25899"
R0402["4.42k"] = "C52269"
R0402["4.53k"] = "C79537"
R0402["4.64k"] = "C60154"
R0402["4.7"] = "C25121"
R0402["4.75M"] = "C270598"
R0402["4.75k"] = "C25901"
R0402["4.7M"] = "C26091"
R0402["4.7k"] = "C25900"
R0402["4.87k"] = "C25902"
R0402["4.99"] = "C25122"
R0402["4.99M"] = "C270596"
R0402["4.99k"] = "C84352"
R0402["40.2"] = "C25111"
R0402["40.2k"] = "C25893"
R0402["402"] = "C41042"
R0402["402k"] = "C25785"
R0402["41.2"] = "C270602"
R0402["41.2k"] = "C26978"
R0402["412"] = "C25112"
R0402["412k"] = "C27008"
R0402["42.2k"] = "C26979"
R0402["422"] = "C67237"
R0402["422k"] = "C60390"
R0402["43"] = "C270600"
R0402["43.2"] = "C25114"
R0402["43.2k"] = "C25894"
R0402["430"] = "C36356"
R0402["430k"] = "C25786"
R0402["432"] = "C25113"
R0402["432k"] = "C25787"
R0402["43k"] = "C8329"
R0402["44.2"] = "C25115"
R0402["44.2k"] = "C25895"
R0402["442"] = "C126137"
R0402["442k"] = "C5101"
R0402["45.3"] = "C45325"
R0402["45.3k"] = "C26980"
R0402["450k"] = "C407681"
R0402["453"] = "C270599"
R0402["453k"] = "C27009"
R0402["46.4k"] = "C52378"
R0402["464"] = "C25116"
R0402["464k"] = "C25789"
R0402["47"] = "C25118"
R0402["47.5"] = "C82290"
R0402["47.5k"] = "C25896"
R0402["470"] = "C25117"
R0402["470k"] = "C25790"
R0402["475"] = "C49065"
R0402["475k"] = "C25791"
R0402["47k"] = "C25792"
R0402["48.7"] = "C270597"
R0402["48.7k"] = "C26981"
R0402["487"] = "C126124"
R0402["487k"] = "C27010"
R0402["49.9"] = "C25120"
R0402["49.9k"] = "C25897"
R0402["499"] = "C4125"
R0402["499k"] = "C25793"
R0402["5.1"] = "C25128"
R0402["5.11"] = "C270593"
R0402["5.11k"] = "C25906"
R0402["5.1M"] = "C270595"
R0402["5.1k"] = "C25905"
R0402["5.23k"] = "C25907"
R0402["5.36k"] = "C93751"
R0402["5.6"] = "C247162"
R0402["5.62k"] = "C25909"
R0402["5.6M"] = "C270404"
R0402["5.6k"] = "C25908"
R0402["5.76k"] = "C25910"
R0402["5.9k"] = "C38006"
R0402["51"] = "C25125"
R0402["51.1"] = "C270594"
R0402["51.1k"] = "C25904"
R0402["510"] = "C25123"
R0402["510k"] = "C11616"
R0402["511"] = "C25124"
R0402["511k"] = "C64042"
R0402["51k"] = "C25794"
R0402["52.3"] = "C114978"
R0402["52.3k"] = "C26982"
R0402["523"] = "C270592"
R0402["523k"] = "C27011"
R0402["53.6k"] = "C53398"
R0402["536"] = "C276180"
R0402["536k"] = "C68457"
R0402["54.9"] = "C129765"
R0402["54.9k"] = "C11626"
R0402["549k"] = "C25795"
R0402["56"] = "C25127"
R0402["56.2"] = "C67238"
R0402["56.2k"] = "C54968"
R0402["560"] = "C25126"
R0402["560k"] = "C132339"
R0402["562k"] = "C48838"
R0402["56k"] = "C25796"
R0402["57.6k"] = "C26983"
R0402["576"] = "C45320"
R0402["576k"] = "C27012"
R0402["590k"] = "C46007"
R0402["59k"] = "C32297"
R0402["6.04k"] = "C25913"
R0402["6.19k"] = "C25914"
R0402["6.2"] = "C270589"
R0402["6.2k"] = "C25915"
R0402["6.34k"] = "C45013"
R0402["6.49k"] = "C25916"
R0402["6.65k"] = "C45194"
R0402["6.8"] = "C38373"
R0402["6.81k"] = "C27175"
R0402["6.8M"] = "C26093"
R0402["6.8k"] = "C25917"
R0402["6.98k"] = "C47500"
R0402["60.4"] = "C60310"
R0402["60.4k"] = "C25911"
R0402["604"] = "C8369"
R0402["604k"] = "C27013"
R0402["61.9k"] = "C25912"
R0402["619k"] = "C247117"
R0402["62"] = "C4962"
R0402["620"] = "C4961"
R0402["620k"] = "C270590"
R0402["62k"] = "C37825"
R0402["63.4k"] = "C38606"
R0402["634k"] = "C27014"
R0402["64.9k"] = "C26984"
R0402["649"] = "C82294"
R0402["66.5k"] = "C29381"
R0402["665"] = "C25129"
R0402["665k"] = "C56583"
R0402["68"] = "C25131"
R0402["68.1"] = "C270587"
R0402["68.1k"] = "C11537"
R0402["680"] = "C25130"
R0402["680k"] = "C4131"
R0402["681k"] = "C25797"
R0402["68k"] = "C36871"
R0402["69.8"] = "C82289"
R0402["69.8k"] = "C26985"
R0402["698"] = "C33359"
R0402["698k"] = "C27015"
R0402["7.15k"] = "C270586"
R0402["7.5"] = "C47764"
R0402["7.5M"] = "C270400"
R0402["7.5k"] = "C25918"
R0402["7.68k"] = "C25919"
R0402["7.87k"] = "C25920"
R0402["71.5"] = "C270584"
R0402["71.5k"] = "C43534"
R0402["715"] = "C113474"
R0402["715k"] = "C270585"
R0402["73.2"] = "C82295"
R0402["73.2k"] = "C26986"
R0402["732k"] = "C27016"
R0402["75"] = "C25133"
R0402["750"] = "C25132"
R0402["750k"] = "C122545"
R0402["75k"] = "C25798"
R0402["76.8"] = "C270583"
R0402["76.8k"] = "C26987"
R0402["768k"] = "C27017"
R0402["78.7k"] = "C67239"
R0402["787"] = "C270582"
R0402["787k"] = "C27018"
R0402["8.06k"] = "C25923"
R0402["8.2"] = "C270581"
R0402["8.25"] = "C48938"
R0402["8.25k"] = "C95598"
R0402["8.2M"] = "C26094"
R0402["8.2k"] = "C25924"
R0402["8.45"] = "C247161"
R0402["8.45k"] = "C270579"
R0402["8.66k"] = "C270576"
R0402["8.87k"] = "C36953"
R0402["80.6"] = "C25134"
R0402["80.6k"] = "C25921"
R0402["806k"] = "C29263"
R0402["82"] = "C25136"
R0402["82.5"] = "C52037"
R0402["82.5k"] = "C11717"
R0402["820"] = "C25135"
R0402["820k"] = "C67558"
R0402["825k"] = "C58495"
R0402["82k"] = "C4142"
R0402["84.5"] = "C270577"
R0402["84.5k"] = "C26988"
R0402["845k"] = "C27019"
R0402["86.6"] = "C270575"
R0402["86.6k"] = "C19709"
R0402["866k"] = "C27020"
R0402["88.7k"] = "C25922"
R0402["9.09"] = "C245838"
R0402["9.09k"] = "C11549"
R0402["9.1"] = "C270573"
R0402["9.1M"] = "C11868"
R0402["9.1k"] = "C25926"
R0402["9.31k"] = "C270572"
R0402["9.53k"] = "C96273"
R0402["9.76k"] = "C270420"
R0402["90.9"] = "C129693"
R0402["90.9k"] = "C26989"
R0402["909"] = "C11550"
R0402["909k"] = "C25799"
R0402["91"] = "C270574"
R0402["910"] = "C44933"
R0402["910k"] = "C25800"
R0402["91M"] = "C423094"
R0402["91k"] = "C4147"
R0402["93.1"] = "C25137"
R0402["93.1k"] = "C25925"
R0402["931"] = "C35293"
R0402["931k"] = "C27021"
R0402["95.3"] = "C270571"
R0402["95.3k"] = "C26990"
R0402["953"] = "C113475"
R0402["953k"] = "C25801"
R0402["97.6"] = "C32980"
R0402["97.6k"] = "C62742"
R0402["976k"] = "C25802"

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
			if (value in R0402){
				lcsc = R0402[value]
			}	
			print "F " f_field " \"" lcsc "\" " orientation " " posx " " posy " " size " 0001 " justify " " style " \"LCSC\"";
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
				if (rindex in R0402){
					if ($3 !~ R0402[rindex] ){
						add_error = 1
						error_msg =  "expected " R0402[rindex]
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
