//Maya ASCII 2016 scene
//Name: SM_FallenBranches02.ma
//Last modified: Mon, Sep 18, 2017 10:41:30 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "SM_FallenBranches02";
	rename -uid "CF9C2135-4C02-5405-0FC6-EEB612289CE1";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "SM_FallenBranches02Shape" -p "SM_FallenBranches02";
	rename -uid "53C5B07C-43FB-D72D-AD42-C29A826A5173";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 108 ".uvst[0].uvsp[0:107]" -type "float2" 0.66638738 0.96361232
		 0.18614395 1.002517581 0.14166562 0.91717601 0.67331862 0.99706513 0.64114976 0.31354207
		 0.72923344 0.35262784 0.54845345 0.60888076 0.38824269 1.0011506081 0.31164923 0.93014014
		 0.40402651 0.94039416 0.51500171 1.0021619797 0.45162219 1.0016562939 0.47444281
		 0.94875854 0.67331862 0.99706513 0.66638738 0.96361232 0.18614395 1.002517581 0.14166562
		 0.91717601 0.70874816 0.0014835957 0.81136346 0.001243274 0.6393277 0.2634843 0.60713893
		 0.25695002 0.40402651 0.94039416 0.42973128 0.99979138 0.53520691 0.95200324 0.55152494
		 0.99842823 0.30793762 1.0011544228 0.27284607 0.92878509 0.42973128 0.99979138 0.30793762
		 1.0011544228 0.27284607 0.92878509 0.40402651 0.94039416 0.64114976 0.31354207 0.72923344
		 0.35262784 0.54845345 0.60888076 0.38824269 1.0011506081 0.31164923 0.93014014 0.40402651
		 0.94039416 0.51500171 1.0021619797 0.45162219 1.0016562939 0.47444281 0.94875854
		 0.67331862 0.99706513 0.66638738 0.96361232 0.18614395 1.002517581 0.14166562 0.91717601
		 0.70874816 0.0014835957 0.81136346 0.001243274 0.6393277 0.2634843 0.60713893 0.25695002
		 0.55152494 0.99842823 0.53520691 0.95200324 0.67331862 0.99706513 0.66638738 0.96361232
		 0.18614395 1.002517581 0.14166562 0.91717601 0.42973128 0.99979138 0.30793762 1.0011544228
		 0.27284607 0.92878509 0.40402651 0.94039416 0.64114976 0.31354207 0.72923344 0.35262784
		 0.54845345 0.60888076 0.38824269 1.0011506081 0.31164923 0.93014014 0.40402651 0.94039416
		 0.51500171 1.0021619797 0.45162219 1.0016562939 0.47444281 0.94875854 0.67331862
		 0.99706513 0.66638738 0.96361232 0.18614395 1.002517581 0.14166562 0.91717601 0.70874816
		 0.0014835957 0.81136346 0.001243274 0.6393277 0.2634843 0.60713893 0.25695002 0.55152494
		 0.99842823 0.53520691 0.95200324 0.67331862 0.99706513 0.66638738 0.96361232 0.18614395
		 1.002517581 0.14166562 0.91717601 0.42973128 0.99979138 0.30793762 1.0011544228 0.27284607
		 0.92878509 0.40402651 0.94039416 0.64114976 0.31354207 0.72923344 0.35262784 0.54845345
		 0.60888076 0.38824269 1.0011506081 0.31164923 0.93014014 0.40402651 0.94039416 0.51500171
		 1.0021619797 0.45162219 1.0016562939 0.47444281 0.94875854 0.67331862 0.99706513
		 0.66638738 0.96361232 0.18614395 1.002517581 0.14166562 0.91717601 0.70874816 0.0014835957
		 0.81136346 0.001243274 0.6393277 0.2634843 0.60713893 0.25695002 0.55152494 0.99842823
		 0.53520691 0.95200324 0.67331862 0.99706513 0.66638738 0.96361232 0.18614395 1.002517581
		 0.14166562 0.91717601;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 108 ".vt[0:107]"  -53.015777588 4.91619778 106.65698242 35.66156006 0.060277749 -67.61300659
		 14.99282837 18.41624069 -95.46505737 -44.26780701 -3.5611062 113.25787354 -10.34124756 27.91366386 -41.12103271
		 -4.86993408 6.4074769 25.84088135 -8.32011414 49.98261642 -31.094787598 -52.13542175 -3.36081743 106.86645508
		 34.4158783 21.6846447 -55.77542114 18.49467468 -8.14180946 -82.54684448 -45.40011597 7.085212231 112.98846436
		 -12.58883667 4.5163517 15.042785645 -23.42137146 -1.62721872 37.014892578 -18.30714417 6.38506269 55.29577637
		 2.45141602 15.41958046 12.093261719 7.36856079 0.80821979 -23.18014526 -9.94725037 15.6226387 33.016906738
		 47.27099609 9.76106644 -4.95184326 -25.66789246 3.35468841 78.0061035156 -36.94758606 1.71179795 75.40045166
		 11.79772949 6.57801723 -5.60366821 -13.58561707 18.73872757 7.69317627 0.66233826 4.86796379 24.74163818
		 -34.55212402 9.94779873 56.69140625 -23.70030212 -1.88224888 68.26635742 23.7787323 9.95066357 -19.26470947
		 4.88209534 24.22676086 -42.27078247 -98.48977661 -1.80283546 -1.89709473 21.97486877 3.82482672 -33.58996582
		 25.52754211 -0.73974502 -57.90536499 -97.32958984 -1.1194396 6.82415771 -15.79016113 3.27028131 -53.65405273
		 -44.040222168 5.92693377 -18.94921875 -22.9263916 16.12767792 -58.51419067 -97.16120911 -5.27534914 1.88464355
		 12.76690674 15.5075798 -38.67977905 23.97952271 -9.44534302 -41.15335083 -99.038284302 3.34708524 1.95996094
		 -37.80705261 0.49072117 -21.53125 -51.9859314 -3.57706499 -14.69171143 -60.13807678 4.80459785 -9.65710449
		 -32.093032837 11.24366379 -22.13015747 -10.82072449 0.77742672 -27.15756226 -47.17271423 9.34846878 -18.75427246
		 -4.24491882 18.39262772 -6.45755005 -73.61924744 3.5765667 -2.53973389 -76.4526062 -2.33261657 -6.25732422
		 -17.1103363 2.55953717 -16.7414856 -36.43196106 5.6522522 -30.36959839 -37.63238525 7.47354555 -13.81134033
		 -67.47219849 0.11121225 -16.025268555 -67.49824524 0.63871217 -3.32983398 -7.77780151 12.26697063 -24.18548584
		 -5.41430664 7.38046646 -44.49807739 66.88218689 -1.8536458 49.62237549 -56.44412231 31.99632645 19.88113403
		 -58.28096008 43.18572998 -4.062835693 65.28077698 -4.24424171 58.49810791 -20.72787476 29.19018745 1.51983643
		 6.32270813 10.41329575 35.61029053 -16.49528503 15.67972851 -6.64212036 66.28581238 1.090424299 54.35717773
		 -49.7815094 19.050060272 11.69369507 -54.96615601 48.03571701 15.17120361 66.047866821 -8.031050682 52.40814209
		 5.19178772 18.17097855 31.15872192 20.36470032 16.25079155 38.54498291 26.37239075 4.17427492 41.47857666
		 -3.27896118 9.28353977 28.31268311 -22.19581604 26.62564659 26.27215576 12.38658142 5.82647991 31.61843872
		 -33.92295837 5.65538788 43.79592896 40.15393066 -0.29937682 48.56219482 44.61810303 5.64141178 45.97155762
		 -16.51713562 20.85453033 36.39038086 2.7844696 15.60173321 20.94924927 3.030914307 9.38206959 37.51443481
		 35.1829834 8.2073164 35.70800781 34.68605042 4.59059477 48.64645386 -28.27604675 14.93474197 26.80282593
		 -28.915802 25.056930542 7.033508301 -63.081939697 -1.088890195 -3.32714844 82.64724731 32.35393524 -9.97589111
		 96.093292236 29.79108429 16.62213135 -65.46478271 1.77836692 -13.21466064 -27.46363831 14.072885513 58.58435059
		 -3.062957764 11.97259712 10.71810913 -29.20671082 -4.28380013 56.0057678223 -64.070007324 4.54250908 -6.13171387
		 77.47183228 14.5015974 -7.048309326 85.12142944 44.67990875 3.51077271 -64.19400024 -5.4381361 -9.60742188
		 11.62625122 17.16247559 -2.19128418 -7.5541687 17.80959702 -3.31130981 -16.63252258 6.84392929 -10.090911865
		 20.49319458 7.78242493 -8.26751709 43.37611389 25.80682373 -4.71517944 2.31750488 4.61962748 -6.42028809
		 41.94430542 16.7591095 -39.9230957 -38.1362915 4.18149376 -16.054962158 -40.92140198 7.8327055 -8.52520752
		 28.84959412 25.12916565 -17.65567017 18.10127258 9.14775467 4.38745117 10.051239014 12.40555763 -13.66348267
		 -22.85829163 6.34390974 1.051391602 -28.2648468 10.034292221 -12.64871216 48.0009765625 15.63884163 -14.15921021
		 58.3260498 14.45461369 8.76431274;
	setAttr -s 144 ".ed[0:143]"  22 25 0 25 26 0 26 21 0 21 22 0 6 4 0 4 5 0
		 5 6 0 14 15 0 15 11 0 11 14 0 13 16 0 16 12 0 12 13 0 10 13 0 12 7 0 7 10 0 14 8 0
		 8 15 0 16 14 0 11 16 0 11 12 0 8 9 0 9 15 0 20 17 0 17 18 0 18 19 0 19 20 0 24 22 0
		 21 23 0 23 24 0 3 24 0 23 0 0 0 3 0 25 1 0 1 2 0 2 26 0 49 52 0 52 53 0 53 48 0 48 49 0
		 33 31 0 31 32 0 32 33 0 41 42 0 42 38 0 38 41 0 40 43 0 43 39 0 39 40 0 37 40 0 39 34 0
		 34 37 0 41 35 0 35 42 0 43 41 0 38 43 0 38 39 0 35 36 0 36 42 0 47 44 0 44 45 0 45 46 0
		 46 47 0 51 49 0 48 50 0 50 51 0 30 51 0 50 27 0 27 30 0 52 28 0 28 29 0 29 53 0 76 79 0
		 79 80 0 80 75 0 75 76 0 60 58 0 58 59 0 59 60 0 68 69 0 69 65 0 65 68 0 67 70 0 70 66 0
		 66 67 0 64 67 0 66 61 0 61 64 0 68 62 0 62 69 0 70 68 0 65 70 0 65 66 0 62 63 0 63 69 0
		 74 71 0 71 72 0 72 73 0 73 74 0 78 76 0 75 77 0 77 78 0 57 78 0 77 54 0 54 57 0 79 55 0
		 55 56 0 56 80 0 103 106 0 106 107 0 107 102 0 102 103 0 87 85 0 85 86 0 86 87 0 95 96 0
		 96 92 0 92 95 0 94 97 0 97 93 0 93 94 0 91 94 0 93 88 0 88 91 0 95 89 0 89 96 0 97 95 0
		 92 97 0 92 93 0 89 90 0 90 96 0 101 98 0 98 99 0 99 100 0 100 101 0 105 103 0 102 104 0
		 104 105 0 84 105 0 104 81 0 81 84 0 106 82 0 82 83 0 83 107 0;
	setAttr -s 180 ".n";
	setAttr ".n[0:165]" -type "float3"  0.40493292 0.87131256 0.2772066 0.40493295
		 0.87131268 0.27720666 0.40493295 0.87131268 0.27720663 0.40493298 0.87131262 0.27720666
		 -0.99421936 0.047252119 0.096411511 -0.99421936 0.047252119 0.096411511 -0.99421936
		 0.047252122 0.096411504 -0.59087414 0.71290213 -0.37767497 -0.59087414 0.71290207
		 -0.37767497 -0.59087414 0.71290207 -0.377675 -0.79231226 0.6084525 -0.045021188 -0.79231209
		 0.6084525 -0.045021188 -0.7923122 0.6084525 -0.045021188 -0.61533839 0.74301642 -0.26322103
		 -0.61533833 0.74301642 -0.263221 -0.61533827 0.74301636 -0.263221 -0.61533839 0.74301636
		 -0.263221 -0.79130441 0.5179739 -0.32486966 -0.79130441 0.51797396 -0.32486972 -0.79130447
		 0.51797396 -0.32486969 -0.59299761 0.72104877 -0.35838857 -0.59299761 0.72104877
		 -0.35838857 -0.59299773 0.72104883 -0.3583886 -0.79188818 0.56466305 -0.23252702
		 -0.79188812 0.56466299 -0.23252702 -0.79188812 0.56466299 -0.23252702 -0.75482589
		 0.61282206 -0.23385255 -0.75482589 0.612822 -0.23385255 -0.75482589 0.612822 -0.23385252
		 0.10216155 -0.99474013 0.0074294093 0.10216153 -0.99474007 0.0074294079 0.10216153
		 -0.99474001 0.0074294088 0.10216153 -0.99474001 0.0074294079 0.4404988 0.8248564
		 0.35436231 0.44049883 0.82485646 0.35436234 0.44049877 0.8248564 0.35436234 0.44049883
		 0.82485646 0.35436234 0.55158192 0.78493619 0.28219232 0.55158192 0.78493625 0.28219232
		 0.55158192 0.78493625 0.28219235 0.55158186 0.78493619 0.28219232 0.6249212 0.78055018
		 0.014662807 0.62492108 0.78055018 0.014662806 0.62492114 0.78055012 0.014662806 0.62492108
		 0.78055006 0.014662805 -0.18098286 0.96437526 -0.19293948 -0.18098283 0.96437514
		 -0.19293945 -0.18098286 0.9643752 -0.19293949 -0.18098286 0.96437514 -0.19293948
		 -0.66441709 -0.55709082 -0.49819636 -0.66441715 -0.55709082 -0.49819639 -0.66441715
		 -0.55709082 -0.49819642 -0.20435064 0.054151975 -0.97739875 -0.20435062 0.054151971
		 -0.97739869 -0.20435062 0.054151967 -0.97739875 -0.56175452 -0.050357204 -0.82576984
		 -0.56175458 -0.050357211 -0.82576996 -0.56175458 -0.050357211 -0.8257699 -0.31969979
		 0.094750077 -0.94276965 -0.31969979 0.094750077 -0.94276959 -0.31969976 0.094750069
		 -0.94276953 -0.31969976 0.094750069 -0.94276959 -0.32098246 -0.20863517 -0.92381901
		 -0.32098249 -0.20863521 -0.92381907 -0.32098249 -0.2086352 -0.92381901 -0.22586593
		 0.065889806 -0.97192746 -0.22586592 0.065889798 -0.97192752 -0.22586593 0.065889806
		 -0.97192758 -0.39828238 -0.13676515 -0.90700954 -0.39828238 -0.13676515 -0.90700954
		 -0.39828241 -0.13676517 -0.90700954 -0.39339817 -0.086037196 -0.91533357 -0.39339814
		 -0.086037181 -0.91533351 -0.39339817 -0.086037196 -0.91533357 0.18044727 -0.62131995
		 0.76249605 0.18044725 -0.62131995 0.76249599 0.18044728 -0.62132001 0.76249605 0.18044727
		 -0.62132001 0.76249605 -0.2325002 0.9686504 -0.087521054 -0.23250021 0.9686504 -0.087521061
		 -0.23250023 0.96865052 -0.087521061 -0.23250023 0.96865052 -0.087521069 -0.080820337
		 0.9953714 -0.051998198 -0.080820344 0.99537134 -0.051998198 -0.080820344 0.9953714
		 -0.051998205 -0.080820344 0.9953714 -0.051998202 0.19614823 0.96424609 -0.1782002
		 0.19614825 0.96424609 -0.1782002 0.19614823 0.96424603 -0.17820019 0.19614823 0.96424615
		 -0.1782002 -0.057391912 -0.9110226 -0.40834299 -0.057391912 -0.91102254 -0.4083429
		 -0.057391912 -0.91102266 -0.40834299 -0.057391912 -0.9110226 -0.4083429 0.7978844
		 0.47454023 -0.3717418 0.7978844 0.47454029 -0.37174183 0.79788435 0.47454029 -0.37174183
		 0.20815359 0.11273579 -0.97157747 0.20815361 0.11273579 -0.97157741 0.20815362 0.11273579
		 -0.97157747 0.58101618 0.092613213 -0.80860555 0.58101618 0.092613213 -0.80860567
		 0.58101618 0.092613228 -0.80860567 0.30963516 0.04015379 -0.95000726 0.30963516 0.040153794
		 -0.9500072 0.30963516 0.04015379 -0.9500072 0.30963516 0.04015379 -0.9500072 0.37690219
		 0.3083576 -0.87341875 0.37690222 0.30835763 -0.87341869 0.37690216 0.3083576 -0.87341875
		 0.2256448 0.095407687 -0.96952659 0.2256448 0.095407687 -0.96952659 0.2256448 0.09540768
		 -0.96952659 0.44934121 0.22974078 -0.86331445 0.44934112 0.22974075 -0.86331433 0.44934118
		 0.22974077 -0.86331433 0.4199698 0.18179332 -0.88914382 0.41996971 0.18179329 -0.88914376
		 0.41996977 0.18179332 -0.88914382 -0.024674639 0.44809437 0.8936457 -0.024674643
		 0.4480944 0.89364576 -0.024674635 0.44809437 0.89364564 -0.024674639 0.44809437 0.89364576
		 -0.052377272 -0.94722992 -0.31624708 -0.052377265 -0.94722986 -0.31624708 -0.052377261
		 -0.94722986 -0.31624705 -0.052377261 -0.9472298 -0.31624705 -0.18048266 -0.9436965
		 -0.27724162 -0.18048266 -0.94369644 -0.27724162 -0.18048266 -0.94369644 -0.27724162
		 -0.18048266 -0.9436965 -0.27724165 -0.39061904 -0.83597678 -0.38543406 -0.39061904
		 -0.8359769 -0.38543409 -0.39061904 -0.83597684 -0.38543406 -0.39061904 -0.8359769
		 -0.38543406 0.11497911 -0.98074073 -0.1578846 0.1149791 -0.98074067 -0.1578846 0.1149791
		 -0.98074061 -0.15788458 0.1149791 -0.98074067 -0.1578846 -0.87857872 0.14724661 -0.45433226
		 -0.87857878 0.14724663 -0.45433229 -0.87857872 0.14724661 -0.45433229 0.18209198
		 -0.40753672 0.89484984 0.182092 -0.40753675 0.89484984 0.182092 -0.40753672 0.89484984
		 -0.21855043 -0.37583399 0.90054679 -0.21855041 -0.37583396 0.90054673 -0.21855046
		 -0.37583399 0.90054685 0.096038379 -0.47140977 0.87666953 0.096038371 -0.47140977
		 0.87666959 0.096038379 -0.4714098 0.87666959 0.096038371 -0.4714098 0.87666953 0.0021260574
		 -0.19596241 0.98060906 0.0021260574 -0.19596243 0.98060912 0.0021260572 -0.19596241
		 0.98060912 0.16409457 -0.42235091 0.89145535 0.16409458 -0.42235094 0.89145535 0.1640946
		 -0.42235094 0.89145541 -0.065290675 -0.27496412 0.95923495 -0.065290675 -0.27496415
		 0.95923489 -0.065290682 -0.27496412 0.95923501 -0.041539218 -0.32057536 0.94631177
		 -0.041539222 -0.32057536 0.94631177 -0.041539222 -0.32057533 0.94631171 -0.27209157
		 0.83331645 -0.48119614 -0.27209163 0.8333165 -0.48119617;
	setAttr ".n[166:179]" -type "float3"  -0.27209157 0.83331645 -0.48119614 -0.27209163
		 0.83331656 -0.48119622 0.070253819 -0.9678371 -0.24156958 0.070253819 -0.96783704
		 -0.24156958 0.070253819 -0.9678371 -0.24156961 0.070253812 -0.96783704 -0.24156956
		 0.20771025 -0.92259234 -0.32508439 0.20771025 -0.92259222 -0.32508439 0.20771027
		 -0.9225924 -0.32508442 0.20771024 -0.92259222 -0.32508433 0.42690378 -0.86298037
		 -0.27021843 0.42690372 -0.86298037 -0.27021846 0.42690381 -0.86298037 -0.27021846
		 0.42690381 -0.86298037 -0.27021849;
	setAttr -s 52 -ch 180 ".fc[0:51]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 22 25 26 21
		f 3 4 5 6
		mu 0 3 4 5 6
		f 3 7 8 9
		mu 0 3 7 8 9
		f 3 10 11 12
		mu 0 3 10 11 12
		f 4 13 -13 14 15
		mu 0 4 13 10 12 14
		f 3 16 17 -8
		mu 0 3 7 15 8
		f 3 18 -10 19
		mu 0 3 11 7 9
		f 3 -20 20 -12
		mu 0 3 11 9 12
		f 3 -18 21 22
		mu 0 3 8 15 16
		f 4 23 24 25 26
		mu 0 4 17 18 19 20
		f 4 27 -4 28 29
		mu 0 4 24 22 21 23
		f 4 30 -30 31 32
		mu 0 4 3 24 23 0
		f 4 33 34 35 -2
		mu 0 4 25 1 2 26
		f 4 36 37 38 39
		mu 0 4 27 28 29 30
		f 3 40 41 42
		mu 0 3 31 32 33
		f 3 43 44 45
		mu 0 3 34 35 36
		f 3 46 47 48
		mu 0 3 37 38 39
		f 4 49 -49 50 51
		mu 0 4 40 37 39 41
		f 3 52 53 -44
		mu 0 3 34 42 35
		f 3 54 -46 55
		mu 0 3 38 34 36
		f 3 -56 56 -48
		mu 0 3 38 36 39
		f 3 -54 57 58
		mu 0 3 35 42 43
		f 4 59 60 61 62
		mu 0 4 44 45 46 47
		f 4 63 -40 64 65
		mu 0 4 48 27 30 49
		f 4 66 -66 67 68
		mu 0 4 50 48 49 51
		f 4 69 70 71 -38
		mu 0 4 28 52 53 29
		f 4 72 73 74 75
		mu 0 4 54 55 56 57
		f 3 76 77 78
		mu 0 3 58 59 60
		f 3 79 80 81
		mu 0 3 61 62 63
		f 3 82 83 84
		mu 0 3 64 65 66
		f 4 85 -85 86 87
		mu 0 4 67 64 66 68
		f 3 88 89 -80
		mu 0 3 61 69 62
		f 3 90 -82 91
		mu 0 3 65 61 63
		f 3 -92 92 -84
		mu 0 3 65 63 66
		f 3 -90 93 94
		mu 0 3 62 69 70
		f 4 95 96 97 98
		mu 0 4 71 72 73 74
		f 4 99 -76 100 101
		mu 0 4 75 54 57 76
		f 4 102 -102 103 104
		mu 0 4 77 75 76 78
		f 4 105 106 107 -74
		mu 0 4 55 79 80 56
		f 4 108 109 110 111
		mu 0 4 81 82 83 84
		f 3 112 113 114
		mu 0 3 85 86 87
		f 3 115 116 117
		mu 0 3 88 89 90
		f 3 118 119 120
		mu 0 3 91 92 93
		f 4 121 -121 122 123
		mu 0 4 94 91 93 95
		f 3 124 125 -116
		mu 0 3 88 96 89
		f 3 126 -118 127
		mu 0 3 92 88 90
		f 3 -128 128 -120
		mu 0 3 92 90 93
		f 3 -126 129 130
		mu 0 3 89 96 97
		f 4 131 132 133 134
		mu 0 4 98 99 100 101
		f 4 135 -112 136 137
		mu 0 4 102 81 84 103
		f 4 138 -138 139 140
		mu 0 4 104 102 103 105
		f 4 141 142 143 -110
		mu 0 4 82 106 107 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_FallenBranches02_lod1";
	rename -uid "AB1ADA7F-4724-FF01-0DCB-9883FBEF9FE4";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "SM_FallenBranches02_lod1Shape" -p "SM_FallenBranches02_lod1";
	rename -uid "E9871F95-42A9-2948-5A5A-5A8E82926537";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.18614395 1.002517581
		 0.14166562 0.91717601 0.66985297 0.98033869 0.38824269 1.0011506081 0.31164923 0.93014014
		 0.40402651 0.94039416 0.66985297 0.98033869 0.18614395 1.002517581 0.14166562 0.91717601
		 0.30793762 1.0011544228 0.27284607 0.92878509 0.30793762 1.0011544228 0.27284607
		 0.92878509 0.38824269 1.0011506081 0.31164923 0.93014014 0.40402651 0.94039416 0.66985297
		 0.98033869 0.18614395 1.002517581 0.14166562 0.91717601 0.66985297 0.98033869 0.18614395
		 1.002517581 0.14166562 0.91717601 0.30793762 1.0011544228 0.27284607 0.92878509 0.38824269
		 1.0011506081 0.31164923 0.93014014 0.40402651 0.94039416 0.66985297 0.98033869 0.18614395
		 1.002517581 0.14166562 0.91717601 0.66985297 0.98033869 0.18614395 1.002517581 0.14166562
		 0.91717601 0.30793762 1.0011544228 0.27284607 0.92878509 0.38824269 1.0011506081
		 0.31164923 0.93014014 0.40402651 0.94039416 0.66985297 0.98033869 0.18614395 1.002517581
		 0.14166562 0.91717601 0.66985297 0.98033869 0.18614395 1.002517581 0.14166562 0.91717601;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 44 ".vt[0:43]"  35.66156006 0.060277749 -67.61300659 14.99282837 18.41624069 -95.46505737
		 -48.6417923 0.67754579 109.95742798 34.4158783 21.6846447 -55.77542114 18.49467468 -8.14180946 -82.54684448
		 -48.76776886 1.8621974 109.92745972 -12.58883667 4.54194164 15.042785645 2.45141602 15.41958046 12.093261719
		 7.36856079 0.80821979 -23.18014526 23.7787323 9.95066357 -19.26470947 4.88209534 24.22676086 -42.27078247
		 21.97486877 3.82482672 -33.58996582 25.52754211 -0.73974502 -57.90536499 -97.90968323 -1.46113801 2.46353149
		 12.76690674 15.5075798 -38.67977905 23.97952271 -9.44534302 -41.15335083 -98.099746704 -0.96413255 1.92230225
		 -37.80705261 0.5378589 -21.53125 -32.093032837 11.27585125 -22.13015747 -10.82072449 0.78860122 -27.15756226
		 -7.77780151 12.27110672 -24.18548584 -5.41430664 7.38046646 -44.49807739 -56.44412231 32.10269547 19.88113403
		 -58.28096008 43.3163414 -4.062835693 66.081481934 -3.048943758 54.060241699 -49.7815094 19.12166977 11.69369507
		 -54.96615601 48.15920258 15.17120361 66.1668396 -3.47031307 53.38265991 5.19178772 18.17097855 31.15872192
		 -3.27896118 9.28353977 28.31268311 -22.19581604 26.67584991 26.27215576 -28.27604675 15.012230873 26.80282593
		 -28.915802 25.090871811 7.033508301 82.64724731 32.35393524 -9.97589111 96.093292236 29.79108429 16.62213135
		 -64.27336121 0.37066174 -8.27090454 77.47183228 14.5015974 -7.048309326 85.12142944 44.67990875 3.51077271
		 -64.13200378 -0.43193364 -7.86956787 11.62625122 17.16247559 -2.19128418 20.49319458 7.78242493 -8.26751709
		 43.37611389 25.80682373 -4.71517944 48.0009765625 15.63884163 -14.15921021 58.3260498 14.45461369 8.76431274;
	setAttr -s 60 ".ed[0:59]"  2 9 0 9 10 0 10 2 0 7 8 0 8 6 0 6 7 0 7 3 0
		 3 8 0 5 7 0 6 5 0 3 4 0 4 8 0 9 0 0 0 1 0 1 10 0 13 20 0 20 21 0 21 13 0 18 19 0
		 19 17 0 17 18 0 18 14 0 14 19 0 16 18 0 17 16 0 14 15 0 15 19 0 20 11 0 11 12 0 12 21 0
		 24 31 0 31 32 0 32 24 0 29 30 0 30 28 0 28 29 0 29 25 0 25 30 0 27 29 0 28 27 0 25 26 0
		 26 30 0 31 22 0 22 23 0 23 32 0 35 42 0 42 43 0 43 35 0 40 41 0 41 39 0 39 40 0 40 36 0
		 36 41 0 38 40 0 39 38 0 36 37 0 37 41 0 42 33 0 33 34 0 34 43 0;
	setAttr -s 76 ".n[0:75]" -type "float3"  0.35601959 0.8964541 0.26385611
		 0.35601959 0.89645404 0.26385611 0.35601959 0.8964541 0.26385614 -0.59010035 0.71347427
		 -0.3778041 -0.59010041 0.71347427 -0.3778041 -0.59010035 0.71347427 -0.3778041 -0.79130441
		 0.5179739 -0.32486966 -0.79130441 0.51797396 -0.32486972 -0.79130447 0.51797396 -0.32486969
		 -0.59966558 0.77306437 -0.20681578 -0.59966552 0.77306426 -0.20681578 -0.59966552
		 0.77306437 -0.20681576 -0.75482589 0.61282206 -0.23385255 -0.75482589 0.612822 -0.23385255
		 -0.75482589 0.612822 -0.23385252 0.6249212 0.78055018 0.014662807 0.62492108 0.78055018
		 0.014662806 0.62492114 0.78055012 0.014662806 0.62492108 0.78055006 0.014662805 -0.21824336
		 0.94269878 -0.25236645 -0.21824338 0.94269872 -0.25236648 -0.21824339 0.94269878
		 -0.25236648 -0.20428166 0.054189835 -0.97741115 -0.20428166 0.054189838 -0.97741109
		 -0.20428167 0.054189838 -0.97741109 -0.32113123 -0.20853271 -0.92379051 -0.32113123
		 -0.20853271 -0.92379045 -0.32113123 -0.20853272 -0.92379045 -0.36195275 0.14121376
		 -0.92143846 -0.36195272 0.14121376 -0.9214384 -0.36195275 0.14121376 -0.92143846
		 -0.3934246 -0.086050302 -0.91532087 -0.39342466 -0.086050309 -0.91532093 -0.39342466
		 -0.086050302 -0.91532093 0.19617781 0.96422511 -0.17828122 0.1961778 0.96422511 -0.1782812
		 0.19617781 0.96422511 -0.17828122 0.1961778 0.96422511 -0.17828122 -0.039688032 -0.89072019
		 -0.45281586 -0.039688036 -0.89072025 -0.45281589 -0.039688036 -0.89072031 -0.45281589
		 0.2083092 0.11258198 -0.97156191 0.20830922 0.11258198 -0.97156191 0.20830919 0.11258198
		 -0.97156197 0.37727803 0.3078751 -0.87342668 0.37727803 0.30787516 -0.87342674 0.37727797
		 0.30787507 -0.87342668 0.33638468 -0.019105153 -0.94153088 0.33638465 -0.019105149
		 -0.94153076 0.33638468 -0.019105151 -0.94153082 0.42017207 0.18150038 -0.88910806
		 0.42017204 0.18150038 -0.889108 0.42017207 0.18150039 -0.889108 -0.39236334 -0.83548564
		 -0.38472688 -0.39236328 -0.83548564 -0.38472688 -0.39236334 -0.83548558 -0.38472685
		 -0.39236334 -0.83548564 -0.38472685 0.12834945 -0.98575014 -0.10873409 0.12834945
		 -0.98575014 -0.10873409 0.12834944 -0.98575002 -0.10873409 0.18209198 -0.40753672
		 0.89484984 0.182092 -0.40753675 0.89484984 0.182092 -0.40753672 0.89484984 0.0021260574
		 -0.19596241 0.98060906 0.0021260574 -0.19596243 0.98060912 0.0021260572 -0.19596241
		 0.98060912 0.053255022 -0.50696021 0.86032277 0.053255018 -0.50696015 0.86032271
		 0.053255025 -0.50696021 0.86032277 -0.041539218 -0.32057536 0.94631177 -0.041539222
		 -0.32057536 0.94631177 -0.041539222 -0.32057533 0.94631171 0.42690378 -0.86298037
		 -0.27021843 0.42690372 -0.86298037 -0.27021846 0.42690381 -0.86298037 -0.27021846
		 0.42690381 -0.86298037 -0.27021849;
	setAttr -s 24 -ch 76 ".fc[0:23]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 2 9 10
		f 3 3 4 5
		mu 0 3 3 4 5
		f 3 6 7 -4
		mu 0 3 3 7 4
		f 3 8 -6 9
		mu 0 3 6 3 5
		f 3 -8 10 11
		mu 0 3 4 7 8
		f 4 12 13 14 -2
		mu 0 4 9 0 1 10
		f 3 15 16 17
		mu 0 3 19 11 12
		f 3 18 19 20
		mu 0 3 13 14 15
		f 3 21 22 -19
		mu 0 3 13 17 14
		f 3 23 -21 24
		mu 0 3 16 13 15
		f 3 -23 25 26
		mu 0 3 14 17 18
		f 4 27 28 29 -17
		mu 0 4 11 20 21 12
		f 3 30 31 32
		mu 0 3 30 22 23
		f 3 33 34 35
		mu 0 3 24 25 26
		f 3 36 37 -34
		mu 0 3 24 28 25
		f 3 38 -36 39
		mu 0 3 27 24 26
		f 3 -38 40 41
		mu 0 3 25 28 29
		f 4 42 43 44 -32
		mu 0 4 22 31 32 23
		f 3 45 46 47
		mu 0 3 41 33 34
		f 3 48 49 50
		mu 0 3 35 36 37
		f 3 51 52 -49
		mu 0 3 35 39 36
		f 3 53 -51 54
		mu 0 3 38 35 37
		f 3 -53 55 56
		mu 0 3 36 39 40
		f 4 57 58 59 -47
		mu 0 4 33 42 43 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_FallenBranches02_lod2";
	rename -uid "B1E14D4F-4523-6D1E-FE15-099D5CF579C5";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "SM_FallenBranches02_lod2Shape" -p "SM_FallenBranches02_lod2";
	rename -uid "215D8D04-4718-E2C4-8524-31A1EEA16C49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.66985297 0.98033869
		 0.18614395 1.002517581 0.14166562 0.91717601 0.66985297 0.98033869 0.18614395 1.002517581
		 0.14166562 0.91717601 0.66985297 0.98033869 0.18614395 1.002517581 0.14166562 0.91717601;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 9 ".vt[0:8]"  34.4158783 21.6846447 -55.77542114 18.49467468 -8.14180946 -82.54684448
		 -48.76776886 1.8621974 109.92745972 -49.7815094 20.74755478 11.69369507 -54.96615601 49.11070633 15.17120361
		 66.1668396 -3.47031307 53.38265991 77.47183228 14.5015974 -7.048309326 85.12142944 44.67990875 3.51077271
		 -64.13200378 2.14921522 -7.86956787;
	setAttr -s 9 ".ed[0:8]"  1 2 0 2 0 0 0 1 0 4 5 0 5 3 0 3 4 0 7 8 0
		 8 6 0 6 7 0;
	setAttr -s 9 ".n[0:8]" -type "float3"  -0.71671194 0.63710886 -0.2835778
		 -0.71671182 0.63710886 -0.28357777 -0.71671188 0.63710886 -0.28357777 0.36575353
		 0.17884277 -0.91336715 0.36575353 0.17884277 -0.91336715 0.36575353 0.17884275 -0.91336715
		 0.023807684 -0.33553529 0.94172668 0.023807686 -0.33553535 0.94172674 0.023807688
		 -0.33553535 0.94172674;
	setAttr -s 3 -ch 9 ".fc[0:2]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 2 0 1
		f 3 3 4 5
		mu 0 3 5 3 4
		f 3 6 7 8
		mu 0 3 8 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode materialInfo -n "materialInfo2";
	rename -uid "8830325B-4941-3E8B-2F1F-1D8DDD0DDC4A";
createNode shadingEngine -n "SM_FallenBranches01SG1";
	rename -uid "422D3736-45D0-3209-B24F-C8A513284813";
	setAttr ".ihi" 0;
	setAttr -s 38 ".dsm";
	setAttr ".ro" yes;
createNode phong -n "M_pine01_fo";
	rename -uid "357EA632-49B3-C700-331E-6D9E9ABA6303";
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
createNode file -n "file23";
	rename -uid "BFAA02C9-4B1D-74E3-BF71-6AA0B0F465E0";
	setAttr ".ftn" -type "string" "G:/_ENVIRONMENT PROJECT_/Asset Store/Pine Tree/textures/tga/t_pine_fo_d.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "DE2142BF-4197-3FCD-605F-C19D0D886B97";
createNode bump2d -n "bump2d1";
	rename -uid "B1817B01-432D-4B2E-1D38-8A9951BC1F2B";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file24";
	rename -uid "3E30807A-47AF-ED3F-39F7-5EA6308258B9";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "G:/_ENVIRONMENT PROJECT_/Asset Store/Pine Tree/textures/tga/t_pine_fo_n.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "5EF22785-45E3-C6ED-558A-D9947FF14114";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0700A50B-4607-C61B-759C-B78FFA11046F";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".ta" 3;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :modelPanel4ViewSelectedSet;
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
connectAttr "SM_FallenBranches01SG1.msg" "materialInfo2.sg";
connectAttr "M_pine01_fo.msg" "materialInfo2.m";
connectAttr "file23.msg" "materialInfo2.t" -na;
connectAttr "M_pine01_fo.oc" "SM_FallenBranches01SG1.ss";
connectAttr "groupId2.msg" "SM_FallenBranches01SG1.gn" -na;
connectAttr "SM_FallenBranches01Shape.iog.og[1]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_FallenBranches01_lod1Shape.iog.og[1]" "SM_FallenBranches01SG1.dsm"
		 -na;
connectAttr "SM_Pine02_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine03Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine03_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine03_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineDead01Shape.iog.og[1]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineDead01_lod1Shape.iog.og[1]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead01_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead02Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineDead02_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead02_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead03Shape.iog.og[2]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineDead03_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_FallenBranches02Shape.iog" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineDead03_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead04Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineDead04_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead04_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead05Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineDead05_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineDead05_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineMedium01Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine01Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine01_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine01_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine02Shape.iog.og[1]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_Pine02_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_FallenBranches02_lod1Shape.iog" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineMedium01_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineMedium01_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineMedium02Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineMedium02_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineMedium02_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineSmall01Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na;
connectAttr "SM_PineSmall01_lod1Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_PineSmall01_lod2Shape.iog.og[0]" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "SM_FallenBranches02_lod2Shape.iog" "SM_FallenBranches01SG1.dsm" -na
		;
connectAttr "file23.oc" "M_pine01_fo.c";
connectAttr "bump2d1.o" "M_pine01_fo.n";
connectAttr "file23.ot" "M_pine01_fo.it";
connectAttr "place2dTexture2.o" "file23.uv";
connectAttr "place2dTexture2.ofu" "file23.ofu";
connectAttr "place2dTexture2.ofv" "file23.ofv";
connectAttr "place2dTexture2.rf" "file23.rf";
connectAttr "place2dTexture2.reu" "file23.reu";
connectAttr "place2dTexture2.rev" "file23.rev";
connectAttr "place2dTexture2.vt1" "file23.vt1";
connectAttr "place2dTexture2.vt2" "file23.vt2";
connectAttr "place2dTexture2.vt3" "file23.vt3";
connectAttr "place2dTexture2.vc1" "file23.vc1";
connectAttr "place2dTexture2.ofs" "file23.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file23.ws";
connectAttr "file24.oa" "bump2d1.bv";
connectAttr "place2dTexture3.o" "file24.uv";
connectAttr "place2dTexture3.ofu" "file24.ofu";
connectAttr "place2dTexture3.ofv" "file24.ofv";
connectAttr "place2dTexture3.rf" "file24.rf";
connectAttr "place2dTexture3.reu" "file24.reu";
connectAttr "place2dTexture3.rev" "file24.rev";
connectAttr "place2dTexture3.vt1" "file24.vt1";
connectAttr "place2dTexture3.vt2" "file24.vt2";
connectAttr "place2dTexture3.vt3" "file24.vt3";
connectAttr "place2dTexture3.vc1" "file24.vc1";
connectAttr "place2dTexture3.ofs" "file24.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file24.ws";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SM_FallenBranches01SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SM_FallenBranches01SG1.message" ":defaultLightSet.message";
connectAttr "SM_FallenBranches01SG1.pa" ":renderPartition.st" -na;
connectAttr "M_pine01_fo.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
// End of SM_FallenBranches02.ma
