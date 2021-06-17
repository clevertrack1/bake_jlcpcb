# take jlcpcb smd parts list extract basic Components 
BEGIN {
	FPAT = "([^ ]+)|(\"[^\"]+\")"
	OFS = " ";
	ORS="\n"  # windows end of line 
	
	FP_R = "\"Resistor_SMD:R_0805_2012Metric\""
	
	//LCSC Part numbers

R0805["0"] = "C17477"
R0805["0.003"] = "C87224"
R0805["0.005"] = "C92742"
R0805["0.01"] = "C270927"
R0805["0.02"] = "C127693"
R0805["0.025"] = "C270868"
R0805["0.03"] = "C270859"
R0805["0.033"] = "C270856"
R0805["0.034"] = "C270855"
R0805["0.039"] = "C270854"
R0805["0.04"] = "C270864"
R0805["0.047"] = "C247603"
R0805["0.05"] = "C270853"
R0805["0.056"] = "C270852"
R0805["0.062"] = "C247601"
R0805["0.068"] = "C270851"
R0805["0.082"] = "C270860"
R0805["0.1"] = "C127687"
R0805["0.11"] = "C53899"
R0805["0.12"] = "C36235"
R0805["0.13"] = "C247446"
R0805["0.14"] = "C247445"
R0805["0.15"] = "C270926"
R0805["0.16"] = "C34388"
R0805["0.18"] = "C78033"
R0805["0.2"] = "C270871"
R0805["0.22"] = "C36234"
R0805["0.24"] = "C247159"
R0805["0.25"] = "C46216"
R0805["0.27"] = "C47782"
R0805["0.3"] = "C24084"
R0805["0.33"] = "C270921"
R0805["0.36"] = "C270920"
R0805["0.39"] = "C78470"
R0805["0.4"] = "C247134"
R0805["0.43"] = "C24082"
R0805["0.47"] = "C25040"
R0805["0.5"] = "C28319"
R0805["0.51"] = "C55618"
R0805["0.56"] = "C25266"
R0805["0.62"] = "C270917"
R0805["0.68"] = "C47389"
R0805["0.75"] = "C63832"
R0805["0.82"] = "C25267"
R0805["0.91"] = "C17478"
R0805["1"] = "C25271"
R0805["1.02K"] = "C17369"
R0805["1.02M"] = "C57821"
R0805["1.05"] = "C247114"
R0805["1.05K"] = "C17370"
R0805["1.07"] = "C247113"
R0805["1.07K"] = "C17476"
R0805["1.1"] = "C17376"
R0805["1.13K"] = "C17371"
R0805["1.13M"] = "C189663"
R0805["1.15"] = "C17373"
R0805["1.15K"] = "C17372"
R0805["1.18"] = "C247112"
R0805["1.18K"] = "C17374"
R0805["1.1K"] = "C17375"
R0805["1.1M"] = "C62137"
R0805["1.2"] = "C17381"
R0805["1.21K"] = "C17377"
R0805["1.21M"] = "C189661"
R0805["1.24"] = "C247111"
R0805["1.24K"] = "C17378"
R0805["1.27K"] = "C40880"
R0805["1.2K"] = "C55720"
R0805["1.2M"] = "C17380"
R0805["1.3"] = "C17385"
R0805["1.33K"] = "C17382"
R0805["1.37K"] = "C17383"
R0805["1.37M"] = "C189664"
R0805["1.3K"] = "C17384"
R0805["1.3M"] = "C26109"
R0805["1.4"] = "C57643"
R0805["1.43"] = "C247110"
R0805["1.43K"] = "C17386"
R0805["1.43M"] = "C189665"
R0805["1.47"] = "C68930"
R0805["1.47K"] = "C17387"
R0805["1.47M"] = "C189666"
R0805["1.4K"] = "C17388"
R0805["1.5"] = "C17392"
R0805["1.54"] = "C247109"
R0805["1.54K"] = "C17389"
R0805["1.58"] = "C247108"
R0805["1.58K"] = "C17390"
R0805["1.5K"] = "C59092"
R0805["1.5M"] = "C26110"
R0805["1.6"] = "C25272"
R0805["1.62"] = "C247107"
R0805["1.62K"] = "C30040"
R0805["1.62M"] = "C189667"
R0805["1.65"] = "C247106"
R0805["1.65K"] = "C17393"
R0805["1.69K"] = "C48183"
R0805["1.6K"] = "C17394"
R0805["1.6M"] = "C26111"
R0805["1.74"] = "C17396"
R0805["1.74K"] = "C17395"
R0805["1.78K"] = "C17397"
R0805["1.8"] = "C17400"
R0805["1.82"] = "C247105"
R0805["1.82K"] = "C56827"
R0805["1.87K"] = "C42161"
R0805["1.8K"] = "C17398"
R0805["1.8M"] = "C17399"
R0805["1.91"] = "C57644"
R0805["1.91K"] = "C17401"
R0805["1.91M"] = "C189669"
R0805["1.96"] = "C247104"
R0805["1.96K"] = "C17479"
R0805["10"] = "C54106"
R0805["10.2"] = "C17403"
R0805["10.2K"] = "C17402"
R0805["10.5"] = "C17404"
R0805["10.5K"] = "C40086"
R0805["10.7"] = "C17406"
R0805["10.7K"] = "C17405"
R0805["100"] = "C52244"
R0805["100K"] = "C92370"
R0805["100M"] = "C169373"
R0805["102"] = "C17409"
R0805["102K"] = "C56300"
R0805["105"] = "C17411"
R0805["105K"] = "C17410"
R0805["107"] = "C17413"
R0805["107K"] = "C17412"
R0805["10K"] = "C92369"
R0805["10M"] = "C26108"
R0805["11"] = "C17430"
R0805["11.3"] = "C17417"
R0805["11.3K"] = "C17416"
R0805["11.5"] = "C17419"
R0805["11.5K"] = "C17418"
R0805["11.8"] = "C17421"
R0805["11.8K"] = "C17420"
R0805["110"] = "C17423"
R0805["110K"] = "C128030"
R0805["113"] = "C17425"
R0805["113K"] = "C17424"
R0805["115"] = "C17426"
R0805["118"] = "C17428"
R0805["118K"] = "C17427"
R0805["11K"] = "C17429"
R0805["12"] = "C17445"
R0805["12.1"] = "C17432"
R0805["12.1K"] = "C17431"
R0805["12.4"] = "C17433"
R0805["12.4K"] = "C30908"
R0805["12.7"] = "C17435"
R0805["12.7K"] = "C17434"
R0805["120"] = "C111022"
R0805["120K"] = "C141893"
R0805["121"] = "C17439"
R0805["121K"] = "C17438"
R0805["124"] = "C17441"
R0805["124K"] = "C17440"
R0805["127"] = "C17443"
R0805["127K"] = "C17442"
R0805["12K"] = "C97163"
R0805["12M"] = "C53725"
R0805["13"] = "C25268"
R0805["13.3"] = "C17447"
R0805["13.3K"] = "C17446"
R0805["13.7"] = "C17449"
R0805["13.7K"] = "C17448"
R0805["130"] = "C17451"
R0805["130K"] = "C17450"
R0805["133"] = "C17453"
R0805["133K"] = "C17452"
R0805["137"] = "C17454"
R0805["137K"] = "C48674"
R0805["13K"] = "C83389"
R0805["14"] = "C17465"
R0805["14.3"] = "C17457"
R0805["14.3K"] = "C17456"
R0805["14.7"] = "C17459"
R0805["14.7K"] = "C17458"
R0805["140"] = "C44533"
R0805["140K"] = "C17460"
R0805["143"] = "C17461"
R0805["143K"] = "C247044"
R0805["147"] = "C17463"
R0805["147K"] = "C17462"
R0805["14K"] = "C17464"
R0805["15"] = "C64288"
R0805["15.4"] = "C17467"
R0805["15.4K"] = "C17466"
R0805["15.8"] = "C17469"
R0805["15.8K"] = "C17468"
R0805["150"] = "C129125"
R0805["150K"] = "C74850"
R0805["154"] = "C17473"
R0805["154K"] = "C17472"
R0805["158"] = "C247043"
R0805["158K"] = "C17474"
R0805["15K"] = "C86866"
R0805["15M"] = "C42861"
R0805["16"] = "C17491"
R0805["16.2"] = "C17482"
R0805["16.2K"] = "C17481"
R0805["16.5"] = "C17483"
R0805["16.5K"] = "C35929"
R0805["16.9"] = "C189656"
R0805["16.9K"] = "C17484"
R0805["160"] = "C25269"
R0805["160K"] = "C17485"
R0805["162"] = "C35721"
R0805["162K"] = "C17486"
R0805["165"] = "C17487"
R0805["165K"] = "C65869"
R0805["169"] = "C17489"
R0805["169K"] = "C17488"
R0805["16K"] = "C17490"
R0805["16M"] = "C41952"
R0805["17.4"] = "C189657"
R0805["17.4K"] = "C19796"
R0805["17.8"] = "C17492"
R0805["17.8K"] = "C60733"
R0805["174"] = "C17494"
R0805["174K"] = "C17493"
R0805["178"] = "C17496"
R0805["178K"] = "C17495"
R0805["18"] = "C17507"
R0805["18.2"] = "C17498"
R0805["18.2K"] = "C17497"
R0805["18.7"] = "C17500"
R0805["18.7K"] = "C17499"
R0805["180"] = "C25270"
R0805["180K"] = "C17501"
R0805["182"] = "C17503"
R0805["182K"] = "C17502"
R0805["187"] = "C17505"
R0805["187K"] = "C17504"
R0805["18K"] = "C51347"
R0805["18M"] = "C65241"
R0805["19.1"] = "C17509"
R0805["19.1K"] = "C17508"
R0805["19.6"] = "C247042"
R0805["19.6K"] = "C17510"
R0805["191"] = "C247041"
R0805["191K"] = "C17511"
R0805["196K"] = "C17512"
R0805["1K"] = "C75245"
R0805["1M"] = "C126479"
R0805["2"] = "C149988"
R0805["2.05"] = "C247103"
R0805["2.05K"] = "C17515"
R0805["2.15"] = "C31608"
R0805["2.15K"] = "C17516"
R0805["2.1K"] = "C17517"
R0805["2.2"] = "C17521"
R0805["2.21"] = "C247101"
R0805["2.21K"] = "C17518"
R0805["2.21M"] = "C247102"
R0805["2.26K"] = "C17519"
R0805["2.26M"] = "C189670"
R0805["2.2K"] = "C17520"
R0805["2.2M"] = "C26113"
R0805["2.32K"] = "C17522"
R0805["2.37K"] = "C17523"
R0805["2.4"] = "C17528"
R0805["2.43"] = "C247100"
R0805["2.43K"] = "C17524"
R0805["2.43M"] = "C189671"
R0805["2.49"] = "C17525"
R0805["2.49K"] = "C64467"
R0805["2.49M"] = "C83497"
R0805["2.4K"] = "C79482"
R0805["2.4M"] = "C246839"
R0805["2.55K"] = "C32136"
R0805["2.61"] = "C247099"
R0805["2.61K"] = "C17529"
R0805["2.67K"] = "C27571"
R0805["2.7"] = "C149987"
R0805["2.74K"] = "C26009"
R0805["2.7K"] = "C55867"
R0805["2.7M"] = "C17531"
R0805["2.8"] = "C17535"
R0805["2.87"] = "C247098"
R0805["2.87K"] = "C17533"
R0805["2.87M"] = "C189672"
R0805["2.8K"] = "C17534"
R0805["2.94K"] = "C17536"
R0805["20"] = "C179827"
R0805["20.3K"] = "C149984"
R0805["20.5"] = "C17538"
R0805["20.5K"] = "C17537"
R0805["200"] = "C55864"
R0805["200K"] = "C80321"
R0805["205"] = "C17542"
R0805["205K"] = "C17541"
R0805["20K"] = "C63039"
R0805["20M"] = "C37801"
R0805["21"] = "C17551"
R0805["21.5"] = "C17546"
R0805["21.5K"] = "C149985"
R0805["210"] = "C17548"
R0805["210K"] = "C17547"
R0805["215"] = "C17549"
R0805["215K"] = "C247040"
R0805["21K"] = "C17550"
R0805["22"] = "C65068"
R0805["22.1"] = "C17553"
R0805["22.1K"] = "C153391"
R0805["22.6"] = "C17555"
R0805["22.6K"] = "C12825"
R0805["220"] = "C17557"
R0805["220K"] = "C171686"
R0805["221"] = "C17558"
R0805["221K"] = "C75431"
R0805["226"] = "C17559"
R0805["226K"] = "C247039"
R0805["22K"] = "C17560"
R0805["22M"] = "C62398"
R0805["23.2"] = "C17563"
R0805["23.2K"] = "C17562"
R0805["23.7"] = "C17565"
R0805["23.7K"] = "C17564"
R0805["232"] = "C17567"
R0805["232K"] = "C17566"
R0805["237"] = "C247038"
R0805["237K"] = "C17568"
R0805["24"] = "C17576"
R0805["24.3"] = "C17570"
R0805["24.3K"] = "C17569"
R0805["24.9"] = "C191713"
R0805["24.9K"] = "C17571"
R0805["240"] = "C171687"
R0805["240K"] = "C25824"
R0805["243"] = "C67632"
R0805["243K"] = "C17573"
R0805["249"] = "C84373"
R0805["249K"] = "C25825"
R0805["24K"] = "C17575"
R0805["25.5"] = "C17577"
R0805["25.5K"] = "C46670"
R0805["255"] = "C17579"
R0805["255K"] = "C17578"
R0805["25K"] = "C63863"
R0805["26.1"] = "C17580"
R0805["26.1K"] = "C47183"
R0805["26.7"] = "C17582"
R0805["26.7K"] = "C17581"
R0805["261"] = "C17584"
R0805["261K"] = "C17583"
R0805["267"] = "C17586"
R0805["267K"] = "C17585"
R0805["27"] = "C17594"
R0805["27.4"] = "C17588"
R0805["27.4K"] = "C17587"
R0805["270"] = "C17590"
R0805["270K"] = "C17589"
R0805["274"] = "C17592"
R0805["274K"] = "C17591"
R0805["27K"] = "C17593"
R0805["28"] = "C17601"
R0805["28.7"] = "C17596"
R0805["28.7K"] = "C17595"
R0805["280"] = "C247037"
R0805["280K"] = "C17597"
R0805["287"] = "C17599"
R0805["287K"] = "C17598"
R0805["28K"] = "C17600"
R0805["29.4"] = "C17603"
R0805["29.4K"] = "C17602"
R0805["294"] = "C247036"
R0805["294K"] = "C17605"
R0805["2K"] = "C47009"
R0805["2M"] = "C26112"
R0805["3"] = "C17660"
R0805["3.01"] = "C247097"
R0805["3.01K"] = "C41006"
R0805["3.09K"] = "C17607"
R0805["3.16"] = "C247096"
R0805["3.16K"] = "C52603"
R0805["3.24K"] = "C64285"
R0805["3.3"] = "C16257"
R0805["3.32"] = "C247095"
R0805["3.32K"] = "C32391"
R0805["3.3K"] = "C75784"
R0805["3.3M"] = "C48769"
R0805["3.4"] = "C247093"
R0805["3.48"] = "C247094"
R0805["3.48K"] = "C79483"
R0805["3.4K"] = "C17608"
R0805["3.57"] = "C247092"
R0805["3.57K"] = "C17613"
R0805["3.6"] = "C17610"
R0805["3.65K"] = "C17611"
R0805["3.6K"] = "C270841"
R0805["3.6M"] = "C35710"
R0805["3.74K"] = "C65649"
R0805["3.83"] = "C247091"
R0805["3.83K"] = "C27536"
R0805["3.9"] = "C17615"
R0805["3.92"] = "C247090"
R0805["3.92K"] = "C18360"
R0805["3.9K"] = "C17614"
R0805["3.9M"] = "C35709"
R0805["30"] = "C319645"
R0805["30.1"] = "C247035"
R0805["30.1K"] = "C21841"
R0805["30.9"] = "C247034"
R0805["30.9K"] = "C16107"
R0805["300"] = "C218500"
R0805["300K"] = "C185251"
R0805["301"] = "C126483"
R0805["301K"] = "C17619"
R0805["309"] = "C17620"
R0805["309K"] = "C57148"
R0805["30K"] = "C64468"
R0805["31.6"] = "C17624"
R0805["31.6K"] = "C17623"
R0805["316"] = "C105609"
R0805["32.4"] = "C17625"
R0805["32.4K"] = "C36938"
R0805["324"] = "C17627"
R0805["324K"] = "C17626"
R0805["33"] = "C17634"
R0805["33.2"] = "C17628"
R0805["33.2K"] = "C37252"
R0805["330"] = "C44534"
R0805["330K"] = "C17629"
R0805["332"] = "C86445"
R0805["332K"] = "C17631"
R0805["335"] = "C91638"
R0805["33K"] = "C59057"
R0805["34"] = "C17641"
R0805["34.8"] = "C17635"
R0805["34.8K"] = "C53718"
R0805["340"] = "C17637"
R0805["340K"] = "C17636"
R0805["348"] = "C17639"
R0805["348K"] = "C17638"
R0805["34K"] = "C56299"
R0805["35.7"] = "C17642"
R0805["35.7K"] = "C42792"
R0805["357"] = "C52534"
R0805["357K"] = "C17643"
R0805["36"] = "C36524"
R0805["36.5"] = "C17644"
R0805["36.5K"] = "C35928"
R0805["360"] = "C83385"
R0805["360K"] = "C17645"
R0805["365"] = "C63500"
R0805["365K"] = "C17647"
R0805["36K"] = "C44793"
R0805["37.4"] = "C79787"
R0805["37.4K"] = "C62728"
R0805["374"] = "C30515"
R0805["374K"] = "C17649"
R0805["38.3"] = "C17651"
R0805["38.3K"] = "C17650"
R0805["383"] = "C17653"
R0805["383K"] = "C17652"
R0805["39"] = "C17659"
R0805["39.2"] = "C17654"
R0805["39.2K"] = "C60005"
R0805["390"] = "C17655"
R0805["390K"] = "C17656"
R0805["392"] = "C17658"
R0805["392K"] = "C17657"
R0805["39K"] = "C63040"
R0805["3K"] = "C97164"
R0805["3M"] = "C17662"
R0805["4.02K"] = "C44816"
R0805["4.02M"] = "C247089"
R0805["4.12"] = "C247088"
R0805["4.12K"] = "C64289"
R0805["4.22"] = "C247087"
R0805["4.22K"] = "C17665"
R0805["4.3"] = "C17669"
R0805["4.32"] = "C247086"
R0805["4.32K"] = "C17666"
R0805["4.3K"] = "C17667"
R0805["4.3M"] = "C17668"
R0805["4.42"] = "C65847"
R0805["4.42K"] = "C71067"
R0805["4.53"] = "C247085"
R0805["4.53K"] = "C17670"
R0805["4.64"] = "C247084"
R0805["4.64K"] = "C17671"
R0805["4.7"] = "C17675"
R0805["4.75"] = "C247083"
R0805["4.75K"] = "C17672"
R0805["4.7K"] = "C64354"
R0805["4.7M"] = "C17674"
R0805["4.87"] = "C247082"
R0805["4.87K"] = "C17676"
R0805["4.99"] = "C25273"
R0805["4.99K"] = "C111401"
R0805["4.99M"] = "C247081"
R0805["40.2"] = "C17679"
R0805["40.2K"] = "C17678"
R0805["402"] = "C17681"
R0805["402K"] = "C17680"
R0805["41.2"] = "C17683"
R0805["41.2K"] = "C17682"
R0805["412"] = "C17685"
R0805["412K"] = "C17684"
R0805["42.2"] = "C17687"
R0805["42.2K"] = "C17686"
R0805["422"] = "C17689"
R0805["422K"] = "C17688"
R0805["43"] = "C4368"
R0805["43.2"] = "C17691"
R0805["43.2K"] = "C17690"
R0805["430"] = "C42000"
R0805["430K"] = "C17692"
R0805["432"] = "C17694"
R0805["432K"] = "C17693"
R0805["43K"] = "C107618"
R0805["44.2"] = "C17698"
R0805["44.2K"] = "C17697"
R0805["442"] = "C17700"
R0805["442K"] = "C17699"
R0805["45.3"] = "C62325"
R0805["45.3K"] = "C17701"
R0805["453"] = "C17703"
R0805["453K"] = "C17702"
R0805["46.4"] = "C17705"
R0805["46.4K"] = "C17704"
R0805["464"] = "C17707"
R0805["464K"] = "C17706"
R0805["47"] = "C83384"
R0805["47.5"] = "C17708"
R0805["47.5K"] = "C79481"
R0805["470"] = "C109437"
R0805["470K"] = "C90431"
R0805["475"] = "C17712"
R0805["475K"] = "C17711"
R0805["47K"] = "C108049"
R0805["48.7"] = "C17716"
R0805["48.7K"] = "C17715"
R0805["487"] = "C17718"
R0805["487K"] = "C17717"
R0805["49.9"] = "C78599"
R0805["49.9K"] = "C63044"
R0805["499"] = "C154438"
R0805["499K"] = "C75783"
R0805["5.1"] = "C17724"
R0805["5.11"] = "C247080"
R0805["5.11K"] = "C46039"
R0805["5.1K"] = "C64462"
R0805["5.1M"] = "C26114"
R0805["5.23K"] = "C17739"
R0805["5.36"] = "C247079"
R0805["5.36K"] = "C17725"
R0805["5.49K"] = "C17726"
R0805["5.6"] = "C17729"
R0805["5.62K"] = "C21437"
R0805["5.6K"] = "C4382"
R0805["5.6M"] = "C17728"
R0805["5.76"] = "C247078"
R0805["5.76K"] = "C18361"
R0805["5.9"] = "C53726"
R0805["5.9K"] = "C17730"
R0805["50K"] = "C63865"
R0805["51"] = "C83395"
R0805["51.1"] = "C17732"
R0805["51.1K"] = "C17731"
R0805["510"] = "C83396"
R0805["510K"] = "C111648"
R0805["511"] = "C17736"
R0805["511K"] = "C17735"
R0805["51K"] = "C85739"
R0805["52.3"] = "C17741"
R0805["52.3K"] = "C17740"
R0805["523"] = "C17743"
R0805["523K"] = "C17742"
R0805["53.6"] = "C17744"
R0805["53.6K"] = "C21398"
R0805["536"] = "C17746"
R0805["536K"] = "C17745"
R0805["54.9"] = "C17748"
R0805["54.9K"] = "C17747"
R0805["549"] = "C17750"
R0805["549K"] = "C17749"
R0805["56"] = "C17757"
R0805["56.2"] = "C17752"
R0805["56.2K"] = "C17751"
R0805["560"] = "C37659"
R0805["560K"] = "C15785"
R0805["562"] = "C17755"
R0805["562K"] = "C17754"
R0805["56K"] = "C141890"
R0805["57.6"] = "C17759"
R0805["57.6K"] = "C17758"
R0805["576"] = "C17761"
R0805["576K"] = "C17760"
R0805["59"] = "C25274"
R0805["590"] = "C55566"
R0805["590K"] = "C17762"
R0805["59K"] = "C17763"
R0805["5K"] = "C78980"
R0805["6.04K"] = "C17765"
R0805["6.19K"] = "C17766"
R0805["6.2"] = "C39008"
R0805["6.2K"] = "C124889"
R0805["6.34K"] = "C19797"
R0805["6.49"] = "C247077"
R0805["6.49K"] = "C17769"
R0805["6.65K"] = "C17770"
R0805["6.8"] = "C17774"
R0805["6.81K"] = "C17771"
R0805["6.81M"] = "C43252"
R0805["6.8K"] = "C17772"
R0805["6.8M"] = "C17773"
R0805["6.98"] = "C247076"
R0805["6.98K"] = "C17775"
R0805["60.4"] = "C72998"
R0805["60.4K"] = "C48806"
R0805["604"] = "C17777"
R0805["604K"] = "C17776"
R0805["61.9"] = "C17779"
R0805["61.9K"] = "C57860"
R0805["619"] = "C17781"
R0805["619K"] = "C17780"
R0805["62"] = "C61682"
R0805["620"] = "C17782"
R0805["620K"] = "C25827"
R0805["62K"] = "C17783"
R0805["63.4"] = "C17786"
R0805["63.4K"] = "C17785"
R0805["634"] = "C17787"
R0805["634K"] = "C247031"
R0805["64.9"] = "C17789"
R0805["64.9K"] = "C17788"
R0805["649"] = "C247030"
R0805["649K"] = "C17790"
R0805["66.5"] = "C17792"
R0805["66.5K"] = "C17791"
R0805["665"] = "C17794"
R0805["665K"] = "C17793"
R0805["68"] = "C17802"
R0805["68.1"] = "C17796"
R0805["68.1K"] = "C17795"
R0805["680"] = "C90433"
R0805["680K"] = "C17797"
R0805["681"] = "C17800"
R0805["681K"] = "C17799"
R0805["68K"] = "C108883"
R0805["69.8"] = "C17804"
R0805["69.8K"] = "C17803"
R0805["698"] = "C27535"
R0805["698K"] = "C17805"
R0805["7.15"] = "C247075"
R0805["7.15K"] = "C17806"
R0805["7.32K"] = "C35729"
R0805["7.5"] = "C17809"
R0805["7.5K"] = "C117654"
R0805["7.5M"] = "C17808"
R0805["7.68K"] = "C30041"
R0805["7.87K"] = "C17810"
R0805["71.5"] = "C17812"
R0805["71.5K"] = "C17811"
R0805["715"] = "C17813"
R0805["715K"] = "C48770"
R0805["73.2"] = "C17815"
R0805["73.2K"] = "C17814"
R0805["732"] = "C37998"
R0805["732K"] = "C17816"
R0805["75"] = "C20638"
R0805["750"] = "C129126"
R0805["750K"] = "C17817"
R0805["75K"] = "C111588"
R0805["76.8"] = "C189660"
R0805["76.8K"] = "C17821"
R0805["768"] = "C17823"
R0805["768K"] = "C17822"
R0805["78.7"] = "C17824"
R0805["78.7K"] = "C26012"
R0805["787"] = "C17826"
R0805["787K"] = "C17825"
R0805["8.06"] = "C247074"
R0805["8.06K"] = "C19006"
R0805["8.2"] = "C17830"
R0805["8.25K"] = "C17827"
R0805["8.25M"] = "C67619"
R0805["8.2K"] = "C17828"
R0805["8.2M"] = "C17829"
R0805["8.45K"] = "C17831"
R0805["8.66K"] = "C17832"
R0805["8.87K"] = "C37551"
R0805["80.6"] = "C109433"
R0805["80.6K"] = "C46250"
R0805["806"] = "C17834"
R0805["806K"] = "C63494"
R0805["82"] = "C25329"
R0805["82.5"] = "C17836"
R0805["82.5K"] = "C17835"
R0805["820"] = "C135628"
R0805["820K"] = "C50136"
R0805["825"] = "C17839"
R0805["825K"] = "C17838"
R0805["82K"] = "C141891"
R0805["84.5"] = "C17843"
R0805["84.5K"] = "C17842"
R0805["845"] = "C17845"
R0805["845K"] = "C17844"
R0805["86.6"] = "C17847"
R0805["86.6K"] = "C17846"
R0805["866"] = "C17849"
R0805["866K"] = "C17848"
R0805["88.7"] = "C17851"
R0805["88.7K"] = "C17850"
R0805["887"] = "C17853"
R0805["887K"] = "C17852"
R0805["9"] = "C247071"
R0805["9.09K"] = "C88432"
R0805["9.1"] = "C17857"
R0805["9.1K"] = "C17855"
R0805["9.1M"] = "C17856"
R0805["9.53"] = "C247073"
R0805["9.53K"] = "C17858"
R0805["9.76"] = "C247072"
R0805["9.76K"] = "C17859"
R0805["90"] = "C247027"
R0805["90.9"] = "C17861"
R0805["90.9K"] = "C17860"
R0805["900K"] = "C247029"
R0805["909"] = "C17863"
R0805["909K"] = "C17862"
R0805["90K"] = "C247028"
R0805["91"] = "C4407"
R0805["910"] = "C17865"
R0805["910K"] = "C17864"
R0805["91K"] = "C17866"
R0805["93.1"] = "C17870"
R0805["93.1K"] = "C17869"
R0805["931"] = "C17872"
R0805["931K"] = "C17871"
R0805["95.3"] = "C17874"
R0805["95.3K"] = "C149999"
R0805["953"] = "C17876"
R0805["953K"] = "C17875"
R0805["97.6"] = "C17878"
R0805["97.6K"] = "C17877"
R0805["976"] = "C17880"
R0805["976K"] = "C17879"
R0805["9K"] = "C247026"

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
