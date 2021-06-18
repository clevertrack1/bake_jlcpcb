# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_1206_3216Metric\""

	//LCSC Part numbers

R1206["0"] = "C17888"
R1206["0.001"] = "C76298"
R1206["0.002"] = "C326608"
R1206["0.005"] = "C270821"
R1206["0.007"] = "C76302"
R1206["0.008"] = "C270824"
R1206["0.01"] = "C247541"
R1206["0.013"] = "C247554"
R1206["0.015"] = "C105378"
R1206["0.016"] = "C247553"
R1206["0.018"] = "C247552"
R1206["0.02"] = "C247540"
R1206["0.022"] = "C247539"
R1206["0.024"] = "C270906"
R1206["0.025"] = "C247538"
R1206["0.027"] = "C247551"
R1206["0.03"] = "C247537"
R1206["0.033"] = "C247536"
R1206["0.036"] = "C247535"
R1206["0.039"] = "C247549"
R1206["0.04"] = "C247548"
R1206["0.043"] = "C247532"
R1206["0.047"] = "C127683"
R1206["0.05"] = "C247531"
R1206["0.051"] = "C247547"
R1206["0.056"] = "C247546"
R1206["0.062"] = "C247528"
R1206["0.068"] = "C247545"
R1206["0.075"] = "C247526"
R1206["0.082"] = "C247543"
R1206["0.091"] = "C247542"
R1206["0.1"] = "C25334"
R1206["0.11"] = "C247458"
R1206["0.12"] = "C24435"
R1206["0.13"] = "C247456"
R1206["0.14"] = "C247455"
R1206["0.15"] = "C247454"
R1206["0.16"] = "C54892"
R1206["0.18"] = "C247452"
R1206["0.2"] = "C25335"
R1206["0.22"] = "C25336"
R1206["0.24"] = "C247450"
R1206["0.25"] = "C49283"
R1206["0.27"] = "C247448"
R1206["0.3"] = "C59882"
R1206["0.33"] = "C323760"
R1206["0.36"] = "C25338"
R1206["0.39"] = "C25339"
R1206["0.4"] = "C247521"
R1206["0.43"] = "C247435"
R1206["0.47"] = "C28320"
R1206["0.5"] = "C247433"
R1206["0.51"] = "C247432"
R1206["0.511"] = "C270903"
R1206["0.56"] = "C247431"
R1206["0.62"] = "C25341"
R1206["0.68"] = "C247429"
R1206["0.75"] = "C19107"
R1206["0.82"] = "C247427"
R1206["0.91"] = "C38521"
R1206["1"] = "C17928"
R1206["1.05K"] = "C247425"
R1206["1.07"] = "C136113"
R1206["1.07K"] = "C247424"
R1206["1.1"] = "C17890"
R1206["1.13"] = "C247520"
R1206["1.13K"] = "C68406"
R1206["1.15K"] = "C247423"
R1206["1.18"] = "C247519"
R1206["1.1K"] = "C17889"
R1206["1.1M"] = "C83722"
R1206["1.2"] = "C25358"
R1206["1.21"] = "C247518"
R1206["1.21K"] = "C247422"
R1206["1.24K"] = "C55569"
R1206["1.27K"] = "C247421"
R1206["1.2K"] = "C75446"
R1206["1.2M"] = "C22107"
R1206["1.3"] = "C17893"
R1206["1.37K"] = "C17895"
R1206["1.3K"] = "C17892"
R1206["1.43K"] = "C247420"
R1206["1.47"] = "C247516"
R1206["1.47M"] = "C247517"
R1206["1.4K"] = "C26029"
R1206["1.5"] = "C25359"
R1206["1.54"] = "C247515"
R1206["1.54K"] = "C247418"
R1206["1.58"] = "C247514"
R1206["1.58K"] = "C63498"
R1206["1.5K"] = "C26030"
R1206["1.5M"] = "C17898"
R1206["1.6"] = "C17897"
R1206["1.62K"] = "C247417"
R1206["1.65"] = "C79297"
R1206["1.65K"] = "C42983"
R1206["1.69K"] = "C247416"
R1206["1.6K"] = "C17896"
R1206["1.6M"] = "C247513"
R1206["1.74K"] = "C247415"
R1206["1.78"] = "C247512"
R1206["1.78K"] = "C247414"
R1206["1.8"] = "C25360"
R1206["1.82"] = "C247511"
R1206["1.82K"] = "C247413"
R1206["1.87"] = "C247510"
R1206["1.8K"] = "C22108"
R1206["1.8M"] = "C15969"
R1206["1.91K"] = "C247412"
R1206["1.91M"] = "C43544"
R1206["1.96"] = "C247509"
R1206["1.96K"] = "C247411"
R1206["10"] = "C95530"
R1206["10.2K"] = "C247410"
R1206["10.5"] = "C247409"
R1206["10.5K"] = "C75582"
R1206["10.7"] = "C247407"
R1206["10.7K"] = "C247408"
R1206["100"] = "C385916"
R1206["100K"] = "C95527"
R1206["100M"] = "C59781"
R1206["102"] = "C247405"
R1206["102K"] = "C247406"
R1206["105"] = "C247403"
R1206["105K"] = "C247404"
R1206["107"] = "C247401"
R1206["107K"] = "C247402"
R1206["10K"] = "C43781"
R1206["10M"] = "C26119"
R1206["11"] = "C17907"
R1206["11.3"] = "C247400"
R1206["11.3K"] = "C44912"
R1206["11.5"] = "C247399"
R1206["11.5K"] = "C43670"
R1206["11.8"] = "C247397"
R1206["11.8K"] = "C247398"
R1206["110"] = "C17905"
R1206["110K"] = "C17904"
R1206["113"] = "C247395"
R1206["113K"] = "C247396"
R1206["115"] = "C247393"
R1206["115K"] = "C247394"
R1206["118"] = "C247392"
R1206["11K"] = "C17906"
R1206["12"] = "C25352"
R1206["12.1"] = "C247390"
R1206["12.1K"] = "C247391"
R1206["12.4K"] = "C139133"
R1206["12.7"] = "C247388"
R1206["12.7K"] = "C247389"
R1206["120"] = "C191714"
R1206["120K"] = "C95531"
R1206["121"] = "C40089"
R1206["121K"] = "C17910"
R1206["124"] = "C45030"
R1206["124K"] = "C247387"
R1206["127"] = "C24883"
R1206["127K"] = "C247386"
R1206["12K"] = "C17912"
R1206["12M"] = "C56487"
R1206["13"] = "C81755"
R1206["13.3"] = "C247385"
R1206["13.3K"] = "C93144"
R1206["13.7"] = "C247384"
R1206["13.7K"] = "C54124"
R1206["130"] = "C17914"
R1206["130K"] = "C82092"
R1206["137"] = "C247383"
R1206["137K"] = "C30544"
R1206["13K"] = "C34847"
R1206["14"] = "C270905"
R1206["14.3"] = "C247381"
R1206["14.3K"] = "C247382"
R1206["14.7"] = "C247379"
R1206["140"] = "C25342"
R1206["143K"] = "C247378"
R1206["147"] = "C247377"
R1206["14K"] = "C17915"
R1206["15"] = "C25354"
R1206["15.4"] = "C247375"
R1206["15.4K"] = "C247376"
R1206["15.8"] = "C247374"
R1206["15.8K"] = "C63896"
R1206["150"] = "C319865"
R1206["150K"] = "C17916"
R1206["158"] = "C247372"
R1206["158K"] = "C247373"
R1206["15K"] = "C81754"
R1206["15M"] = "C247451"
R1206["16"] = "C17920"
R1206["16.2"] = "C41712"
R1206["16.2K"] = "C247371"
R1206["16.5"] = "C110596"
R1206["16.9"] = "C247370"
R1206["160"] = "C17919"
R1206["160K"] = "C4437"
R1206["162"] = "C247368"
R1206["162K"] = "C247369"
R1206["165K"] = "C247367"
R1206["169"] = "C106195"
R1206["169K"] = "C247366"
R1206["16K"] = "C25829"
R1206["17.4"] = "C247364"
R1206["17.4K"] = "C247365"
R1206["17.8"] = "C247362"
R1206["17.8K"] = "C247363"
R1206["174K"] = "C247361"
R1206["178K"] = "C247360"
R1206["18"] = "C247146"
R1206["18.2K"] = "C54228"
R1206["18.7"] = "C116140"
R1206["180"] = "C17924"
R1206["180K"] = "C17923"
R1206["182"] = "C247358"
R1206["182K"] = "C17925"
R1206["187"] = "C247356"
R1206["187K"] = "C247357"
R1206["18K"] = "C17921"
R1206["19.1K"] = "C74154"
R1206["19.6"] = "C247354"
R1206["19.6K"] = "C247355"
R1206["191"] = "C247353"
R1206["191K"] = "C83723"
R1206["196"] = "C247352"
R1206["1K"] = "C95522"
R1206["1M"] = "C190840"
R1206["2"] = "C17942"
R1206["2.05"] = "C247508"
R1206["2.05K"] = "C247351"
R1206["2.1"] = "C247506"
R1206["2.15"] = "C247507"
R1206["2.15K"] = "C247350"
R1206["2.1K"] = "C63499"
R1206["2.2"] = "C17947"
R1206["2.21"] = "C247505"
R1206["2.26K"] = "C247349"
R1206["2.2K"] = "C49508"
R1206["2.2M"] = "C26121"
R1206["2.32K"] = "C247348"
R1206["2.37"] = "C247504"
R1206["2.37K"] = "C54231"
R1206["2.4"] = "C15544"
R1206["2.43K"] = "C247347"
R1206["2.49"] = "C46664"
R1206["2.49M"] = "C46821"
R1206["2.4K"] = "C17949"
R1206["2.4M"] = "C26122"
R1206["2.55"] = "C247503"
R1206["2.55K"] = "C247346"
R1206["2.67"] = "C76395"
R1206["2.67K"] = "C247345"
R1206["2.7"] = "C25371"
R1206["2.74"] = "C247502"
R1206["2.74K"] = "C81250"
R1206["2.7K"] = "C17950"
R1206["2.7M"] = "C17951"
R1206["2.8"] = "C28420"
R1206["2.87"] = "C85725"
R1206["2.87K"] = "C247344"
R1206["2.8K"] = "C61834"
R1206["2.8M"] = "C247501"
R1206["2.94"] = "C85726"
R1206["20"] = "C95220"
R1206["20.5K"] = "C247343"
R1206["200"] = "C81757"
R1206["200K"] = "C56009"
R1206["205"] = "C247341"
R1206["205K"] = "C247342"
R1206["207"] = "C247309"
R1206["20K"] = "C311935"
R1206["20M"] = "C26125"
R1206["21.5K"] = "C26031"
R1206["210K"] = "C247340"
R1206["215"] = "C247338"
R1206["215K"] = "C247339"
R1206["21K"] = "C17953"
R1206["22"] = "C57252"
R1206["22.1"] = "C247336"
R1206["22.1K"] = "C247337"
R1206["22.6K"] = "C247335"
R1206["220"] = "C17957"
R1206["220K"] = "C17956"
R1206["221"] = "C47909"
R1206["221K"] = "C73039"
R1206["226"] = "C247334"
R1206["226K"] = "C30273"
R1206["22K"] = "C25830"
R1206["22M"] = "C41755"
R1206["23.2"] = "C66686"
R1206["23.2K"] = "C247333"
R1206["23.7"] = "C247331"
R1206["23.7K"] = "C247332"
R1206["232"] = "C247330"
R1206["237"] = "C247329"
R1206["237K"] = "C63897"
R1206["24"] = "C17963"
R1206["24.3"] = "C247327"
R1206["24.3K"] = "C247328"
R1206["24.9"] = "C17962"
R1206["24.9K"] = "C18000"
R1206["240"] = "C56636"
R1206["240K"] = "C18001"
R1206["243"] = "C247325"
R1206["243K"] = "C247326"
R1206["249"] = "C17959"
R1206["249K"] = "C95521"
R1206["24K"] = "C17960"
R1206["25.5"] = "C247324"
R1206["255"] = "C45424"
R1206["255K"] = "C62953"
R1206["26.1K"] = "C247323"
R1206["26.7"] = "C247321"
R1206["26.7K"] = "C247322"
R1206["261K"] = "C247320"
R1206["267"] = "C247317"
R1206["267K"] = "C247318"
R1206["27"] = "C25367"
R1206["27.4"] = "C247315"
R1206["27.4K"] = "C247316"
R1206["270"] = "C17941"
R1206["270K"] = "C17940"
R1206["274"] = "C247313"
R1206["274K"] = "C247314"
R1206["27K"] = "C17943"
R1206["28.7"] = "C247311"
R1206["28.7K"] = "C247312"
R1206["280"] = "C18178"
R1206["280K"] = "C247310"
R1206["287K"] = "C21635"
R1206["28K"] = "C25831"
R1206["29.4"] = "C247307"
R1206["29.4K"] = "C247308"
R1206["294K"] = "C247306"
R1206["2K"] = "C17944"
R1206["2M"] = "C26120"
R1206["3"] = "C17939"
R1206["3.01"] = "C247500"
R1206["3.01K"] = "C47424"
R1206["3.09K"] = "C247305"
R1206["3.16K"] = "C60483"
R1206["3.3"] = "C25381"
R1206["3.32"] = "C247499"
R1206["3.32K"] = "C33886"
R1206["3.3K"] = "C95524"
R1206["3.3M"] = "C46662"
R1206["3.4"] = "C247497"
R1206["3.48"] = "C247498"
R1206["3.48K"] = "C40574"
R1206["3.4K"] = "C247304"
R1206["3.57"] = "C247496"
R1206["3.57K"] = "C55074"
R1206["3.6"] = "C17998"
R1206["3.65"] = "C247495"
R1206["3.65K"] = "C247303"
R1206["3.6K"] = "C17882"
R1206["3.6M"] = "C46661"
R1206["3.74"] = "C17881"
R1206["3.83"] = "C247494"
R1206["3.83K"] = "C247302"
R1206["3.9"] = "C25382"
R1206["3.92"] = "C247493"
R1206["3.9K"] = "C17883"
R1206["3.9M"] = "C57647"
R1206["30"] = "C17886"
R1206["30.1K"] = "C54229"
R1206["30.9"] = "C247301"
R1206["300"] = "C81756"
R1206["300K"] = "C95520"
R1206["301"] = "C247300"
R1206["301K"] = "C43554"
R1206["309"] = "C247299"
R1206["30K"] = "C17999"
R1206["31.6"] = "C247298"
R1206["31.6K"] = "C55346"
R1206["316"] = "C105608"
R1206["316K"] = "C247297"
R1206["32.4"] = "C247295"
R1206["32.4K"] = "C247296"
R1206["324"] = "C247293"
R1206["324K"] = "C247294"
R1206["33"] = "C25375"
R1206["33.2K"] = "C42987"
R1206["330"] = "C17930"
R1206["330K"] = "C95523"
R1206["332"] = "C247291"
R1206["332K"] = "C58968"
R1206["33K"] = "C18004"
R1206["34"] = "C247286"
R1206["34.8"] = "C247289"
R1206["34.8K"] = "C247290"
R1206["348"] = "C247287"
R1206["348K"] = "C247288"
R1206["34K"] = "C59575"
R1206["35.7"] = "C83725"
R1206["35.7K"] = "C247285"
R1206["357"] = "C60238"
R1206["357K"] = "C43696"
R1206["36"] = "C18006"
R1206["36.5"] = "C247283"
R1206["36.5K"] = "C247284"
R1206["360"] = "C17932"
R1206["360K"] = "C17931"
R1206["365"] = "C172882"
R1206["365K"] = "C247282"
R1206["36K"] = "C18007"
R1206["37.4"] = "C247280"
R1206["374"] = "C247279"
R1206["374K"] = "C86993"
R1206["38.3"] = "C45041"
R1206["38.3K"] = "C247278"
R1206["383"] = "C105607"
R1206["383K"] = "C247277"
R1206["39"] = "C22198"
R1206["39.2"] = "C247275"
R1206["39.2K"] = "C247276"
R1206["390"] = "C4491"
R1206["390K"] = "C17933"
R1206["392"] = "C247273"
R1206["392K"] = "C247274"
R1206["39K"] = "C18008"
R1206["3K"] = "C95525"
R1206["3M"] = "C26123"
R1206["4.12"] = "C247492"
R1206["4.12K"] = "C247272"
R1206["4.22"] = "C57568"
R1206["4.22K"] = "C72256"
R1206["4.3"] = "C18010"
R1206["4.32"] = "C247491"
R1206["4.32K"] = "C247271"
R1206["4.3K"] = "C18009"
R1206["4.3M"] = "C47772"
R1206["4.42"] = "C247490"
R1206["4.42K"] = "C47426"
R1206["4.53"] = "C247489"
R1206["4.53K"] = "C75577"
R1206["4.64"] = "C247488"
R1206["4.64K"] = "C247270"
R1206["4.7"] = "C17937"
R1206["4.75"] = "C247487"
R1206["4.75K"] = "C17935"
R1206["4.7K"] = "C49509"
R1206["4.7M"] = "C37800"
R1206["4.87"] = "C247486"
R1206["4.87K"] = "C247269"
R1206["4.99"] = "C55444"
R1206["4.99K"] = "C57609"
R1206["4.99M"] = "C84087"
R1206["40.2"] = "C38337"
R1206["402"] = "C247268"
R1206["402K"] = "C25832"
R1206["41.2"] = "C247266"
R1206["41.2K"] = "C247267"
R1206["412"] = "C247264"
R1206["412K"] = "C247265"
R1206["42.2"] = "C247263"
R1206["422"] = "C247261"
R1206["422K"] = "C247262"
R1206["43"] = "C247144"
R1206["43.2"] = "C247260"
R1206["43.2K"] = "C17966"
R1206["430"] = "C17965"
R1206["430K"] = "C73035"
R1206["432"] = "C247258"
R1206["432K"] = "C247259"
R1206["43K"] = "C18013"
R1206["44.2"] = "C247256"
R1206["44.2K"] = "C247257"
R1206["442K"] = "C247255"
R1206["45.3"] = "C247253"
R1206["453K"] = "C247252"
R1206["46.4"] = "C17967"
R1206["46.4K"] = "C247251"
R1206["464"] = "C247250"
R1206["47"] = "C25384"
R1206["47.5K"] = "C42986"
R1206["470"] = "C95529"
R1206["470K"] = "C67089"
R1206["475"] = "C247249"
R1206["475K"] = "C74155"
R1206["47K"] = "C49510"
R1206["48.7"] = "C247247"
R1206["48.7K"] = "C247248"
R1206["487"] = "C247245"
R1206["487K"] = "C247246"
R1206["49.9"] = "C18018"
R1206["49.9K"] = "C18017"
R1206["499"] = "C18016"
R1206["499K"] = "C34629"
R1206["5.1"] = "C18020"
R1206["5.11"] = "C247484"
R1206["5.11K"] = "C17968"
R1206["5.1K"] = "C26033"
R1206["5.1M"] = "C40823"
R1206["5.36"] = "C247483"
R1206["5.49"] = "C247482"
R1206["5.49K"] = "C247244"
R1206["5.6"] = "C25390"
R1206["5.62"] = "C247481"
R1206["5.62K"] = "C247243"
R1206["5.6K"] = "C18028"
R1206["5.6M"] = "C247480"
R1206["5.76"] = "C247479"
R1206["5.9"] = "C17988"
R1206["5.9K"] = "C247242"
R1206["51"] = "C18019"
R1206["51.1"] = "C17989"
R1206["51.1K"] = "C247241"
R1206["510"] = "C17991"
R1206["510K"] = "C17990"
R1206["511"] = "C247240"
R1206["51K"] = "C81753"
R1206["52.3"] = "C247238"
R1206["52.3K"] = "C247239"
R1206["523"] = "C247236"
R1206["523K"] = "C247237"
R1206["536K"] = "C247235"
R1206["54.9K"] = "C247234"
R1206["548K"] = "C247232"
R1206["549"] = "C247231"
R1206["549K"] = "C134157"
R1206["56"] = "C17995"
R1206["56.2"] = "C247230"
R1206["56.2K"] = "C63497"
R1206["560"] = "C17994"
R1206["560K"] = "C17993"
R1206["562"] = "C247228"
R1206["562K"] = "C247229"
R1206["56K"] = "C18029"
R1206["57.6K"] = "C247227"
R1206["576"] = "C247225"
R1206["576K"] = "C247226"
R1206["59"] = "C247221"
R1206["590"] = "C247223"
R1206["590K"] = "C247224"
R1206["59K"] = "C247222"
R1206["6.04"] = "C247478"
R1206["6.04K"] = "C247220"
R1206["6.19"] = "C247477"
R1206["6.19K"] = "C247219"
R1206["6.2"] = "C25344"
R1206["6.2K"] = "C17996"
R1206["6.2M"] = "C36926"
R1206["6.34"] = "C247476"
R1206["6.34K"] = "C75581"
R1206["6.49"] = "C247475"
R1206["6.49K"] = "C43005"
R1206["6.65"] = "C247474"
R1206["6.65K"] = "C247218"
R1206["6.8"] = "C2884"
R1206["6.81K"] = "C42985"
R1206["6.8K"] = "C190839"
R1206["6.8M"] = "C247142"
R1206["6.98"] = "C247473"
R1206["6.98K"] = "C247217"
R1206["60.4"] = "C57572"
R1206["60.4K"] = "C82093"
R1206["604K"] = "C247216"
R1206["61.9"] = "C247213"
R1206["61.9K"] = "C247214"
R1206["619"] = "C247212"
R1206["619K"] = "C45833"
R1206["62"] = "C17971"
R1206["620"] = "C17973"
R1206["620K"] = "C17972"
R1206["62K"] = "C18021"
R1206["63.4"] = "C45027"
R1206["63.4K"] = "C247211"
R1206["634K"] = "C247210"
R1206["64.9"] = "C30846"
R1206["649"] = "C247208"
R1206["649K"] = "C247209"
R1206["66.5"] = "C247206"
R1206["66.5K"] = "C247207"
R1206["665"] = "C54230"
R1206["665K"] = "C78210"
R1206["68"] = "C17976"
R1206["68.1"] = "C247205"
R1206["68.1K"] = "C73040"
R1206["680"] = "C17975"
R1206["680K"] = "C17974"
R1206["681"] = "C247203"
R1206["681K"] = "C247204"
R1206["684"] = "C247215"
R1206["68K"] = "C25834"
R1206["69.8K"] = "C247202"
R1206["698"] = "C247200"
R1206["698K"] = "C247201"
R1206["7.15"] = "C247472"
R1206["7.32"] = "C247471"
R1206["7.32K"] = "C247199"
R1206["7.5"] = "C17977"
R1206["7.5K"] = "C17978"
R1206["7.5M"] = "C247470"
R1206["7.68K"] = "C43546"
R1206["7.87"] = "C247469"
R1206["71.5"] = "C247198"
R1206["71.5K"] = "C49822"
R1206["715"] = "C247196"
R1206["715K"] = "C247197"
R1206["73.2"] = "C247194"
R1206["73.2K"] = "C247195"
R1206["732K"] = "C43002"
R1206["75"] = "C17987"
R1206["750"] = "C17985"
R1206["750K"] = "C25835"
R1206["75K"] = "C17986"
R1206["76.8"] = "C247192"
R1206["76.8K"] = "C247193"
R1206["768"] = "C247190"
R1206["768K"] = "C247191"
R1206["78.7K"] = "C247189"
R1206["787"] = "C247187"
R1206["787K"] = "C247188"
R1206["8.06"] = "C247468"
R1206["8.2"] = "C25397"
R1206["8.25"] = "C247467"
R1206["8.25K"] = "C247186"
R1206["8.2K"] = "C18027"
R1206["8.2M"] = "C247466"
R1206["8.45K"] = "C247185"
R1206["8.66"] = "C247465"
R1206["8.87"] = "C247464"
R1206["8.87K"] = "C55354"
R1206["80.6"] = "C247184"
R1206["806"] = "C62206"
R1206["806K"] = "C50721"
R1206["82"] = "C17980"
R1206["82.5"] = "C247183"
R1206["820"] = "C17984"
R1206["820K"] = "C17983"
R1206["825"] = "C247181"
R1206["825K"] = "C247182"
R1206["82K"] = "C17979"
R1206["845"] = "C247179"
R1206["845K"] = "C247180"
R1206["86.6"] = "C106196"
R1206["866"] = "C17982"
R1206["866K"] = "C247178"
R1206["88.7"] = "C247176"
R1206["88.7K"] = "C247177"
R1206["887"] = "C247174"
R1206["887K"] = "C247175"
R1206["9.09"] = "C247463"
R1206["9.09K"] = "C43003"
R1206["9.1"] = "C18026"
R1206["9.1K"] = "C18025"
R1206["9.31"] = "C247462"
R1206["9.31K"] = "C247173"
R1206["9.53"] = "C247461"
R1206["9.53K"] = "C63503"
R1206["9.76"] = "C247460"
R1206["9.76K"] = "C55766"
R1206["90.9K"] = "C247172"
R1206["909"] = "C43004"
R1206["909K"] = "C247171"
R1206["91"] = "C25346"
R1206["910"] = "C18024"
R1206["910K"] = "C18023"
R1206["91K"] = "C17981"
R1206["93.1"] = "C247169"
R1206["93.1K"] = "C247170"
R1206["931K"] = "C247168"
R1206["95.3"] = "C247167"
R1206["97.6"] = "C247165"
R1206["97.6K"] = "C247166"
R1206["976K"] = "C247164"

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
		if (value in R1206){
			lcsc = R1206[value]
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