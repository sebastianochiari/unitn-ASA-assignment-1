; FULL problem description
; Describe one scenario within the domain constraints

(define (problem full-vaccine-distribution)
	(:domain vaccine-distribution)

	; Objects are candidates to replace free variables
	(:objects
		ROMA
			roma1
				frosinone
					cassino
					ceccano
					alatri
					anagni
				latina
					aprilia
					terracina
					fondi
					sabaudia
				rieti
					amatrice
					leonessa
					borbona
					spedino
				roma2
					monterotondo
					frascati
					velletri
					pomezia
					anzio
				viterbo
					acquapendente
					tarquinia
					orte
					bagnoregio
				perugia
					spoleto
					gubbio
					foligno
				terni
					amelia
					narni
					montecastrilli
			reggiocalabria1
				catanzaro
					lameziaterme
					botricello
					girifalco
					sersale
				cosenza
					dipignano
					amantea
					lorica
				crotone
					verzino
					crucoli
					salica
				reggiocalabria2
					gioiatauro
					polistena
					bovalino
				vibovalentia
					tropea
					mileto
					nicotera
					pizzo
				corigliano
					tarsia
					rossano
					sibari
					saracena
			napoli1
				avellino
					andretta
					taurasi
					solofra
				benevento
					telese
					morcone
					circello
					pietralcina
				caserta
					aversa
					mondragone
					teano
				napoli2
					pozzuoli
					pompei
					afragola
					sorrento
				salerno
					battipaglia
					polla
					palinuro
				matera
					metaponto
					irsina
					stigliano
					tursi
					ferrandina
				potenza
					venosa
					lagonegro
					senise
			aquila1
				chieti
					francavilla
					guardiagrele
					lanciano
					vasto
				aquila2
					avezzano
					pescina
					sulmona
					pizzoli
				pescara
					montesilvano
					scafa
					popoli
				teramo
					roseto
					giulianova
					ceppo
					crognaletto
					nereto
				campobasso
					boiano
					sepino
					riccia
					colletorto
					fossalto
				isernia
					capracotta
					agnone
					venafro
				termoli
					palata
					larino
					petaccio
					portocannone
					castelmauro
			bari1
				bari2
					molfetta
					altamura
					monopoli
				barletta
					andria
					trani
					bisceglie
					trinitapoli
				brindisi
					fasano
					ostuni
					mesegne
				foggia
					manfredonia
					cerignola
					lucera
				lecce
					otranto
					gallipoli
					nardo
					maglie
				taranto
					castellaneta
					massafra
					martinafranca
					grottaglie
					manduria
			palermo1
				agrigento
					canicatti
					licata
					sciacca
				caltanissetta
					mussomeli
					gela
					niscemi
				catania
					acireale
					paterno
					bronte
					caltagirone
					giarre
				enna
					nicosia
					barrafranca
					troina
				messina
					milazzo
					patti
					lipari
				palermo2
					corleone
					bagheria
					gangi
					cefalu
				ragusa
					modica
					vittoria
					pozzallo
				siracusa
					noto
					avola
					lentini
					augusta
				trapani
					marsala
					alcamo
					sanvitolocapo
					mazaradelvallo
			torino1
				aosta
					chatillon
					verres
					courmayeur
				alessandria
					tortona
					noviligure
					acquiterme
					casalemonferrato
					ovada
				asti
					moncalvo
					cocconato
					sandamianodasti
					canelli
				biella
					cavaglia
					cossato
					oropa
					piedicavallo
				cuneo
					mondovi
					bra
					alba
				novara
					gattinara
					borgomanero
					arona
					trecate
				torino2
					ivrea
					pinerolo
					susa
					oulx
				verbano
					domodossola
					verbania
					valdo
				vercelli
					saluggia
					stroppiana
					carisio
			firenze1
				arezzo
					cortona
					subbiano
					bibbiena
				firenze2
					empoli
					firenzuola
					certaldo
					barberino
					campibisenzio
				grosseto
					orbetello
					follonica
					roccastrada
					saturnia
					pitigliano
				livorno
					piombino
					cecina
					rosignano
				lucca
					viareggio
					pietrasanta
					barga
				pisa
					pontedera
					volterra
					pomarance
				pistoia
					montecatini
					quarrata
					cutigliano
					abetone
				prato
					cantagallo
					vaiano
					vernio
				siena
					pienza
					montalcino
					montepulciano
					poggibonsi
			ancona1
				ancona2
					senigallia
					jesi
					fabriano
					numana
				ascoli
					piceno
					sanbenedetto
					grottammare
					acquasantaterme
				fermo
					portosangiorgio
					montegranaro
					servigliano
					montefalcone
					grottazzolina
				macerata
					civitanovamarche
					camerino
					tolentino
				pesaro
					fano
					marotta
					calcinelli
					vallefoglia
				urbino
					pergola
					acqualagna
					apecchio
			genova1
				genova2
					rapallo
					chiavari
					sestrilevante
				imperia
					taggia
					borgomaro
					pontedassio
				spezia
					lerici
					levanto
					riomaggiore
					manarola
					brugnato
				savona
					albenga
					finaleligure
					varazze
				massa
					carrara
					pontremoli
					fivizzano
				sanremo
					bordighera
					ventimiglia
					pigna
			venezia1
				venezia2
					chioggia
					mestre
					sandona
					portogruaro
				treviso
					conegliano
					montebelluna
					vittorioveneto
					oderzo
					castelfranco
				rovigo
					adria
					rosolina
					trecenta
				vicenza
					schio
					thiene
					bassano
					asiago
				verona
					nogara
					legnago
					malcesine
					peschieradelgarda
				padova
					este
					monselice
					camposampiero
					cittadella
			trieste1
				trieste2
					muggia
					opicina
					duino
				gorizia
					monfalcone
					cormons
					villesse
				udine
					palmanova
					ovaro
					gemona
					codroipo
				pordenone
					aviano
					maniago
					spilimbergo
				belluno
					feltre
					agordo
					cortina
					auronzo
				trento
					rovereto
					borgovalsugana
					cles
					tione
				bolzano
					merano
					brunico
					bressanone
					vipiteno
					sesto
			milano1
				bergamo
					treviglio
					clusone
					nembro
				brescia
					desenzano
					iseo
					salo
					edolo
					esine
				como
					cantù
					erba
					cernobbio
				cremona
					crema
					casalmaggiore
					soresina
				lecco
					merate
					barzio
					calolziocorte
				lodi
					codogno
					casalpusterlengo
					somaglia
				mantova
					poggiorusco
					suzzara
					asola
					rodigo
				milano2
					abbiategrasso
					magenta
					segrate
					rho
					sestosangiovanni
				monza
					seregno
					lissone
					busnago
					vimercate
				pavia
					vigevano
					voghera
					varzi
					mortara
				sondrio
					bormio
					livigno
					morbegno
					campodolcino
				varese
					bustoarsizio
					gallarate
					luino
			bologna1
				bologna2
					imola
					vergato
					castiglionedeipepoli
				ferrara
					copparo
					codigoro
					comacchio
					argenta
					bondeno
				forli
					cesena
					predappio
					forlimpopoli
					cesenatico
				modena
					carpi
					pavullo
					sassuolo
				parma
					fidenza
					langhirano
					volpara
				piacenza
					bobbio
					pontenure
					fiorenzuola
				ravenna
					lugo
					faenza
					brisighella
					cervia
				reggioemilia
					correggio
					bibbiano
					busana
				rimini
					riccione
					cattolica
					sanmarino
			cagliari1
				cagliari2
					ismolas
					siliqua
					sestu
				nuoro
					macomer
					fonni
					bitti
					cardedu
					posada
				oristano
					cabras
					terralba
					laconi
					bosa
				sassari
					alghero
					stintino
					castelsardo
				olbia
					portocervo
					berchidda
					arzachena
				carbonia
					zinnigas
					portoscuso
					buggerru
					gonnosfanadiga
		; TRANSPORT MEANS
		; planes
		plane1 plane2 plane3 plane4 plane5 plane6 plane7 plane8 plane9 plane10 
		
		; trucks
		truck1 truck2 truck3 truck4 truck5 truck6 truck7 truck8 truck9 truck10 
		truck11 truck12 truck13 truck14 truck15 truck16 truck17 truck18 truck19 truck20 
		truck21 truck22 
		; drones
		drone1 drone2 drone3 drone4 drone5 drone6 drone7 drone8 drone9 drone10 
		drone11 drone12 drone13 drone14 drone15 drone16 drone17 drone18 drone19 drone20 
		drone21 drone22 drone23 drone24 drone25 drone26 drone27 drone28 drone29 drone30 
		drone31 drone32 drone33 drone34 drone35 drone36 drone37 drone38 drone39 drone40 
		drone41 drone42 drone43 drone44 drone45 drone46 drone47 drone48 drone49 drone50 
		drone51 drone52 drone53 drone54 drone55 drone56 drone57 drone58 drone59 drone60 
		drone61 drone62 drone63 drone64 drone65 drone66 drone67 drone68 drone69 drone70 
		drone71 drone72 drone73 drone74 drone75 drone76 drone77 drone78 
		; vaccine boxes
		vb1 vb2 vb3 vb4 vb5 vb6 vb7 vb8 vb9 vb10 
		vb11 vb12 vb13 vb14 vb15 vb16 vb17 vb18 vb19 vb20 
		vb21 vb22 vb23 vb24 vb25 vb26 vb27 vb28 vb29 vb30 
		vb31 vb32 vb33 vb34 vb35 vb36 vb37 vb38 vb39 vb40 
		vb41 vb42 vb43 vb44 vb45 vb46 vb47 vb48 vb49 vb50 
		vb51 vb52 vb53 vb54 vb55 vb56 vb57 vb58 vb59 vb60 
		vb61 vb62 vb63 vb64 vb65 vb66 vb67 vb68 vb69 vb70 
		vb71 vb72 vb73 vb74 vb75 vb76 vb77 vb78 vb79 vb80 
		vb81 vb82 vb83 vb84 vb85 vb86 vb87 vb88 vb89 vb90 
		vb91 vb92 vb93 vb94 vb95 vb96 vb97 vb98 vb99 vb100 
		vb101 vb102 vb103 vb104 vb105 vb106 vb107 vb108 vb109 vb110 
		vb111 vb112 vb113 vb114 vb115 vb116 vb117 vb118 vb119 vb120 
		vb121 vb122 vb123 vb124 vb125 vb126 vb127 vb128 vb129 vb130 
		vb131 vb132 vb133 vb134 vb135 vb136 vb137 vb138 vb139 vb140 
		vb141 vb142 vb143 vb144 vb145 vb146 vb147 vb148 vb149 vb150 
		vb151 vb152 vb153 vb154 vb155 vb156 vb157 vb158 vb159 vb160 
		vb161 vb162 vb163 vb164 vb165 vb166 vb167 vb168 vb169 vb170 
		vb171 vb172 vb173 vb174 vb175 vb176 vb177 vb178 vb179 vb180 
		vb181 vb182 vb183 vb184 vb185 vb186 vb187 vb188 vb189 vb190 
		vb191 vb192 vb193 vb194 vb195 vb196 vb197 vb198 vb199 vb200 
		vb201 vb202 vb203 vb204 vb205 vb206 vb207 vb208 vb209 vb210 
		vb211 vb212 vb213 vb214 vb215 vb216 vb217 vb218 vb219 vb220 
		vb221 vb222 vb223 vb224 vb225 vb226 vb227 vb228 vb229 vb230 
		vb231 vb232 vb233 vb234 vb235 vb236 vb237 vb238 vb239 vb240 
		vb241 vb242 vb243 vb244 vb245 vb246 vb247 vb248 vb249 vb250 
		vb251 vb252 vb253 vb254 vb255 vb256 vb257 vb258 vb259 vb260 
		vb261 vb262 vb263 vb264 vb265 vb266 vb267 vb268 vb269 vb270 
		vb271 vb272 vb273 vb274 vb275 vb276 vb277 vb278 vb279 vb280 
		vb281 vb282 vb283 vb284 vb285 vb286 vb287 vb288 vb289 vb290 
		vb291 vb292 vb293 vb294 vb295 vb296 vb297 vb298 vb299 vb300 
		vb301 vb302 vb303 vb304 vb305 vb306 vb307 vb308 vb309 vb310 
		vb311 vb312 vb313 vb314 vb315 vb316 vb317 vb318 vb319 vb320 
		vb321 vb322 vb323 vb324 vb325 vb326 vb327 vb328 vb329 vb330 
		vb331 vb332 vb333 vb334 vb335 vb336 vb337 vb338 vb339 vb340 
		vb341 vb342 vb343 vb344 vb345 vb346 vb347 vb348 vb349 vb350 
		vb351 vb352 vb353 vb354 vb355 vb356 vb357 vb358 vb359 vb360 
		vb361 vb362 vb363 vb364 vb365 vb366 vb367 vb368 vb369 vb370 
		vb371 vb372 vb373 vb374 vb375 vb376 vb377 vb378 vb379 vb380 
		vb381 vb382 vb383 vb384 vb385 vb386 vb387 vb388 vb389 vb390 
		vb391 vb392 vb393 vb394 vb395 vb396 vb397 vb398 vb399 vb400 
		vb401 vb402 vb403 vb404 vb405 vb406 vb407 vb408 vb409 vb410 
		vb411 vb412 
	)

	; The initial state describe what is currently true
	; Everything else is considered false
	(:init
		; LOCATIONS
		; central point
		(location ROMA) (isCDP ROMA)
		; regional distribution centers
		(location roma1) (isRDC roma1)
		(location reggiocalabria1) (isRDC reggiocalabria1)
		(location napoli1) (isRDC napoli1)
		(location aquila1) (isRDC aquila1)
		(location bari1) (isRDC bari1)
		(location palermo1) (isRDC palermo1)
		(location torino1) (isRDC torino1)
		(location firenze1) (isRDC firenze1)
		(location ancona1) (isRDC ancona1)
		(location genova1) (isRDC genova1)
		(location venezia1) (isRDC venezia1)
		(location trieste1) (isRDC trieste1)
		(location milano1) (isRDC milano1)
		(location bologna1) (isRDC bologna1)
		(location cagliari1) (isRDC cagliari1)
		; provincial distribution centers
		(location frosinone) (isPDC frosinone)
		(location latina) (isPDC latina)
		(location rieti) (isPDC rieti)
		(location roma2) (isPDC roma2)
		(location viterbo) (isPDC viterbo)
		(location perugia) (isPDC perugia)
		(location terni) (isPDC terni)
		(location catanzaro) (isPDC catanzaro)
		(location cosenza) (isPDC cosenza)
		(location crotone) (isPDC crotone)
		(location reggiocalabria2) (isPDC reggiocalabria2)
		(location vibovalentia) (isPDC vibovalentia)
		(location corigliano) (isPDC corigliano)
		(location avellino) (isPDC avellino)
		(location benevento) (isPDC benevento)
		(location caserta) (isPDC caserta)
		(location napoli2) (isPDC napoli2)
		(location salerno) (isPDC salerno)
		(location matera) (isPDC matera)
		(location potenza) (isPDC potenza)
		(location chieti) (isPDC chieti)
		(location aquila2) (isPDC aquila2)
		(location pescara) (isPDC pescara)
		(location teramo) (isPDC teramo)
		(location campobasso) (isPDC campobasso)
		(location isernia) (isPDC isernia)
		(location termoli) (isPDC termoli)
		(location bari2) (isPDC bari2)
		(location barletta) (isPDC barletta)
		(location brindisi) (isPDC brindisi)
		(location foggia) (isPDC foggia)
		(location lecce) (isPDC lecce)
		(location taranto) (isPDC taranto)
		(location agrigento) (isPDC agrigento)
		(location caltanissetta) (isPDC caltanissetta)
		(location catania) (isPDC catania)
		(location enna) (isPDC enna)
		(location messina) (isPDC messina)
		(location palermo2) (isPDC palermo2)
		(location ragusa) (isPDC ragusa)
		(location siracusa) (isPDC siracusa)
		(location trapani) (isPDC trapani)
		(location aosta) (isPDC aosta)
		(location alessandria) (isPDC alessandria)
		(location asti) (isPDC asti)
		(location biella) (isPDC biella)
		(location cuneo) (isPDC cuneo)
		(location novara) (isPDC novara)
		(location torino2) (isPDC torino2)
		(location verbano) (isPDC verbano)
		(location vercelli) (isPDC vercelli)
		(location arezzo) (isPDC arezzo)
		(location firenze2) (isPDC firenze2)
		(location grosseto) (isPDC grosseto)
		(location livorno) (isPDC livorno)
		(location lucca) (isPDC lucca)
		(location pisa) (isPDC pisa)
		(location pistoia) (isPDC pistoia)
		(location prato) (isPDC prato)
		(location siena) (isPDC siena)
		(location ancona2) (isPDC ancona2)
		(location ascoli) (isPDC ascoli)
		(location fermo) (isPDC fermo)
		(location macerata) (isPDC macerata)
		(location pesaro) (isPDC pesaro)
		(location urbino) (isPDC urbino)
		(location genova2) (isPDC genova2)
		(location imperia) (isPDC imperia)
		(location spezia) (isPDC spezia)
		(location savona) (isPDC savona)
		(location massa) (isPDC massa)
		(location sanremo) (isPDC sanremo)
		(location venezia2) (isPDC venezia2)
		(location treviso) (isPDC treviso)
		(location rovigo) (isPDC rovigo)
		(location vicenza) (isPDC vicenza)
		(location verona) (isPDC verona)
		(location padova) (isPDC padova)
		(location trieste2) (isPDC trieste2)
		(location gorizia) (isPDC gorizia)
		(location udine) (isPDC udine)
		(location pordenone) (isPDC pordenone)
		(location belluno) (isPDC belluno)
		(location trento) (isPDC trento)
		(location bolzano) (isPDC bolzano)
		(location bergamo) (isPDC bergamo)
		(location brescia) (isPDC brescia)
		(location como) (isPDC como)
		(location cremona) (isPDC cremona)
		(location lecco) (isPDC lecco)
		(location lodi) (isPDC lodi)
		(location mantova) (isPDC mantova)
		(location milano2) (isPDC milano2)
		(location monza) (isPDC monza)
		(location pavia) (isPDC pavia)
		(location sondrio) (isPDC sondrio)
		(location varese) (isPDC varese)
		(location bologna2) (isPDC bologna2)
		(location ferrara) (isPDC ferrara)
		(location forli) (isPDC forli)
		(location modena) (isPDC modena)
		(location parma) (isPDC parma)
		(location piacenza) (isPDC piacenza)
		(location ravenna) (isPDC ravenna)
		(location reggioemilia) (isPDC reggioemilia)
		(location rimini) (isPDC rimini)
		(location cagliari2) (isPDC cagliari2)
		(location nuoro) (isPDC nuoro)
		(location oristano) (isPDC oristano)
		(location sassari) (isPDC sassari)
		(location olbia) (isPDC olbia)
		(location carbonia) (isPDC carbonia)
		; health districts
		(location cassino) (isHDDC cassino)
		(location ceccano) (isHDDC ceccano)
		(location alatri) (isHDDC alatri)
		(location anagni) (isHDDC anagni)
		(location aprilia) (isHDDC aprilia)
		(location terracina) (isHDDC terracina)
		(location fondi) (isHDDC fondi)
		(location sabaudia) (isHDDC sabaudia)
		(location amatrice) (isHDDC amatrice)
		(location leonessa) (isHDDC leonessa)
		(location borbona) (isHDDC borbona)
		(location spedino) (isHDDC spedino)
		(location monterotondo) (isHDDC monterotondo)
		(location frascati) (isHDDC frascati)
		(location velletri) (isHDDC velletri)
		(location pomezia) (isHDDC pomezia)
		(location anzio) (isHDDC anzio)
		(location acquapendente) (isHDDC acquapendente)
		(location tarquinia) (isHDDC tarquinia)
		(location orte) (isHDDC orte)
		(location bagnoregio) (isHDDC bagnoregio)
		(location spoleto) (isHDDC spoleto)
		(location gubbio) (isHDDC gubbio)
		(location foligno) (isHDDC foligno)
		(location amelia) (isHDDC amelia)
		(location narni) (isHDDC narni)
		(location montecastrilli) (isHDDC montecastrilli)
		(location lameziaterme) (isHDDC lameziaterme)
		(location botricello) (isHDDC botricello)
		(location girifalco) (isHDDC girifalco)
		(location sersale) (isHDDC sersale)
		(location dipignano) (isHDDC dipignano)
		(location amantea) (isHDDC amantea)
		(location lorica) (isHDDC lorica)
		(location verzino) (isHDDC verzino)
		(location crucoli) (isHDDC crucoli)
		(location salica) (isHDDC salica)
		(location gioiatauro) (isHDDC gioiatauro)
		(location polistena) (isHDDC polistena)
		(location bovalino) (isHDDC bovalino)
		(location tropea) (isHDDC tropea)
		(location mileto) (isHDDC mileto)
		(location nicotera) (isHDDC nicotera)
		(location pizzo) (isHDDC pizzo)
		(location tarsia) (isHDDC tarsia)
		(location rossano) (isHDDC rossano)
		(location sibari) (isHDDC sibari)
		(location saracena) (isHDDC saracena)
		(location andretta) (isHDDC andretta)
		(location taurasi) (isHDDC taurasi)
		(location solofra) (isHDDC solofra)
		(location telese) (isHDDC telese)
		(location morcone) (isHDDC morcone)
		(location circello) (isHDDC circello)
		(location pietralcina) (isHDDC pietralcina)
		(location aversa) (isHDDC aversa)
		(location mondragone) (isHDDC mondragone)
		(location teano) (isHDDC teano)
		(location pozzuoli) (isHDDC pozzuoli)
		(location pompei) (isHDDC pompei)
		(location afragola) (isHDDC afragola)
		(location sorrento) (isHDDC sorrento)
		(location battipaglia) (isHDDC battipaglia)
		(location polla) (isHDDC polla)
		(location palinuro) (isHDDC palinuro)
		(location metaponto) (isHDDC metaponto)
		(location irsina) (isHDDC irsina)
		(location stigliano) (isHDDC stigliano)
		(location tursi) (isHDDC tursi)
		(location ferrandina) (isHDDC ferrandina)
		(location venosa) (isHDDC venosa)
		(location lagonegro) (isHDDC lagonegro)
		(location senise) (isHDDC senise)
		(location francavilla) (isHDDC francavilla)
		(location guardiagrele) (isHDDC guardiagrele)
		(location lanciano) (isHDDC lanciano)
		(location vasto) (isHDDC vasto)
		(location avezzano) (isHDDC avezzano)
		(location pescina) (isHDDC pescina)
		(location sulmona) (isHDDC sulmona)
		(location pizzoli) (isHDDC pizzoli)
		(location montesilvano) (isHDDC montesilvano)
		(location scafa) (isHDDC scafa)
		(location popoli) (isHDDC popoli)
		(location roseto) (isHDDC roseto)
		(location giulianova) (isHDDC giulianova)
		(location ceppo) (isHDDC ceppo)
		(location crognaletto) (isHDDC crognaletto)
		(location nereto) (isHDDC nereto)
		(location boiano) (isHDDC boiano)
		(location sepino) (isHDDC sepino)
		(location riccia) (isHDDC riccia)
		(location colletorto) (isHDDC colletorto)
		(location fossalto) (isHDDC fossalto)
		(location capracotta) (isHDDC capracotta)
		(location agnone) (isHDDC agnone)
		(location venafro) (isHDDC venafro)
		(location palata) (isHDDC palata)
		(location larino) (isHDDC larino)
		(location petaccio) (isHDDC petaccio)
		(location portocannone) (isHDDC portocannone)
		(location castelmauro) (isHDDC castelmauro)
		(location molfetta) (isHDDC molfetta)
		(location altamura) (isHDDC altamura)
		(location monopoli) (isHDDC monopoli)
		(location andria) (isHDDC andria)
		(location trani) (isHDDC trani)
		(location bisceglie) (isHDDC bisceglie)
		(location trinitapoli) (isHDDC trinitapoli)
		(location fasano) (isHDDC fasano)
		(location ostuni) (isHDDC ostuni)
		(location mesegne) (isHDDC mesegne)
		(location manfredonia) (isHDDC manfredonia)
		(location cerignola) (isHDDC cerignola)
		(location lucera) (isHDDC lucera)
		(location otranto) (isHDDC otranto)
		(location gallipoli) (isHDDC gallipoli)
		(location nardo) (isHDDC nardo)
		(location maglie) (isHDDC maglie)
		(location castellaneta) (isHDDC castellaneta)
		(location massafra) (isHDDC massafra)
		(location martinafranca) (isHDDC martinafranca)
		(location grottaglie) (isHDDC grottaglie)
		(location manduria) (isHDDC manduria)
		(location canicatti) (isHDDC canicatti)
		(location licata) (isHDDC licata)
		(location sciacca) (isHDDC sciacca)
		(location mussomeli) (isHDDC mussomeli)
		(location gela) (isHDDC gela)
		(location niscemi) (isHDDC niscemi)
		(location acireale) (isHDDC acireale)
		(location paterno) (isHDDC paterno)
		(location bronte) (isHDDC bronte)
		(location caltagirone) (isHDDC caltagirone)
		(location giarre) (isHDDC giarre)
		(location nicosia) (isHDDC nicosia)
		(location barrafranca) (isHDDC barrafranca)
		(location troina) (isHDDC troina)
		(location milazzo) (isHDDC milazzo)
		(location patti) (isHDDC patti)
		(location lipari) (isHDDC lipari)
		(location corleone) (isHDDC corleone)
		(location bagheria) (isHDDC bagheria)
		(location gangi) (isHDDC gangi)
		(location cefalu) (isHDDC cefalu)
		(location modica) (isHDDC modica)
		(location vittoria) (isHDDC vittoria)
		(location pozzallo) (isHDDC pozzallo)
		(location noto) (isHDDC noto)
		(location avola) (isHDDC avola)
		(location lentini) (isHDDC lentini)
		(location augusta) (isHDDC augusta)
		(location marsala) (isHDDC marsala)
		(location alcamo) (isHDDC alcamo)
		(location sanvitolocapo) (isHDDC sanvitolocapo)
		(location mazaradelvallo) (isHDDC mazaradelvallo)
		(location chatillon) (isHDDC chatillon)
		(location verres) (isHDDC verres)
		(location courmayeur) (isHDDC courmayeur)
		(location tortona) (isHDDC tortona)
		(location noviligure) (isHDDC noviligure)
		(location acquiterme) (isHDDC acquiterme)
		(location casalemonferrato) (isHDDC casalemonferrato)
		(location ovada) (isHDDC ovada)
		(location moncalvo) (isHDDC moncalvo)
		(location cocconato) (isHDDC cocconato)
		(location sandamianodasti) (isHDDC sandamianodasti)
		(location canelli) (isHDDC canelli)
		(location cavaglia) (isHDDC cavaglia)
		(location cossato) (isHDDC cossato)
		(location oropa) (isHDDC oropa)
		(location piedicavallo) (isHDDC piedicavallo)
		(location mondovi) (isHDDC mondovi)
		(location bra) (isHDDC bra)
		(location alba) (isHDDC alba)
		(location gattinara) (isHDDC gattinara)
		(location borgomanero) (isHDDC borgomanero)
		(location arona) (isHDDC arona)
		(location trecate) (isHDDC trecate)
		(location ivrea) (isHDDC ivrea)
		(location pinerolo) (isHDDC pinerolo)
		(location susa) (isHDDC susa)
		(location oulx) (isHDDC oulx)
		(location domodossola) (isHDDC domodossola)
		(location verbania) (isHDDC verbania)
		(location valdo) (isHDDC valdo)
		(location saluggia) (isHDDC saluggia)
		(location stroppiana) (isHDDC stroppiana)
		(location carisio) (isHDDC carisio)
		(location cortona) (isHDDC cortona)
		(location subbiano) (isHDDC subbiano)
		(location bibbiena) (isHDDC bibbiena)
		(location empoli) (isHDDC empoli)
		(location firenzuola) (isHDDC firenzuola)
		(location certaldo) (isHDDC certaldo)
		(location barberino) (isHDDC barberino)
		(location campibisenzio) (isHDDC campibisenzio)
		(location orbetello) (isHDDC orbetello)
		(location follonica) (isHDDC follonica)
		(location roccastrada) (isHDDC roccastrada)
		(location saturnia) (isHDDC saturnia)
		(location pitigliano) (isHDDC pitigliano)
		(location piombino) (isHDDC piombino)
		(location cecina) (isHDDC cecina)
		(location rosignano) (isHDDC rosignano)
		(location viareggio) (isHDDC viareggio)
		(location pietrasanta) (isHDDC pietrasanta)
		(location barga) (isHDDC barga)
		(location pontedera) (isHDDC pontedera)
		(location volterra) (isHDDC volterra)
		(location pomarance) (isHDDC pomarance)
		(location montecatini) (isHDDC montecatini)
		(location quarrata) (isHDDC quarrata)
		(location cutigliano) (isHDDC cutigliano)
		(location abetone) (isHDDC abetone)
		(location cantagallo) (isHDDC cantagallo)
		(location vaiano) (isHDDC vaiano)
		(location vernio) (isHDDC vernio)
		(location pienza) (isHDDC pienza)
		(location montalcino) (isHDDC montalcino)
		(location montepulciano) (isHDDC montepulciano)
		(location poggibonsi) (isHDDC poggibonsi)
		(location senigallia) (isHDDC senigallia)
		(location jesi) (isHDDC jesi)
		(location fabriano) (isHDDC fabriano)
		(location numana) (isHDDC numana)
		(location piceno) (isHDDC piceno)
		(location sanbenedetto) (isHDDC sanbenedetto)
		(location grottammare) (isHDDC grottammare)
		(location acquasantaterme) (isHDDC acquasantaterme)
		(location portosangiorgio) (isHDDC portosangiorgio)
		(location montegranaro) (isHDDC montegranaro)
		(location servigliano) (isHDDC servigliano)
		(location montefalcone) (isHDDC montefalcone)
		(location grottazzolina) (isHDDC grottazzolina)
		(location civitanovamarche) (isHDDC civitanovamarche)
		(location camerino) (isHDDC camerino)
		(location tolentino) (isHDDC tolentino)
		(location fano) (isHDDC fano)
		(location marotta) (isHDDC marotta)
		(location calcinelli) (isHDDC calcinelli)
		(location vallefoglia) (isHDDC vallefoglia)
		(location pergola) (isHDDC pergola)
		(location acqualagna) (isHDDC acqualagna)
		(location apecchio) (isHDDC apecchio)
		(location rapallo) (isHDDC rapallo)
		(location chiavari) (isHDDC chiavari)
		(location sestrilevante) (isHDDC sestrilevante)
		(location taggia) (isHDDC taggia)
		(location borgomaro) (isHDDC borgomaro)
		(location pontedassio) (isHDDC pontedassio)
		(location lerici) (isHDDC lerici)
		(location levanto) (isHDDC levanto)
		(location riomaggiore) (isHDDC riomaggiore)
		(location manarola) (isHDDC manarola)
		(location brugnato) (isHDDC brugnato)
		(location albenga) (isHDDC albenga)
		(location finaleligure) (isHDDC finaleligure)
		(location varazze) (isHDDC varazze)
		(location carrara) (isHDDC carrara)
		(location pontremoli) (isHDDC pontremoli)
		(location fivizzano) (isHDDC fivizzano)
		(location bordighera) (isHDDC bordighera)
		(location ventimiglia) (isHDDC ventimiglia)
		(location pigna) (isHDDC pigna)
		(location chioggia) (isHDDC chioggia)
		(location mestre) (isHDDC mestre)
		(location sandona) (isHDDC sandona)
		(location portogruaro) (isHDDC portogruaro)
		(location conegliano) (isHDDC conegliano)
		(location montebelluna) (isHDDC montebelluna)
		(location vittorioveneto) (isHDDC vittorioveneto)
		(location oderzo) (isHDDC oderzo)
		(location castelfranco) (isHDDC castelfranco)
		(location adria) (isHDDC adria)
		(location rosolina) (isHDDC rosolina)
		(location trecenta) (isHDDC trecenta)
		(location schio) (isHDDC schio)
		(location thiene) (isHDDC thiene)
		(location bassano) (isHDDC bassano)
		(location asiago) (isHDDC asiago)
		(location nogara) (isHDDC nogara)
		(location legnago) (isHDDC legnago)
		(location malcesine) (isHDDC malcesine)
		(location peschieradelgarda) (isHDDC peschieradelgarda)
		(location este) (isHDDC este)
		(location monselice) (isHDDC monselice)
		(location camposampiero) (isHDDC camposampiero)
		(location cittadella) (isHDDC cittadella)
		(location muggia) (isHDDC muggia)
		(location opicina) (isHDDC opicina)
		(location duino) (isHDDC duino)
		(location monfalcone) (isHDDC monfalcone)
		(location cormons) (isHDDC cormons)
		(location villesse) (isHDDC villesse)
		(location palmanova) (isHDDC palmanova)
		(location ovaro) (isHDDC ovaro)
		(location gemona) (isHDDC gemona)
		(location codroipo) (isHDDC codroipo)
		(location aviano) (isHDDC aviano)
		(location maniago) (isHDDC maniago)
		(location spilimbergo) (isHDDC spilimbergo)
		(location feltre) (isHDDC feltre)
		(location agordo) (isHDDC agordo)
		(location cortina) (isHDDC cortina)
		(location auronzo) (isHDDC auronzo)
		(location rovereto) (isHDDC rovereto)
		(location borgovalsugana) (isHDDC borgovalsugana)
		(location cles) (isHDDC cles)
		(location tione) (isHDDC tione)
		(location merano) (isHDDC merano)
		(location brunico) (isHDDC brunico)
		(location bressanone) (isHDDC bressanone)
		(location vipiteno) (isHDDC vipiteno)
		(location sesto) (isHDDC sesto)
		(location treviglio) (isHDDC treviglio)
		(location clusone) (isHDDC clusone)
		(location nembro) (isHDDC nembro)
		(location desenzano) (isHDDC desenzano)
		(location iseo) (isHDDC iseo)
		(location salo) (isHDDC salo)
		(location edolo) (isHDDC edolo)
		(location esine) (isHDDC esine)
		(location cantù) (isHDDC cantù)
		(location erba) (isHDDC erba)
		(location cernobbio) (isHDDC cernobbio)
		(location crema) (isHDDC crema)
		(location casalmaggiore) (isHDDC casalmaggiore)
		(location soresina) (isHDDC soresina)
		(location merate) (isHDDC merate)
		(location barzio) (isHDDC barzio)
		(location calolziocorte) (isHDDC calolziocorte)
		(location codogno) (isHDDC codogno)
		(location casalpusterlengo) (isHDDC casalpusterlengo)
		(location somaglia) (isHDDC somaglia)
		(location poggiorusco) (isHDDC poggiorusco)
		(location suzzara) (isHDDC suzzara)
		(location asola) (isHDDC asola)
		(location rodigo) (isHDDC rodigo)
		(location abbiategrasso) (isHDDC abbiategrasso)
		(location magenta) (isHDDC magenta)
		(location segrate) (isHDDC segrate)
		(location rho) (isHDDC rho)
		(location sestosangiovanni) (isHDDC sestosangiovanni)
		(location seregno) (isHDDC seregno)
		(location lissone) (isHDDC lissone)
		(location busnago) (isHDDC busnago)
		(location vimercate) (isHDDC vimercate)
		(location vigevano) (isHDDC vigevano)
		(location voghera) (isHDDC voghera)
		(location varzi) (isHDDC varzi)
		(location mortara) (isHDDC mortara)
		(location bormio) (isHDDC bormio)
		(location livigno) (isHDDC livigno)
		(location morbegno) (isHDDC morbegno)
		(location campodolcino) (isHDDC campodolcino)
		(location bustoarsizio) (isHDDC bustoarsizio)
		(location gallarate) (isHDDC gallarate)
		(location luino) (isHDDC luino)
		(location imola) (isHDDC imola)
		(location vergato) (isHDDC vergato)
		(location castiglionedeipepoli) (isHDDC castiglionedeipepoli)
		(location copparo) (isHDDC copparo)
		(location codigoro) (isHDDC codigoro)
		(location comacchio) (isHDDC comacchio)
		(location argenta) (isHDDC argenta)
		(location bondeno) (isHDDC bondeno)
		(location cesena) (isHDDC cesena)
		(location predappio) (isHDDC predappio)
		(location forlimpopoli) (isHDDC forlimpopoli)
		(location cesenatico) (isHDDC cesenatico)
		(location carpi) (isHDDC carpi)
		(location pavullo) (isHDDC pavullo)
		(location sassuolo) (isHDDC sassuolo)
		(location fidenza) (isHDDC fidenza)
		(location langhirano) (isHDDC langhirano)
		(location volpara) (isHDDC volpara)
		(location bobbio) (isHDDC bobbio)
		(location pontenure) (isHDDC pontenure)
		(location fiorenzuola) (isHDDC fiorenzuola)
		(location lugo) (isHDDC lugo)
		(location faenza) (isHDDC faenza)
		(location brisighella) (isHDDC brisighella)
		(location cervia) (isHDDC cervia)
		(location correggio) (isHDDC correggio)
		(location bibbiano) (isHDDC bibbiano)
		(location busana) (isHDDC busana)
		(location riccione) (isHDDC riccione)
		(location cattolica) (isHDDC cattolica)
		(location sanmarino) (isHDDC sanmarino)
		(location ismolas) (isHDDC ismolas)
		(location siliqua) (isHDDC siliqua)
		(location sestu) (isHDDC sestu)
		(location macomer) (isHDDC macomer)
		(location fonni) (isHDDC fonni)
		(location bitti) (isHDDC bitti)
		(location cardedu) (isHDDC cardedu)
		(location posada) (isHDDC posada)
		(location cabras) (isHDDC cabras)
		(location terralba) (isHDDC terralba)
		(location laconi) (isHDDC laconi)
		(location bosa) (isHDDC bosa)
		(location alghero) (isHDDC alghero)
		(location stintino) (isHDDC stintino)
		(location castelsardo) (isHDDC castelsardo)
		(location portocervo) (isHDDC portocervo)
		(location berchidda) (isHDDC berchidda)
		(location arzachena) (isHDDC arzachena)
		(location zinnigas) (isHDDC zinnigas)
		(location portoscuso) (isHDDC portoscuso)
		(location buggerru) (isHDDC buggerru)
		(location gonnosfanadiga) (isHDDC gonnosfanadiga)

		; LINKS
		(link roma1 ROMA)
			(link frosinone roma1)
				(link cassino frosinone)
				(link ceccano frosinone)
				(link alatri frosinone)
				(link anagni frosinone)
			(link latina roma1)
				(link aprilia latina)
				(link terracina latina)
				(link fondi latina)
				(link sabaudia latina)
			(link rieti roma1)
				(link amatrice rieti)
				(link leonessa rieti)
				(link borbona rieti)
				(link spedino rieti)
			(link roma2 roma1)
				(link monterotondo roma2)
				(link frascati roma2)
				(link velletri roma2)
				(link pomezia roma2)
				(link anzio roma2)
			(link viterbo roma1)
				(link acquapendente viterbo)
				(link tarquinia viterbo)
				(link orte viterbo)
				(link bagnoregio viterbo)
			(link perugia roma1)
				(link spoleto perugia)
				(link gubbio perugia)
				(link foligno perugia)
			(link terni roma1)
				(link amelia terni)
				(link narni terni)
				(link montecastrilli terni)
		(link reggiocalabria1 ROMA)
			(link catanzaro reggiocalabria1)
				(link lameziaterme catanzaro)
				(link botricello catanzaro)
				(link girifalco catanzaro)
				(link sersale catanzaro)
			(link cosenza reggiocalabria1)
				(link dipignano cosenza)
				(link amantea cosenza)
				(link lorica cosenza)
			(link crotone reggiocalabria1)
				(link verzino crotone)
				(link crucoli crotone)
				(link salica crotone)
			(link reggiocalabria2 reggiocalabria1)
				(link gioiatauro reggiocalabria2)
				(link polistena reggiocalabria2)
				(link bovalino reggiocalabria2)
			(link vibovalentia reggiocalabria1)
				(link tropea vibovalentia)
				(link mileto vibovalentia)
				(link nicotera vibovalentia)
				(link pizzo vibovalentia)
			(link corigliano reggiocalabria1)
				(link tarsia corigliano)
				(link rossano corigliano)
				(link sibari corigliano)
				(link saracena corigliano)
		(link napoli1 ROMA)
			(link avellino napoli1)
				(link andretta avellino)
				(link taurasi avellino)
				(link solofra avellino)
			(link benevento napoli1)
				(link telese benevento)
				(link morcone benevento)
				(link circello benevento)
				(link pietralcina benevento)
			(link caserta napoli1)
				(link aversa caserta)
				(link mondragone caserta)
				(link teano caserta)
			(link napoli2 napoli1)
				(link pozzuoli napoli2)
				(link pompei napoli2)
				(link afragola napoli2)
				(link sorrento napoli2)
			(link salerno napoli1)
				(link battipaglia salerno)
				(link polla salerno)
				(link palinuro salerno)
			(link matera napoli1)
				(link metaponto matera)
				(link irsina matera)
				(link stigliano matera)
				(link tursi matera)
				(link ferrandina matera)
			(link potenza napoli1)
				(link venosa potenza)
				(link lagonegro potenza)
				(link senise potenza)
		(link aquila1 ROMA)
			(link chieti aquila1)
				(link francavilla chieti)
				(link guardiagrele chieti)
				(link lanciano chieti)
				(link vasto chieti)
			(link aquila2 aquila1)
				(link avezzano aquila2)
				(link pescina aquila2)
				(link sulmona aquila2)
				(link pizzoli aquila2)
			(link pescara aquila1)
				(link montesilvano pescara)
				(link scafa pescara)
				(link popoli pescara)
			(link teramo aquila1)
				(link roseto teramo)
				(link giulianova teramo)
				(link ceppo teramo)
				(link crognaletto teramo)
				(link nereto teramo)
			(link campobasso aquila1)
				(link boiano campobasso)
				(link sepino campobasso)
				(link riccia campobasso)
				(link colletorto campobasso)
				(link fossalto campobasso)
			(link isernia aquila1)
				(link capracotta isernia)
				(link agnone isernia)
				(link venafro isernia)
			(link termoli aquila1)
				(link palata termoli)
				(link larino termoli)
				(link petaccio termoli)
				(link portocannone termoli)
				(link castelmauro termoli)
		(link bari1 ROMA)
			(link bari2 bari1)
				(link molfetta bari2)
				(link altamura bari2)
				(link monopoli bari2)
			(link barletta bari1)
				(link andria barletta)
				(link trani barletta)
				(link bisceglie barletta)
				(link trinitapoli barletta)
			(link brindisi bari1)
				(link fasano brindisi)
				(link ostuni brindisi)
				(link mesegne brindisi)
			(link foggia bari1)
				(link manfredonia foggia)
				(link cerignola foggia)
				(link lucera foggia)
			(link lecce bari1)
				(link otranto lecce)
				(link gallipoli lecce)
				(link nardo lecce)
				(link maglie lecce)
			(link taranto bari1)
				(link castellaneta taranto)
				(link massafra taranto)
				(link martinafranca taranto)
				(link grottaglie taranto)
				(link manduria taranto)
		(link palermo1 ROMA)
			(link agrigento palermo1)
				(link canicatti agrigento)
				(link licata agrigento)
				(link sciacca agrigento)
			(link caltanissetta palermo1)
				(link mussomeli caltanissetta)
				(link gela caltanissetta)
				(link niscemi caltanissetta)
			(link catania palermo1)
				(link acireale catania)
				(link paterno catania)
				(link bronte catania)
				(link caltagirone catania)
				(link giarre catania)
			(link enna palermo1)
				(link nicosia enna)
				(link barrafranca enna)
				(link troina enna)
			(link messina palermo1)
				(link milazzo messina)
				(link patti messina)
				(link lipari messina)
			(link palermo2 palermo1)
				(link corleone palermo2)
				(link bagheria palermo2)
				(link gangi palermo2)
				(link cefalu palermo2)
			(link ragusa palermo1)
				(link modica ragusa)
				(link vittoria ragusa)
				(link pozzallo ragusa)
			(link siracusa palermo1)
				(link noto siracusa)
				(link avola siracusa)
				(link lentini siracusa)
				(link augusta siracusa)
			(link trapani palermo1)
				(link marsala trapani)
				(link alcamo trapani)
				(link sanvitolocapo trapani)
				(link mazaradelvallo trapani)
		(link torino1 ROMA)
			(link aosta torino1)
				(link chatillon aosta)
				(link verres aosta)
				(link courmayeur aosta)
			(link alessandria torino1)
				(link tortona alessandria)
				(link noviligure alessandria)
				(link acquiterme alessandria)
				(link casalemonferrato alessandria)
				(link ovada alessandria)
			(link asti torino1)
				(link moncalvo asti)
				(link cocconato asti)
				(link sandamianodasti asti)
				(link canelli asti)
			(link biella torino1)
				(link cavaglia biella)
				(link cossato biella)
				(link oropa biella)
				(link piedicavallo biella)
			(link cuneo torino1)
				(link mondovi cuneo)
				(link bra cuneo)
				(link alba cuneo)
			(link novara torino1)
				(link gattinara novara)
				(link borgomanero novara)
				(link arona novara)
				(link trecate novara)
			(link torino2 torino1)
				(link ivrea torino2)
				(link pinerolo torino2)
				(link susa torino2)
				(link oulx torino2)
			(link verbano torino1)
				(link domodossola verbano)
				(link verbania verbano)
				(link valdo verbano)
			(link vercelli torino1)
				(link saluggia vercelli)
				(link stroppiana vercelli)
				(link carisio vercelli)
		(link firenze1 ROMA)
			(link arezzo firenze1)
				(link cortona arezzo)
				(link subbiano arezzo)
				(link bibbiena arezzo)
			(link firenze2 firenze1)
				(link empoli firenze2)
				(link firenzuola firenze2)
				(link certaldo firenze2)
				(link barberino firenze2)
				(link campibisenzio firenze2)
			(link grosseto firenze1)
				(link orbetello grosseto)
				(link follonica grosseto)
				(link roccastrada grosseto)
				(link saturnia grosseto)
				(link pitigliano grosseto)
			(link livorno firenze1)
				(link piombino livorno)
				(link cecina livorno)
				(link rosignano livorno)
			(link lucca firenze1)
				(link viareggio lucca)
				(link pietrasanta lucca)
				(link barga lucca)
			(link pisa firenze1)
				(link pontedera pisa)
				(link volterra pisa)
				(link pomarance pisa)
			(link pistoia firenze1)
				(link montecatini pistoia)
				(link quarrata pistoia)
				(link cutigliano pistoia)
				(link abetone pistoia)
			(link prato firenze1)
				(link cantagallo prato)
				(link vaiano prato)
				(link vernio prato)
			(link siena firenze1)
				(link pienza siena)
				(link montalcino siena)
				(link montepulciano siena)
				(link poggibonsi siena)
		(link ancona1 ROMA)
			(link ancona2 ancona1)
				(link senigallia ancona2)
				(link jesi ancona2)
				(link fabriano ancona2)
				(link numana ancona2)
			(link ascoli ancona1)
				(link piceno ascoli)
				(link sanbenedetto ascoli)
				(link grottammare ascoli)
				(link acquasantaterme ascoli)
			(link fermo ancona1)
				(link portosangiorgio fermo)
				(link montegranaro fermo)
				(link servigliano fermo)
				(link montefalcone fermo)
				(link grottazzolina fermo)
			(link macerata ancona1)
				(link civitanovamarche macerata)
				(link camerino macerata)
				(link tolentino macerata)
			(link pesaro ancona1)
				(link fano pesaro)
				(link marotta pesaro)
				(link calcinelli pesaro)
				(link vallefoglia pesaro)
			(link urbino ancona1)
				(link pergola urbino)
				(link acqualagna urbino)
				(link apecchio urbino)
		(link genova1 ROMA)
			(link genova2 genova1)
				(link rapallo genova2)
				(link chiavari genova2)
				(link sestrilevante genova2)
			(link imperia genova1)
				(link taggia imperia)
				(link borgomaro imperia)
				(link pontedassio imperia)
			(link spezia genova1)
				(link lerici spezia)
				(link levanto spezia)
				(link riomaggiore spezia)
				(link manarola spezia)
				(link brugnato spezia)
			(link savona genova1)
				(link albenga savona)
				(link finaleligure savona)
				(link varazze savona)
			(link massa genova1)
				(link carrara massa)
				(link pontremoli massa)
				(link fivizzano massa)
			(link sanremo genova1)
				(link bordighera sanremo)
				(link ventimiglia sanremo)
				(link pigna sanremo)
		(link venezia1 ROMA)
			(link venezia2 venezia1)
				(link chioggia venezia2)
				(link mestre venezia2)
				(link sandona venezia2)
				(link portogruaro venezia2)
			(link treviso venezia1)
				(link conegliano treviso)
				(link montebelluna treviso)
				(link vittorioveneto treviso)
				(link oderzo treviso)
				(link castelfranco treviso)
			(link rovigo venezia1)
				(link adria rovigo)
				(link rosolina rovigo)
				(link trecenta rovigo)
			(link vicenza venezia1)
				(link schio vicenza)
				(link thiene vicenza)
				(link bassano vicenza)
				(link asiago vicenza)
			(link verona venezia1)
				(link nogara verona)
				(link legnago verona)
				(link malcesine verona)
				(link peschieradelgarda verona)
			(link padova venezia1)
				(link este padova)
				(link monselice padova)
				(link camposampiero padova)
				(link cittadella padova)
		(link trieste1 ROMA)
			(link trieste2 trieste1)
				(link muggia trieste2)
				(link opicina trieste2)
				(link duino trieste2)
			(link gorizia trieste1)
				(link monfalcone gorizia)
				(link cormons gorizia)
				(link villesse gorizia)
			(link udine trieste1)
				(link palmanova udine)
				(link ovaro udine)
				(link gemona udine)
				(link codroipo udine)
			(link pordenone trieste1)
				(link aviano pordenone)
				(link maniago pordenone)
				(link spilimbergo pordenone)
			(link belluno trieste1)
				(link feltre belluno)
				(link agordo belluno)
				(link cortina belluno)
				(link auronzo belluno)
			(link trento trieste1)
				(link rovereto trento)
				(link borgovalsugana trento)
				(link cles trento)
				(link tione trento)
			(link bolzano trieste1)
				(link merano bolzano)
				(link brunico bolzano)
				(link bressanone bolzano)
				(link vipiteno bolzano)
				(link sesto bolzano)
		(link milano1 ROMA)
			(link bergamo milano1)
				(link treviglio bergamo)
				(link clusone bergamo)
				(link nembro bergamo)
			(link brescia milano1)
				(link desenzano brescia)
				(link iseo brescia)
				(link salo brescia)
				(link edolo brescia)
				(link esine brescia)
			(link como milano1)
				(link cantù como)
				(link erba como)
				(link cernobbio como)
			(link cremona milano1)
				(link crema cremona)
				(link casalmaggiore cremona)
				(link soresina cremona)
			(link lecco milano1)
				(link merate lecco)
				(link barzio lecco)
				(link calolziocorte lecco)
			(link lodi milano1)
				(link codogno lodi)
				(link casalpusterlengo lodi)
				(link somaglia lodi)
			(link mantova milano1)
				(link poggiorusco mantova)
				(link suzzara mantova)
				(link asola mantova)
				(link rodigo mantova)
			(link milano2 milano1)
				(link abbiategrasso milano2)
				(link magenta milano2)
				(link segrate milano2)
				(link rho milano2)
				(link sestosangiovanni milano2)
			(link monza milano1)
				(link seregno monza)
				(link lissone monza)
				(link busnago monza)
				(link vimercate monza)
			(link pavia milano1)
				(link vigevano pavia)
				(link voghera pavia)
				(link varzi pavia)
				(link mortara pavia)
			(link sondrio milano1)
				(link bormio sondrio)
				(link livigno sondrio)
				(link morbegno sondrio)
				(link campodolcino sondrio)
			(link varese milano1)
				(link bustoarsizio varese)
				(link gallarate varese)
				(link luino varese)
		(link bologna1 ROMA)
			(link bologna2 bologna1)
				(link imola bologna2)
				(link vergato bologna2)
				(link castiglionedeipepoli bologna2)
			(link ferrara bologna1)
				(link copparo ferrara)
				(link codigoro ferrara)
				(link comacchio ferrara)
				(link argenta ferrara)
				(link bondeno ferrara)
			(link forli bologna1)
				(link cesena forli)
				(link predappio forli)
				(link forlimpopoli forli)
				(link cesenatico forli)
			(link modena bologna1)
				(link carpi modena)
				(link pavullo modena)
				(link sassuolo modena)
			(link parma bologna1)
				(link fidenza parma)
				(link langhirano parma)
				(link volpara parma)
			(link piacenza bologna1)
				(link bobbio piacenza)
				(link pontenure piacenza)
				(link fiorenzuola piacenza)
			(link ravenna bologna1)
				(link lugo ravenna)
				(link faenza ravenna)
				(link brisighella ravenna)
				(link cervia ravenna)
			(link reggioemilia bologna1)
				(link correggio reggioemilia)
				(link bibbiano reggioemilia)
				(link busana reggioemilia)
			(link rimini bologna1)
				(link riccione rimini)
				(link cattolica rimini)
				(link sanmarino rimini)
		(link cagliari1 ROMA)
			(link cagliari2 cagliari1)
				(link ismolas cagliari2)
				(link siliqua cagliari2)
				(link sestu cagliari2)
			(link nuoro cagliari1)
				(link macomer nuoro)
				(link fonni nuoro)
				(link bitti nuoro)
				(link cardedu nuoro)
				(link posada nuoro)
			(link oristano cagliari1)
				(link cabras oristano)
				(link terralba oristano)
				(link laconi oristano)
				(link bosa oristano)
			(link sassari cagliari1)
				(link alghero sassari)
				(link stintino sassari)
				(link castelsardo sassari)
			(link olbia cagliari1)
				(link portocervo olbia)
				(link berchidda olbia)
				(link arzachena olbia)
			(link carbonia cagliari1)
				(link zinnigas carbonia)
				(link portoscuso carbonia)
				(link buggerru carbonia)
				(link gonnosfanadiga carbonia)

		; CONNECTIONS
		; SARDEGNA
		(connected olbia nuoro) (connected nuoro olbia)
		(connected sassari oristano) (connected oristano sassari)
		(connected nuoro oristano) (connected oristano nuoro)
		(connected oristano cagliari1) (connected cagliari1 oristano)
		(connected cagliari1 cagliari2) (connected cagliari2 cagliari1)
		(connected carbonia cagliari1) (connected cagliari1 carbonia)
		
		; SICILIA
		(connected trapani palermo1) (connected palermo1 trapani)
		(connected palermo1 palermo2) (connected palermo2 palermo1)
		(connected trapani agrigento) (connected agrigento trapani)
		(connected agrigento caltanissetta) (connected caltanissetta agrigento)
		(connected caltanissetta enna) (connected enna caltanissetta)
		(connected palermo1 enna) (connected enna palermo2)
		(connected agrigento ragusa) (connected ragusa agrigento)
		(connected ragusa siracusa) (connected siracusa ragusa)
		(connected catania siracusa) (connected siracusa catania)
		(connected enna catania) (connected catania enna)
		(connected catania messina) (connected messina catania)
		(connected palermo1 messina) (connected messina palermo1)
		
		; CALABRIA
		(connected reggiocalabria1 reggiocalabria2) (connected reggiocalabria2 reggiocalabria1)
		(connected reggiocalabria1 vibovalentia) (connected vibovalentia reggiocalabria1)
		(connected vibovalentia catanzaro) (connected catanzaro vibovalentia)
		(connected vibovalentia cosenza) (connected cosenza vibovalentia)
		(connected catanzaro crotone) (connected crotone catanzaro)
		(connected crotone corigliano) (connected corigliano crotone)
		(connected corigliano cosenza) (connected cosenza corigliano)
		(connected cosenza salerno) (connected salerno cosenza)
		
		; CAMPANIA + BASILICATA
		(connected napoli1 napoli2) (connected napoli2 napoli1)
		(connected napoli1 salerno) (connected salerno napoli1)
		(connected napoli1 caserta) (connected caserta napoli1)
		(connected napoli1 avellino) (connected avellino napoli1)
		(connected avellino caserta) (connected caserta avellino)
		(connected avellino benevento) (connected benevento avellino)
		(connected avellino salerno) (connected salerno avellino)
		(connected salerno potenza) (connected potenza salerno)
		(connected potenza matera) (connected matera potenza)
		(connected caserta frosinone) (connected frosinone caserta)
		(connected benevento campobasso) (connected campobasso benevento)
		(connected benevento foggia) (connected foggia benevento)
		(connected matera bari1) (connected bari1 matera)
		(connected matera taranto) (connected taranto matera)
		
		; PUGLIA
		(connected taranto lecce) (connected lecce taranto)
		(connected lecce brindisi) (connected brindisi lecce)
		(connected brindisi bari1) (connected bari1 brindisi)
		(connected taranto bari1) (connected bari1 taranto)
		(connected bari1 bari2) (connected bari2 bari1)
		(connected bari1 barletta) (connected barletta bari1)
		(connected barletta foggia) (connected foggia barletta)
		(connected foggia termoli) (connected termoli foggia)
		
		; ABRUZZO + MOLISE
		(connected chieti pescara) (connected pescara chieti)
		(connected pescara termoli) (connected termoli pescara)
		(connected campobasso termoli) (connected termoli campobasso)
		(connected campobasso isernia) (connected isernia campobasso)
		(connected pescara teramo) (connected teramo pescara)
		(connected teramo aquila1) (connected aquila1 teramo)
		(connected aquila1 aquila2) (connected aquila2 aquila1)
		(connected isernia frosinone) (connected frosinone isernia)
		(connected teramo ascoli) (connected ascoli teramo)
		(connected aquila1 roma1) (connected roma1 aquila1)
		(connected aquila1 rieti) (connected rieti aquila1)
		
		; LAZIO + UMBRIA
		(connected ROMA roma1) (connected roma1 ROMA)
		(connected roma2 roma1) (connected roma1 roma2)
		(connected roma1 latina) (connected latina roma1)
		(connected roma1 frosinone) (connected frosinone roma1)
		(connected roma1 rieti) (connected rieti roma1)
		(connected roma1 viterbo) (connected viterbo roma1)
		(connected latina frosinone) (connected frosinone latina)
		(connected rieti terni) (connected terni rieti)
		(connected terni perugia) (connected perugia terni)
		(connected perugia ancona1) (connected ancona1 perugia)
		(connected perugia siena) (connected siena perugia)
		(connected roma1 grosseto) (connected grosseto roma1)
		
		; MARCHE
		(connected ascoli fermo) (connected fermo ascoli)
		(connected fermo ancona1) (connected ancona1 fermo)
		(connected ancona1 macerata) (connected macerata ancona1)
		(connected ancona1 ancona2) (connected ancona2 ancona1)
		(connected pesaro ancona1) (connected ancona1 pesaro)
		(connected pesaro urbino) (connected urbino pesaro)
		(connected urbino arezzo) (connected arezzo urbino)
		(connected pesaro rimini) (connected rimini pesaro)
		
		; TOSCANA
		(connected arezzo firenze1) (connected firenze1 arezzo)
		(connected grosseto siena) (connected siena grosseto)
		(connected siena firenze1) (connected firenze1 siena)
		(connected firenze1 firenze2) (connected firenze2 firenze1)
		(connected firenze1 prato) (connected prato firenze1)
		(connected prato pistoia) (connected pistoia prato)
		(connected pistoia lucca) (connected lucca pistoia)
		(connected lucca pisa) (connected pisa lucca)
		(connected pisa livorno) (connected livorno pisa)
		(connected firenze1 livorno) (connected livorno firenze1)
		(connected firenze1 bologna1) (connected bologna1 firenze1)
		(connected firenze1 forli) (connected forli firenze1)
		(connected lucca massa) (connected massa lucca)
		(connected pisa massa) (connected massa pisa)
		
		; EMILIA ROMAGNA
		(connected rimini forli) (connected forli rimini)
		(connected rimini ravenna) (connected ravenna rimini)
		(connected ravenna forli) (connected forli ravenna)
		(connected ravenna ferrara) (connected ferrara ravenna)
		(connected forli bologna1) (connected bologna1 forli)
		(connected bologna1 bologna2) (connected bologna2 bologna1)
		(connected bologna1 ferrara) (connected ferrara bologna1)
		(connected bologna1 modena) (connected modena bologna1)
		(connected modena reggioemilia) (connected reggioemilia modena)
		(connected reggioemilia parma) (connected parma reggioemilia)
		(connected parma piacenza) (connected piacenza parma)
		(connected ferrara rovigo) (connected rovigo ferrara)
		(connected modena mantova) (connected mantova modena)
		(connected parma spezia) (connected spezia parma)
		(connected piacenza lodi) (connected lodi piacenza)
		(connected piacenza cremona) (connected cremona piacenza)
		
		; LIGURIA
		(connected massa spezia) (connected spezia massa)
		(connected spezia genova1) (connected genova1 spezia)
		(connected genova1 genova2) (connected genova2 genova1)
		(connected genova1 savona) (connected savona genova1)
		(connected savona imperia) (connected imperia savona)
		(connected imperia sanremo) (connected sanremo imperia)
		(connected sanremo cuneo) (connected cuneo sanremo)
		(connected savona cuneo) (connected cuneo savona)
		(connected genova1 alessandria) (connected alessandria genova1)
		
		; PIEMONTE + VALLE D'AOSTA
		(connected cuneo torino1) (connected torino1 cuneo)
		(connected cuneo asti) (connected asti cuneo)
		(connected asti alessandria) (connected alessandria asti)
		(connected asti torino1) (connected torino1 asti)
		(connected asti vercelli) (connected vercelli asti)
		(connected alessandria vercelli) (connected vercelli alessandria)
		(connected torino1 vercelli) (connected vercelli torino1)
		(connected torino1 torino2) (connected torino2 torino1)
		(connected torino1 biella) (connected biella torino1)
		(connected biella aosta) (connected aosta biella)
		(connected biella novara) (connected novara biella)
		(connected novara vercelli) (connected vercelli novara)
		(connected novara verbano) (connected verbano novara)
		(connected novara milano1) (connected milano1 novara)
		(connected vercelli pavia) (connected pavia vercelli)
		(connected alessandria piacenza) (connected piacenza alessandria)
		
		; LOMBARDIA
		(connected milano1 milano2) (connected milano2 milano1)
		(connected milano1 pavia) (connected pavia milano1)
		(connected milano1 lodi) (connected lodi milano1)
		(connected milano1 monza) (connected monza milano1)
		(connected milano1 como) (connected como milano1)
		(connected milano1 varese) (connected varese milano1)
		(connected varese como) (connected como varese)
		(connected como lecco) (connected lecco como)
		(connected lecco monza) (connected monza lecco)
		(connected monza bergamo) (connected bergamo monza)
		(connected lecco sondrio) (connected sondrio lecco)
		(connected lecco bergamo) (connected bergamo lecco)
		(connected bergamo lodi) (connected lodi bergamo)
		(connected pavia lodi) (connected lodi pavia)
		(connected lodi cremona) (connected cremona lodi)
		(connected cremona mantova) (connected mantova cremona)
		(connected cremona brescia) (connected brescia cremona)
		(connected bergamo brescia) (connected brescia bergamo)
		(connected sondrio bolzano) (connected bolzano sondrio)
		(connected brescia verona) (connected verona brescia)
		(connected mantova verona) (connected verona mantova)
		
		; VENETO
		(connected verona vicenza) (connected vicenza verona)
		(connected vicenza padova) (connected padova vicenza)
		(connected padova rovigo) (connected rovigo padova)
		(connected padova venezia1) (connected venezia1 padova)
		(connected venezia1 venezia2) (connected venezia2 venezia1)
		(connected vicenza treviso) (connected treviso vicenza)
		(connected treviso venezia1) (connected venezia1 treviso)
		(connected verona trento) (connected trento verona)
		(connected treviso belluno) (connected belluno treviso)
		(connected treviso pordenone) (connected pordenone treviso)
		(connected venezia1 udine) (connected udine venezia1)
		(connected venezia1 trieste1) (connected trieste1 venezia1)
		
		; TRENTINO + FRIULI + BELLUNO
		(connected trento bolzano) (connected bolzano trento)
		(connected bolzano belluno) (connected belluno bolzano)
		(connected belluno pordenone) (connected pordenone belluno)
		(connected pordenone udine) (connected udine pordenone)
		(connected udine trieste1) (connected trieste1 udine)
		(connected trieste1 gorizia) (connected gorizia trieste1)
		(connected trieste1 trieste2) (connected trieste2 trieste1)

		; PROVINCE > HD and HD > PROVINCE connections
		(connected cassino frosinone) (connected frosinone cassino)
		(connected ceccano frosinone) (connected frosinone ceccano)
		(connected alatri frosinone) (connected frosinone alatri)
		(connected anagni frosinone) (connected frosinone anagni)
		(connected aprilia latina) (connected latina aprilia)
		(connected terracina latina) (connected latina terracina)
		(connected fondi latina) (connected latina fondi)
		(connected sabaudia latina) (connected latina sabaudia)
		(connected amatrice rieti) (connected rieti amatrice)
		(connected leonessa rieti) (connected rieti leonessa)
		(connected borbona rieti) (connected rieti borbona)
		(connected spedino rieti) (connected rieti spedino)
		(connected monterotondo roma2) (connected roma2 monterotondo)
		(connected frascati roma2) (connected roma2 frascati)
		(connected velletri roma2) (connected roma2 velletri)
		(connected pomezia roma2) (connected roma2 pomezia)
		(connected anzio roma2) (connected roma2 anzio)
		(connected acquapendente viterbo) (connected viterbo acquapendente)
		(connected tarquinia viterbo) (connected viterbo tarquinia)
		(connected orte viterbo) (connected viterbo orte)
		(connected bagnoregio viterbo) (connected viterbo bagnoregio)
		(connected spoleto perugia) (connected perugia spoleto)
		(connected gubbio perugia) (connected perugia gubbio)
		(connected foligno perugia) (connected perugia foligno)
		(connected amelia terni) (connected terni amelia)
		(connected narni terni) (connected terni narni)
		(connected montecastrilli terni) (connected terni montecastrilli)
		(connected lameziaterme catanzaro) (connected catanzaro lameziaterme)
		(connected botricello catanzaro) (connected catanzaro botricello)
		(connected girifalco catanzaro) (connected catanzaro girifalco)
		(connected sersale catanzaro) (connected catanzaro sersale)
		(connected dipignano cosenza) (connected cosenza dipignano)
		(connected amantea cosenza) (connected cosenza amantea)
		(connected lorica cosenza) (connected cosenza lorica)
		(connected verzino crotone) (connected crotone verzino)
		(connected crucoli crotone) (connected crotone crucoli)
		(connected salica crotone) (connected crotone salica)
		(connected gioiatauro reggiocalabria2) (connected reggiocalabria2 gioiatauro)
		(connected polistena reggiocalabria2) (connected reggiocalabria2 polistena)
		(connected bovalino reggiocalabria2) (connected reggiocalabria2 bovalino)
		(connected tropea vibovalentia) (connected vibovalentia tropea)
		(connected mileto vibovalentia) (connected vibovalentia mileto)
		(connected nicotera vibovalentia) (connected vibovalentia nicotera)
		(connected pizzo vibovalentia) (connected vibovalentia pizzo)
		(connected tarsia corigliano) (connected corigliano tarsia)
		(connected rossano corigliano) (connected corigliano rossano)
		(connected sibari corigliano) (connected corigliano sibari)
		(connected saracena corigliano) (connected corigliano saracena)
		(connected andretta avellino) (connected avellino andretta)
		(connected taurasi avellino) (connected avellino taurasi)
		(connected solofra avellino) (connected avellino solofra)
		(connected telese benevento) (connected benevento telese)
		(connected morcone benevento) (connected benevento morcone)
		(connected circello benevento) (connected benevento circello)
		(connected pietralcina benevento) (connected benevento pietralcina)
		(connected aversa caserta) (connected caserta aversa)
		(connected mondragone caserta) (connected caserta mondragone)
		(connected teano caserta) (connected caserta teano)
		(connected pozzuoli napoli2) (connected napoli2 pozzuoli)
		(connected pompei napoli2) (connected napoli2 pompei)
		(connected afragola napoli2) (connected napoli2 afragola)
		(connected sorrento napoli2) (connected napoli2 sorrento)
		(connected battipaglia salerno) (connected salerno battipaglia)
		(connected polla salerno) (connected salerno polla)
		(connected palinuro salerno) (connected salerno palinuro)
		(connected metaponto matera) (connected matera metaponto)
		(connected irsina matera) (connected matera irsina)
		(connected stigliano matera) (connected matera stigliano)
		(connected tursi matera) (connected matera tursi)
		(connected ferrandina matera) (connected matera ferrandina)
		(connected venosa potenza) (connected potenza venosa)
		(connected lagonegro potenza) (connected potenza lagonegro)
		(connected senise potenza) (connected potenza senise)
		(connected francavilla chieti) (connected chieti francavilla)
		(connected guardiagrele chieti) (connected chieti guardiagrele)
		(connected lanciano chieti) (connected chieti lanciano)
		(connected vasto chieti) (connected chieti vasto)
		(connected avezzano aquila2) (connected aquila2 avezzano)
		(connected pescina aquila2) (connected aquila2 pescina)
		(connected sulmona aquila2) (connected aquila2 sulmona)
		(connected pizzoli aquila2) (connected aquila2 pizzoli)
		(connected montesilvano pescara) (connected pescara montesilvano)
		(connected scafa pescara) (connected pescara scafa)
		(connected popoli pescara) (connected pescara popoli)
		(connected roseto teramo) (connected teramo roseto)
		(connected giulianova teramo) (connected teramo giulianova)
		(connected ceppo teramo) (connected teramo ceppo)
		(connected crognaletto teramo) (connected teramo crognaletto)
		(connected nereto teramo) (connected teramo nereto)
		(connected boiano campobasso) (connected campobasso boiano)
		(connected sepino campobasso) (connected campobasso sepino)
		(connected riccia campobasso) (connected campobasso riccia)
		(connected colletorto campobasso) (connected campobasso colletorto)
		(connected fossalto campobasso) (connected campobasso fossalto)
		(connected capracotta isernia) (connected isernia capracotta)
		(connected agnone isernia) (connected isernia agnone)
		(connected venafro isernia) (connected isernia venafro)
		(connected palata termoli) (connected termoli palata)
		(connected larino termoli) (connected termoli larino)
		(connected petaccio termoli) (connected termoli petaccio)
		(connected portocannone termoli) (connected termoli portocannone)
		(connected castelmauro termoli) (connected termoli castelmauro)
		(connected molfetta bari2) (connected bari2 molfetta)
		(connected altamura bari2) (connected bari2 altamura)
		(connected monopoli bari2) (connected bari2 monopoli)
		(connected andria barletta) (connected barletta andria)
		(connected trani barletta) (connected barletta trani)
		(connected bisceglie barletta) (connected barletta bisceglie)
		(connected trinitapoli barletta) (connected barletta trinitapoli)
		(connected fasano brindisi) (connected brindisi fasano)
		(connected ostuni brindisi) (connected brindisi ostuni)
		(connected mesegne brindisi) (connected brindisi mesegne)
		(connected manfredonia foggia) (connected foggia manfredonia)
		(connected cerignola foggia) (connected foggia cerignola)
		(connected lucera foggia) (connected foggia lucera)
		(connected otranto lecce) (connected lecce otranto)
		(connected gallipoli lecce) (connected lecce gallipoli)
		(connected nardo lecce) (connected lecce nardo)
		(connected maglie lecce) (connected lecce maglie)
		(connected castellaneta taranto) (connected taranto castellaneta)
		(connected massafra taranto) (connected taranto massafra)
		(connected martinafranca taranto) (connected taranto martinafranca)
		(connected grottaglie taranto) (connected taranto grottaglie)
		(connected manduria taranto) (connected taranto manduria)
		(connected canicatti agrigento) (connected agrigento canicatti)
		(connected licata agrigento) (connected agrigento licata)
		(connected sciacca agrigento) (connected agrigento sciacca)
		(connected mussomeli caltanissetta) (connected caltanissetta mussomeli)
		(connected gela caltanissetta) (connected caltanissetta gela)
		(connected niscemi caltanissetta) (connected caltanissetta niscemi)
		(connected acireale catania) (connected catania acireale)
		(connected paterno catania) (connected catania paterno)
		(connected bronte catania) (connected catania bronte)
		(connected caltagirone catania) (connected catania caltagirone)
		(connected giarre catania) (connected catania giarre)
		(connected nicosia enna) (connected enna nicosia)
		(connected barrafranca enna) (connected enna barrafranca)
		(connected troina enna) (connected enna troina)
		(connected milazzo messina) (connected messina milazzo)
		(connected patti messina) (connected messina patti)
		(connected lipari messina) (connected messina lipari)
		(connected corleone palermo2) (connected palermo2 corleone)
		(connected bagheria palermo2) (connected palermo2 bagheria)
		(connected gangi palermo2) (connected palermo2 gangi)
		(connected cefalu palermo2) (connected palermo2 cefalu)
		(connected modica ragusa) (connected ragusa modica)
		(connected vittoria ragusa) (connected ragusa vittoria)
		(connected pozzallo ragusa) (connected ragusa pozzallo)
		(connected noto siracusa) (connected siracusa noto)
		(connected avola siracusa) (connected siracusa avola)
		(connected lentini siracusa) (connected siracusa lentini)
		(connected augusta siracusa) (connected siracusa augusta)
		(connected marsala trapani) (connected trapani marsala)
		(connected alcamo trapani) (connected trapani alcamo)
		(connected sanvitolocapo trapani) (connected trapani sanvitolocapo)
		(connected mazaradelvallo trapani) (connected trapani mazaradelvallo)
		(connected chatillon aosta) (connected aosta chatillon)
		(connected verres aosta) (connected aosta verres)
		(connected courmayeur aosta) (connected aosta courmayeur)
		(connected tortona alessandria) (connected alessandria tortona)
		(connected noviligure alessandria) (connected alessandria noviligure)
		(connected acquiterme alessandria) (connected alessandria acquiterme)
		(connected casalemonferrato alessandria) (connected alessandria casalemonferrato)
		(connected ovada alessandria) (connected alessandria ovada)
		(connected moncalvo asti) (connected asti moncalvo)
		(connected cocconato asti) (connected asti cocconato)
		(connected sandamianodasti asti) (connected asti sandamianodasti)
		(connected canelli asti) (connected asti canelli)
		(connected cavaglia biella) (connected biella cavaglia)
		(connected cossato biella) (connected biella cossato)
		(connected oropa biella) (connected biella oropa)
		(connected piedicavallo biella) (connected biella piedicavallo)
		(connected mondovi cuneo) (connected cuneo mondovi)
		(connected bra cuneo) (connected cuneo bra)
		(connected alba cuneo) (connected cuneo alba)
		(connected gattinara novara) (connected novara gattinara)
		(connected borgomanero novara) (connected novara borgomanero)
		(connected arona novara) (connected novara arona)
		(connected trecate novara) (connected novara trecate)
		(connected ivrea torino2) (connected torino2 ivrea)
		(connected pinerolo torino2) (connected torino2 pinerolo)
		(connected susa torino2) (connected torino2 susa)
		(connected oulx torino2) (connected torino2 oulx)
		(connected domodossola verbano) (connected verbano domodossola)
		(connected verbania verbano) (connected verbano verbania)
		(connected valdo verbano) (connected verbano valdo)
		(connected saluggia vercelli) (connected vercelli saluggia)
		(connected stroppiana vercelli) (connected vercelli stroppiana)
		(connected carisio vercelli) (connected vercelli carisio)
		(connected cortona arezzo) (connected arezzo cortona)
		(connected subbiano arezzo) (connected arezzo subbiano)
		(connected bibbiena arezzo) (connected arezzo bibbiena)
		(connected empoli firenze2) (connected firenze2 empoli)
		(connected firenzuola firenze2) (connected firenze2 firenzuola)
		(connected certaldo firenze2) (connected firenze2 certaldo)
		(connected barberino firenze2) (connected firenze2 barberino)
		(connected campibisenzio firenze2) (connected firenze2 campibisenzio)
		(connected orbetello grosseto) (connected grosseto orbetello)
		(connected follonica grosseto) (connected grosseto follonica)
		(connected roccastrada grosseto) (connected grosseto roccastrada)
		(connected saturnia grosseto) (connected grosseto saturnia)
		(connected pitigliano grosseto) (connected grosseto pitigliano)
		(connected piombino livorno) (connected livorno piombino)
		(connected cecina livorno) (connected livorno cecina)
		(connected rosignano livorno) (connected livorno rosignano)
		(connected viareggio lucca) (connected lucca viareggio)
		(connected pietrasanta lucca) (connected lucca pietrasanta)
		(connected barga lucca) (connected lucca barga)
		(connected pontedera pisa) (connected pisa pontedera)
		(connected volterra pisa) (connected pisa volterra)
		(connected pomarance pisa) (connected pisa pomarance)
		(connected montecatini pistoia) (connected pistoia montecatini)
		(connected quarrata pistoia) (connected pistoia quarrata)
		(connected cutigliano pistoia) (connected pistoia cutigliano)
		(connected abetone pistoia) (connected pistoia abetone)
		(connected cantagallo prato) (connected prato cantagallo)
		(connected vaiano prato) (connected prato vaiano)
		(connected vernio prato) (connected prato vernio)
		(connected pienza siena) (connected siena pienza)
		(connected montalcino siena) (connected siena montalcino)
		(connected montepulciano siena) (connected siena montepulciano)
		(connected poggibonsi siena) (connected siena poggibonsi)
		(connected senigallia ancona2) (connected ancona2 senigallia)
		(connected jesi ancona2) (connected ancona2 jesi)
		(connected fabriano ancona2) (connected ancona2 fabriano)
		(connected numana ancona2) (connected ancona2 numana)
		(connected piceno ascoli) (connected ascoli piceno)
		(connected sanbenedetto ascoli) (connected ascoli sanbenedetto)
		(connected grottammare ascoli) (connected ascoli grottammare)
		(connected acquasantaterme ascoli) (connected ascoli acquasantaterme)
		(connected portosangiorgio fermo) (connected fermo portosangiorgio)
		(connected montegranaro fermo) (connected fermo montegranaro)
		(connected servigliano fermo) (connected fermo servigliano)
		(connected montefalcone fermo) (connected fermo montefalcone)
		(connected grottazzolina fermo) (connected fermo grottazzolina)
		(connected civitanovamarche macerata) (connected macerata civitanovamarche)
		(connected camerino macerata) (connected macerata camerino)
		(connected tolentino macerata) (connected macerata tolentino)
		(connected fano pesaro) (connected pesaro fano)
		(connected marotta pesaro) (connected pesaro marotta)
		(connected calcinelli pesaro) (connected pesaro calcinelli)
		(connected vallefoglia pesaro) (connected pesaro vallefoglia)
		(connected pergola urbino) (connected urbino pergola)
		(connected acqualagna urbino) (connected urbino acqualagna)
		(connected apecchio urbino) (connected urbino apecchio)
		(connected rapallo genova2) (connected genova2 rapallo)
		(connected chiavari genova2) (connected genova2 chiavari)
		(connected sestrilevante genova2) (connected genova2 sestrilevante)
		(connected taggia imperia) (connected imperia taggia)
		(connected borgomaro imperia) (connected imperia borgomaro)
		(connected pontedassio imperia) (connected imperia pontedassio)
		(connected lerici spezia) (connected spezia lerici)
		(connected levanto spezia) (connected spezia levanto)
		(connected riomaggiore spezia) (connected spezia riomaggiore)
		(connected manarola spezia) (connected spezia manarola)
		(connected brugnato spezia) (connected spezia brugnato)
		(connected albenga savona) (connected savona albenga)
		(connected finaleligure savona) (connected savona finaleligure)
		(connected varazze savona) (connected savona varazze)
		(connected carrara massa) (connected massa carrara)
		(connected pontremoli massa) (connected massa pontremoli)
		(connected fivizzano massa) (connected massa fivizzano)
		(connected bordighera sanremo) (connected sanremo bordighera)
		(connected ventimiglia sanremo) (connected sanremo ventimiglia)
		(connected pigna sanremo) (connected sanremo pigna)
		(connected chioggia venezia2) (connected venezia2 chioggia)
		(connected mestre venezia2) (connected venezia2 mestre)
		(connected sandona venezia2) (connected venezia2 sandona)
		(connected portogruaro venezia2) (connected venezia2 portogruaro)
		(connected conegliano treviso) (connected treviso conegliano)
		(connected montebelluna treviso) (connected treviso montebelluna)
		(connected vittorioveneto treviso) (connected treviso vittorioveneto)
		(connected oderzo treviso) (connected treviso oderzo)
		(connected castelfranco treviso) (connected treviso castelfranco)
		(connected adria rovigo) (connected rovigo adria)
		(connected rosolina rovigo) (connected rovigo rosolina)
		(connected trecenta rovigo) (connected rovigo trecenta)
		(connected schio vicenza) (connected vicenza schio)
		(connected thiene vicenza) (connected vicenza thiene)
		(connected bassano vicenza) (connected vicenza bassano)
		(connected asiago vicenza) (connected vicenza asiago)
		(connected nogara verona) (connected verona nogara)
		(connected legnago verona) (connected verona legnago)
		(connected malcesine verona) (connected verona malcesine)
		(connected peschieradelgarda verona) (connected verona peschieradelgarda)
		(connected este padova) (connected padova este)
		(connected monselice padova) (connected padova monselice)
		(connected camposampiero padova) (connected padova camposampiero)
		(connected cittadella padova) (connected padova cittadella)
		(connected muggia trieste2) (connected trieste2 muggia)
		(connected opicina trieste2) (connected trieste2 opicina)
		(connected duino trieste2) (connected trieste2 duino)
		(connected monfalcone gorizia) (connected gorizia monfalcone)
		(connected cormons gorizia) (connected gorizia cormons)
		(connected villesse gorizia) (connected gorizia villesse)
		(connected palmanova udine) (connected udine palmanova)
		(connected ovaro udine) (connected udine ovaro)
		(connected gemona udine) (connected udine gemona)
		(connected codroipo udine) (connected udine codroipo)
		(connected aviano pordenone) (connected pordenone aviano)
		(connected maniago pordenone) (connected pordenone maniago)
		(connected spilimbergo pordenone) (connected pordenone spilimbergo)
		(connected feltre belluno) (connected belluno feltre)
		(connected agordo belluno) (connected belluno agordo)
		(connected cortina belluno) (connected belluno cortina)
		(connected auronzo belluno) (connected belluno auronzo)
		(connected rovereto trento) (connected trento rovereto)
		(connected borgovalsugana trento) (connected trento borgovalsugana)
		(connected cles trento) (connected trento cles)
		(connected tione trento) (connected trento tione)
		(connected merano bolzano) (connected bolzano merano)
		(connected brunico bolzano) (connected bolzano brunico)
		(connected bressanone bolzano) (connected bolzano bressanone)
		(connected vipiteno bolzano) (connected bolzano vipiteno)
		(connected sesto bolzano) (connected bolzano sesto)
		(connected treviglio bergamo) (connected bergamo treviglio)
		(connected clusone bergamo) (connected bergamo clusone)
		(connected nembro bergamo) (connected bergamo nembro)
		(connected desenzano brescia) (connected brescia desenzano)
		(connected iseo brescia) (connected brescia iseo)
		(connected salo brescia) (connected brescia salo)
		(connected edolo brescia) (connected brescia edolo)
		(connected esine brescia) (connected brescia esine)
		(connected cantù como) (connected como cantù)
		(connected erba como) (connected como erba)
		(connected cernobbio como) (connected como cernobbio)
		(connected crema cremona) (connected cremona crema)
		(connected casalmaggiore cremona) (connected cremona casalmaggiore)
		(connected soresina cremona) (connected cremona soresina)
		(connected merate lecco) (connected lecco merate)
		(connected barzio lecco) (connected lecco barzio)
		(connected calolziocorte lecco) (connected lecco calolziocorte)
		(connected codogno lodi) (connected lodi codogno)
		(connected casalpusterlengo lodi) (connected lodi casalpusterlengo)
		(connected somaglia lodi) (connected lodi somaglia)
		(connected poggiorusco mantova) (connected mantova poggiorusco)
		(connected suzzara mantova) (connected mantova suzzara)
		(connected asola mantova) (connected mantova asola)
		(connected rodigo mantova) (connected mantova rodigo)
		(connected abbiategrasso milano2) (connected milano2 abbiategrasso)
		(connected magenta milano2) (connected milano2 magenta)
		(connected segrate milano2) (connected milano2 segrate)
		(connected rho milano2) (connected milano2 rho)
		(connected sestosangiovanni milano2) (connected milano2 sestosangiovanni)
		(connected seregno monza) (connected monza seregno)
		(connected lissone monza) (connected monza lissone)
		(connected busnago monza) (connected monza busnago)
		(connected vimercate monza) (connected monza vimercate)
		(connected vigevano pavia) (connected pavia vigevano)
		(connected voghera pavia) (connected pavia voghera)
		(connected varzi pavia) (connected pavia varzi)
		(connected mortara pavia) (connected pavia mortara)
		(connected bormio sondrio) (connected sondrio bormio)
		(connected livigno sondrio) (connected sondrio livigno)
		(connected morbegno sondrio) (connected sondrio morbegno)
		(connected campodolcino sondrio) (connected sondrio campodolcino)
		(connected bustoarsizio varese) (connected varese bustoarsizio)
		(connected gallarate varese) (connected varese gallarate)
		(connected luino varese) (connected varese luino)
		(connected imola bologna2) (connected bologna2 imola)
		(connected vergato bologna2) (connected bologna2 vergato)
		(connected castiglionedeipepoli bologna2) (connected bologna2 castiglionedeipepoli)
		(connected copparo ferrara) (connected ferrara copparo)
		(connected codigoro ferrara) (connected ferrara codigoro)
		(connected comacchio ferrara) (connected ferrara comacchio)
		(connected argenta ferrara) (connected ferrara argenta)
		(connected bondeno ferrara) (connected ferrara bondeno)
		(connected cesena forli) (connected forli cesena)
		(connected predappio forli) (connected forli predappio)
		(connected forlimpopoli forli) (connected forli forlimpopoli)
		(connected cesenatico forli) (connected forli cesenatico)
		(connected carpi modena) (connected modena carpi)
		(connected pavullo modena) (connected modena pavullo)
		(connected sassuolo modena) (connected modena sassuolo)
		(connected fidenza parma) (connected parma fidenza)
		(connected langhirano parma) (connected parma langhirano)
		(connected volpara parma) (connected parma volpara)
		(connected bobbio piacenza) (connected piacenza bobbio)
		(connected pontenure piacenza) (connected piacenza pontenure)
		(connected fiorenzuola piacenza) (connected piacenza fiorenzuola)
		(connected lugo ravenna) (connected ravenna lugo)
		(connected faenza ravenna) (connected ravenna faenza)
		(connected brisighella ravenna) (connected ravenna brisighella)
		(connected cervia ravenna) (connected ravenna cervia)
		(connected correggio reggioemilia) (connected reggioemilia correggio)
		(connected bibbiano reggioemilia) (connected reggioemilia bibbiano)
		(connected busana reggioemilia) (connected reggioemilia busana)
		(connected riccione rimini) (connected rimini riccione)
		(connected cattolica rimini) (connected rimini cattolica)
		(connected sanmarino rimini) (connected rimini sanmarino)
		(connected ismolas cagliari2) (connected cagliari2 ismolas)
		(connected siliqua cagliari2) (connected cagliari2 siliqua)
		(connected sestu cagliari2) (connected cagliari2 sestu)
		(connected macomer nuoro) (connected nuoro macomer)
		(connected fonni nuoro) (connected nuoro fonni)
		(connected bitti nuoro) (connected nuoro bitti)
		(connected cardedu nuoro) (connected nuoro cardedu)
		(connected posada nuoro) (connected nuoro posada)
		(connected cabras oristano) (connected oristano cabras)
		(connected terralba oristano) (connected oristano terralba)
		(connected laconi oristano) (connected oristano laconi)
		(connected bosa oristano) (connected oristano bosa)
		(connected alghero sassari) (connected sassari alghero)
		(connected stintino sassari) (connected sassari stintino)
		(connected castelsardo sassari) (connected sassari castelsardo)
		(connected portocervo olbia) (connected olbia portocervo)
		(connected berchidda olbia) (connected olbia berchidda)
		(connected arzachena olbia) (connected olbia arzachena)
		(connected zinnigas carbonia) (connected carbonia zinnigas)
		(connected portoscuso carbonia) (connected carbonia portoscuso)
		(connected buggerru carbonia) (connected carbonia buggerru)
		(connected gonnosfanadiga carbonia) (connected carbonia gonnosfanadiga)

		; TRANSPORT MEANS
		; planes
		(transport plane1) (transport plane2) (transport plane3) (transport plane4) (transport plane5) 
		(transport plane6) (transport plane7) (transport plane8) (transport plane9) (transport plane10) 
		
		; trucks
		(transport truck1) (transport truck2) (transport truck3) (transport truck4) (transport truck5) 
		(transport truck6) (transport truck7) (transport truck8) (transport truck9) (transport truck10) 
		(transport truck11) (transport truck12) (transport truck13) (transport truck14) (transport truck15) 
		(transport truck16) (transport truck17) (transport truck18) (transport truck19) (transport truck20) 
		(transport truck21) (transport truck22) 
		; drones
		(transport drone1) (transport drone2) (transport drone3) (transport drone4) (transport drone5) 
		(transport drone6) (transport drone7) (transport drone8) (transport drone9) (transport drone10) 
		(transport drone11) (transport drone12) (transport drone13) (transport drone14) (transport drone15) 
		(transport drone16) (transport drone17) (transport drone18) (transport drone19) (transport drone20) 
		(transport drone21) (transport drone22) (transport drone23) (transport drone24) (transport drone25) 
		(transport drone26) (transport drone27) (transport drone28) (transport drone29) (transport drone30) 
		(transport drone31) (transport drone32) (transport drone33) (transport drone34) (transport drone35) 
		(transport drone36) (transport drone37) (transport drone38) (transport drone39) (transport drone40) 
		(transport drone41) (transport drone42) (transport drone43) (transport drone44) (transport drone45) 
		(transport drone46) (transport drone47) (transport drone48) (transport drone49) (transport drone50) 
		(transport drone51) (transport drone52) (transport drone53) (transport drone54) (transport drone55) 
		(transport drone56) (transport drone57) (transport drone58) (transport drone59) (transport drone60) 
		(transport drone61) (transport drone62) (transport drone63) (transport drone64) (transport drone65) 
		(transport drone66) (transport drone67) (transport drone68) (transport drone69) (transport drone70) 
		(transport drone71) (transport drone72) (transport drone73) (transport drone74) (transport drone75) 
		(transport drone76) (transport drone77) (transport drone78) 

		; airports
		(hasAirport ROMA)
		(hasAirport cagliari1)
		(hasAirport olbia)
		(hasAirport bologna1)
		(hasAirport bergamo)
		(hasAirport milano1)
		(hasAirport trieste1)
		(hasAirport venezia1)
		(hasAirport treviso)
		(hasAirport verona)
		(hasAirport genova1)
		(hasAirport firenze1)
		(hasAirport pisa)
		(hasAirport torino1)
		(hasAirport catania)
		(hasAirport palermo1)
		(hasAirport trapani)
		(hasAirport bari1)
		(hasAirport brindisi)
		(hasAirport napoli1)
		(hasAirport vibovalentia)

		; planes
		(plane plane1) (at plane1 ROMA) (= (capacity plane1) 0)
		(plane plane2) (at plane2 bari1) (= (capacity plane2) 0)
		(plane plane3) (at plane3 firenze1) (= (capacity plane3) 0)
		(plane plane4) (at plane4 olbia) (= (capacity plane4) 0)
		(plane plane5) (at plane5 olbia) (= (capacity plane5) 0)
		(plane plane6) (at plane6 torino1) (= (capacity plane6) 0)
		(plane plane7) (at plane7 bari1) (= (capacity plane7) 0)
		(plane plane8) (at plane8 bari1) (= (capacity plane8) 0)
		(plane plane9) (at plane9 venezia1) (= (capacity plane9) 0)
		(plane plane10) (at plane10 genova1) (= (capacity plane10) 0)
		; trucks
		(truck truck1) (at truck1 ROMA) (= (capacity truck1) 0)
		(truck truck2) (at truck2 cagliari1) (= (capacity truck2) 0)
		(truck truck3) (at truck3 olbia) (= (capacity truck3) 0)
		(truck truck4) (at truck4 bologna1) (= (capacity truck4) 0)
		(truck truck5) (at truck5 bergamo) (= (capacity truck5) 0)
		(truck truck6) (at truck6 milano1) (= (capacity truck6) 0)
		(truck truck7) (at truck7 trieste1) (= (capacity truck7) 0)
		(truck truck8) (at truck8 venezia1) (= (capacity truck8) 0)
		(truck truck9) (at truck9 treviso) (= (capacity truck9) 0)
		(truck truck10) (at truck10 verona) (= (capacity truck10) 0)
		(truck truck11) (at truck11 genova1) (= (capacity truck11) 0)
		(truck truck12) (at truck12 firenze1) (= (capacity truck12) 0)
		(truck truck13) (at truck13 pisa) (= (capacity truck13) 0)
		(truck truck14) (at truck14 torino1) (= (capacity truck14) 0)
		(truck truck15) (at truck15 catania) (= (capacity truck15) 0)
		(truck truck16) (at truck16 palermo1) (= (capacity truck16) 0)
		(truck truck17) (at truck17 trapani) (= (capacity truck17) 0)
		(truck truck18) (at truck18 bari1) (= (capacity truck18) 0)
		(truck truck19) (at truck19 brindisi) (= (capacity truck19) 0)
		(truck truck20) (at truck20 napoli1) (= (capacity truck20) 0)
		(truck truck21) (at truck21 vibovalentia) (= (capacity truck21) 0)
		(truck truck22) (at truck22 ROMA) (= (capacity truck22) 0)

		; drones
		(drone drone1) (at drone1 sabaudia) (= (capacity drone1) 0)
		(drone drone2) (at drone2 cassino) (= (capacity drone2) 0)
		(drone drone3) (at drone3 perugia) (= (capacity drone3) 0)
		(drone drone4) (at drone4 anagni) (= (capacity drone4) 0)
		(drone drone5) (at drone5 acquapendente) (= (capacity drone5) 0)
		(drone drone6) (at drone6 terracina) (= (capacity drone6) 0)
		(drone drone7) (at drone7 rieti) (= (capacity drone7) 0)
		(drone drone8) (at drone8 vibovalentia) (= (capacity drone8) 0)
		(drone drone9) (at drone9 corigliano) (= (capacity drone9) 0)
		(drone drone10) (at drone10 tarsia) (= (capacity drone10) 0)
		(drone drone11) (at drone11 sorrento) (= (capacity drone11) 0)
		(drone drone12) (at drone12 afragola) (= (capacity drone12) 0)
		(drone drone13) (at drone13 venosa) (= (capacity drone13) 0)
		(drone drone14) (at drone14 giulianova) (= (capacity drone14) 0)
		(drone drone15) (at drone15 castelmauro) (= (capacity drone15) 0)
		(drone drone16) (at drone16 termoli) (= (capacity drone16) 0)
		(drone drone17) (at drone17 scafa) (= (capacity drone17) 0)
		(drone drone18) (at drone18 foggia) (= (capacity drone18) 0)
		(drone drone19) (at drone19 cerignola) (= (capacity drone19) 0)
		(drone drone20) (at drone20 fasano) (= (capacity drone20) 0)
		(drone drone21) (at drone21 enna) (= (capacity drone21) 0)
		(drone drone22) (at drone22 ragusa) (= (capacity drone22) 0)
		(drone drone23) (at drone23 troina) (= (capacity drone23) 0)
		(drone drone24) (at drone24 piedicavallo) (= (capacity drone24) 0)
		(drone drone25) (at drone25 verbano) (= (capacity drone25) 0)
		(drone drone26) (at drone26 vercelli) (= (capacity drone26) 0)
		(drone drone27) (at drone27 borgomanero) (= (capacity drone27) 0)
		(drone drone28) (at drone28 stroppiana) (= (capacity drone28) 0)
		(drone drone29) (at drone29 carisio) (= (capacity drone29) 0)
		(drone drone30) (at drone30 vernio) (= (capacity drone30) 0)
		(drone drone31) (at drone31 pontedera) (= (capacity drone31) 0)
		(drone drone32) (at drone32 montecatini) (= (capacity drone32) 0)
		(drone drone33) (at drone33 bibbiena) (= (capacity drone33) 0)
		(drone drone34) (at drone34 saturnia) (= (capacity drone34) 0)
		(drone drone35) (at drone35 cantagallo) (= (capacity drone35) 0)
		(drone drone36) (at drone36 civitanovamarche) (= (capacity drone36) 0)
		(drone drone37) (at drone37 ancona2) (= (capacity drone37) 0)
		(drone drone38) (at drone38 montefalcone) (= (capacity drone38) 0)
		(drone drone39) (at drone39 ancona2) (= (capacity drone39) 0)
		(drone drone40) (at drone40 civitanovamarche) (= (capacity drone40) 0)
		(drone drone41) (at drone41 genova2) (= (capacity drone41) 0)
		(drone drone42) (at drone42 borgomaro) (= (capacity drone42) 0)
		(drone drone43) (at drone43 manarola) (= (capacity drone43) 0)
		(drone drone44) (at drone44 levanto) (= (capacity drone44) 0)
		(drone drone45) (at drone45 pontedassio) (= (capacity drone45) 0)
		(drone drone46) (at drone46 sestrilevante) (= (capacity drone46) 0)
		(drone drone47) (at drone47 malcesine) (= (capacity drone47) 0)
		(drone drone48) (at drone48 rosolina) (= (capacity drone48) 0)
		(drone drone49) (at drone49 schio) (= (capacity drone49) 0)
		(drone drone50) (at drone50 treviso) (= (capacity drone50) 0)
		(drone drone51) (at drone51 padova) (= (capacity drone51) 0)
		(drone drone52) (at drone52 bassano) (= (capacity drone52) 0)
		(drone drone53) (at drone53 padova) (= (capacity drone53) 0)
		(drone drone54) (at drone54 aviano) (= (capacity drone54) 0)
		(drone drone55) (at drone55 trieste2) (= (capacity drone55) 0)
		(drone drone56) (at drone56 belluno) (= (capacity drone56) 0)
		(drone drone57) (at drone57 trento) (= (capacity drone57) 0)
		(drone drone58) (at drone58 trieste2) (= (capacity drone58) 0)
		(drone drone59) (at drone59 bressanone) (= (capacity drone59) 0)
		(drone drone60) (at drone60 casalpusterlengo) (= (capacity drone60) 0)
		(drone drone61) (at drone61 codogno) (= (capacity drone61) 0)
		(drone drone62) (at drone62 monza) (= (capacity drone62) 0)
		(drone drone63) (at drone63 segrate) (= (capacity drone63) 0)
		(drone drone64) (at drone64 pavia) (= (capacity drone64) 0)
		(drone drone65) (at drone65 sondrio) (= (capacity drone65) 0)
		(drone drone66) (at drone66 barzio) (= (capacity drone66) 0)
		(drone drone67) (at drone67 rodigo) (= (capacity drone67) 0)
		(drone drone68) (at drone68 cesenatico) (= (capacity drone68) 0)
		(drone drone69) (at drone69 reggioemilia) (= (capacity drone69) 0)
		(drone drone70) (at drone70 forli) (= (capacity drone70) 0)
		(drone drone71) (at drone71 parma) (= (capacity drone71) 0)
		(drone drone72) (at drone72 rimini) (= (capacity drone72) 0)
		(drone drone73) (at drone73 sanmarino) (= (capacity drone73) 0)
		(drone drone74) (at drone74 bologna2) (= (capacity drone74) 0)
		(drone drone75) (at drone75 berchidda) (= (capacity drone75) 0)
		(drone drone76) (at drone76 portocervo) (= (capacity drone76) 0)
		(drone drone77) (at drone77 sassari) (= (capacity drone77) 0)
		(drone drone78) (at drone78 terralba) (= (capacity drone78) 0)

		; VACCINE BOXES
		; vaccine boxes
		(vaccineBox vb1) (vaccineBox vb2) (vaccineBox vb3) (vaccineBox vb4) (vaccineBox vb5) (vaccineBox vb6) (vaccineBox vb7) (vaccineBox vb8) (vaccineBox vb9) (vaccineBox vb10) 
		(vaccineBox vb11) (vaccineBox vb12) (vaccineBox vb13) (vaccineBox vb14) (vaccineBox vb15) (vaccineBox vb16) (vaccineBox vb17) (vaccineBox vb18) (vaccineBox vb19) (vaccineBox vb20) 
		(vaccineBox vb21) (vaccineBox vb22) (vaccineBox vb23) (vaccineBox vb24) (vaccineBox vb25) (vaccineBox vb26) (vaccineBox vb27) (vaccineBox vb28) (vaccineBox vb29) (vaccineBox vb30) 
		(vaccineBox vb31) (vaccineBox vb32) (vaccineBox vb33) (vaccineBox vb34) (vaccineBox vb35) (vaccineBox vb36) (vaccineBox vb37) (vaccineBox vb38) (vaccineBox vb39) (vaccineBox vb40) 
		(vaccineBox vb41) (vaccineBox vb42) (vaccineBox vb43) (vaccineBox vb44) (vaccineBox vb45) (vaccineBox vb46) (vaccineBox vb47) (vaccineBox vb48) (vaccineBox vb49) (vaccineBox vb50) 
		(vaccineBox vb51) (vaccineBox vb52) (vaccineBox vb53) (vaccineBox vb54) (vaccineBox vb55) (vaccineBox vb56) (vaccineBox vb57) (vaccineBox vb58) (vaccineBox vb59) (vaccineBox vb60) 
		(vaccineBox vb61) (vaccineBox vb62) (vaccineBox vb63) (vaccineBox vb64) (vaccineBox vb65) (vaccineBox vb66) (vaccineBox vb67) (vaccineBox vb68) (vaccineBox vb69) (vaccineBox vb70) 
		(vaccineBox vb71) (vaccineBox vb72) (vaccineBox vb73) (vaccineBox vb74) (vaccineBox vb75) (vaccineBox vb76) (vaccineBox vb77) (vaccineBox vb78) (vaccineBox vb79) (vaccineBox vb80) 
		(vaccineBox vb81) (vaccineBox vb82) (vaccineBox vb83) (vaccineBox vb84) (vaccineBox vb85) (vaccineBox vb86) (vaccineBox vb87) (vaccineBox vb88) (vaccineBox vb89) (vaccineBox vb90) 
		(vaccineBox vb91) (vaccineBox vb92) (vaccineBox vb93) (vaccineBox vb94) (vaccineBox vb95) (vaccineBox vb96) (vaccineBox vb97) (vaccineBox vb98) (vaccineBox vb99) (vaccineBox vb100) 
		(vaccineBox vb101) (vaccineBox vb102) (vaccineBox vb103) (vaccineBox vb104) (vaccineBox vb105) (vaccineBox vb106) (vaccineBox vb107) (vaccineBox vb108) (vaccineBox vb109) (vaccineBox vb110) 
		(vaccineBox vb111) (vaccineBox vb112) (vaccineBox vb113) (vaccineBox vb114) (vaccineBox vb115) (vaccineBox vb116) (vaccineBox vb117) (vaccineBox vb118) (vaccineBox vb119) (vaccineBox vb120) 
		(vaccineBox vb121) (vaccineBox vb122) (vaccineBox vb123) (vaccineBox vb124) (vaccineBox vb125) (vaccineBox vb126) (vaccineBox vb127) (vaccineBox vb128) (vaccineBox vb129) (vaccineBox vb130) 
		(vaccineBox vb131) (vaccineBox vb132) (vaccineBox vb133) (vaccineBox vb134) (vaccineBox vb135) (vaccineBox vb136) (vaccineBox vb137) (vaccineBox vb138) (vaccineBox vb139) (vaccineBox vb140) 
		(vaccineBox vb141) (vaccineBox vb142) (vaccineBox vb143) (vaccineBox vb144) (vaccineBox vb145) (vaccineBox vb146) (vaccineBox vb147) (vaccineBox vb148) (vaccineBox vb149) (vaccineBox vb150) 
		(vaccineBox vb151) (vaccineBox vb152) (vaccineBox vb153) (vaccineBox vb154) (vaccineBox vb155) (vaccineBox vb156) (vaccineBox vb157) (vaccineBox vb158) (vaccineBox vb159) (vaccineBox vb160) 
		(vaccineBox vb161) (vaccineBox vb162) (vaccineBox vb163) (vaccineBox vb164) (vaccineBox vb165) (vaccineBox vb166) (vaccineBox vb167) (vaccineBox vb168) (vaccineBox vb169) (vaccineBox vb170) 
		(vaccineBox vb171) (vaccineBox vb172) (vaccineBox vb173) (vaccineBox vb174) (vaccineBox vb175) (vaccineBox vb176) (vaccineBox vb177) (vaccineBox vb178) (vaccineBox vb179) (vaccineBox vb180) 
		(vaccineBox vb181) (vaccineBox vb182) (vaccineBox vb183) (vaccineBox vb184) (vaccineBox vb185) (vaccineBox vb186) (vaccineBox vb187) (vaccineBox vb188) (vaccineBox vb189) (vaccineBox vb190) 
		(vaccineBox vb191) (vaccineBox vb192) (vaccineBox vb193) (vaccineBox vb194) (vaccineBox vb195) (vaccineBox vb196) (vaccineBox vb197) (vaccineBox vb198) (vaccineBox vb199) (vaccineBox vb200) 
		(vaccineBox vb201) (vaccineBox vb202) (vaccineBox vb203) (vaccineBox vb204) (vaccineBox vb205) (vaccineBox vb206) (vaccineBox vb207) (vaccineBox vb208) (vaccineBox vb209) (vaccineBox vb210) 
		(vaccineBox vb211) (vaccineBox vb212) (vaccineBox vb213) (vaccineBox vb214) (vaccineBox vb215) (vaccineBox vb216) (vaccineBox vb217) (vaccineBox vb218) (vaccineBox vb219) (vaccineBox vb220) 
		(vaccineBox vb221) (vaccineBox vb222) (vaccineBox vb223) (vaccineBox vb224) (vaccineBox vb225) (vaccineBox vb226) (vaccineBox vb227) (vaccineBox vb228) (vaccineBox vb229) (vaccineBox vb230) 
		(vaccineBox vb231) (vaccineBox vb232) (vaccineBox vb233) (vaccineBox vb234) (vaccineBox vb235) (vaccineBox vb236) (vaccineBox vb237) (vaccineBox vb238) (vaccineBox vb239) (vaccineBox vb240) 
		(vaccineBox vb241) (vaccineBox vb242) (vaccineBox vb243) (vaccineBox vb244) (vaccineBox vb245) (vaccineBox vb246) (vaccineBox vb247) (vaccineBox vb248) (vaccineBox vb249) (vaccineBox vb250) 
		(vaccineBox vb251) (vaccineBox vb252) (vaccineBox vb253) (vaccineBox vb254) (vaccineBox vb255) (vaccineBox vb256) (vaccineBox vb257) (vaccineBox vb258) (vaccineBox vb259) (vaccineBox vb260) 
		(vaccineBox vb261) (vaccineBox vb262) (vaccineBox vb263) (vaccineBox vb264) (vaccineBox vb265) (vaccineBox vb266) (vaccineBox vb267) (vaccineBox vb268) (vaccineBox vb269) (vaccineBox vb270) 
		(vaccineBox vb271) (vaccineBox vb272) (vaccineBox vb273) (vaccineBox vb274) (vaccineBox vb275) (vaccineBox vb276) (vaccineBox vb277) (vaccineBox vb278) (vaccineBox vb279) (vaccineBox vb280) 
		(vaccineBox vb281) (vaccineBox vb282) (vaccineBox vb283) (vaccineBox vb284) (vaccineBox vb285) (vaccineBox vb286) (vaccineBox vb287) (vaccineBox vb288) (vaccineBox vb289) (vaccineBox vb290) 
		(vaccineBox vb291) (vaccineBox vb292) (vaccineBox vb293) (vaccineBox vb294) (vaccineBox vb295) (vaccineBox vb296) (vaccineBox vb297) (vaccineBox vb298) (vaccineBox vb299) (vaccineBox vb300) 
		(vaccineBox vb301) (vaccineBox vb302) (vaccineBox vb303) (vaccineBox vb304) (vaccineBox vb305) (vaccineBox vb306) (vaccineBox vb307) (vaccineBox vb308) (vaccineBox vb309) (vaccineBox vb310) 
		(vaccineBox vb311) (vaccineBox vb312) (vaccineBox vb313) (vaccineBox vb314) (vaccineBox vb315) (vaccineBox vb316) (vaccineBox vb317) (vaccineBox vb318) (vaccineBox vb319) (vaccineBox vb320) 
		(vaccineBox vb321) (vaccineBox vb322) (vaccineBox vb323) (vaccineBox vb324) (vaccineBox vb325) (vaccineBox vb326) (vaccineBox vb327) (vaccineBox vb328) (vaccineBox vb329) (vaccineBox vb330) 
		(vaccineBox vb331) (vaccineBox vb332) (vaccineBox vb333) (vaccineBox vb334) (vaccineBox vb335) (vaccineBox vb336) (vaccineBox vb337) (vaccineBox vb338) (vaccineBox vb339) (vaccineBox vb340) 
		(vaccineBox vb341) (vaccineBox vb342) (vaccineBox vb343) (vaccineBox vb344) (vaccineBox vb345) (vaccineBox vb346) (vaccineBox vb347) (vaccineBox vb348) (vaccineBox vb349) (vaccineBox vb350) 
		(vaccineBox vb351) (vaccineBox vb352) (vaccineBox vb353) (vaccineBox vb354) (vaccineBox vb355) (vaccineBox vb356) (vaccineBox vb357) (vaccineBox vb358) (vaccineBox vb359) (vaccineBox vb360) 
		(vaccineBox vb361) (vaccineBox vb362) (vaccineBox vb363) (vaccineBox vb364) (vaccineBox vb365) (vaccineBox vb366) (vaccineBox vb367) (vaccineBox vb368) (vaccineBox vb369) (vaccineBox vb370) 
		(vaccineBox vb371) (vaccineBox vb372) (vaccineBox vb373) (vaccineBox vb374) (vaccineBox vb375) (vaccineBox vb376) (vaccineBox vb377) (vaccineBox vb378) (vaccineBox vb379) (vaccineBox vb380) 
		(vaccineBox vb381) (vaccineBox vb382) (vaccineBox vb383) (vaccineBox vb384) (vaccineBox vb385) (vaccineBox vb386) (vaccineBox vb387) (vaccineBox vb388) (vaccineBox vb389) (vaccineBox vb390) 
		(vaccineBox vb391) (vaccineBox vb392) (vaccineBox vb393) (vaccineBox vb394) (vaccineBox vb395) (vaccineBox vb396) (vaccineBox vb397) (vaccineBox vb398) (vaccineBox vb399) (vaccineBox vb400) 
		(vaccineBox vb401) (vaccineBox vb402) (vaccineBox vb403) (vaccineBox vb404) (vaccineBox vb405) (vaccineBox vb406) (vaccineBox vb407) (vaccineBox vb408) (vaccineBox vb409) (vaccineBox vb410) 
		(vaccineBox vb411) (vaccineBox vb412) 
		; where
		(at vb1 ROMA) (at vb2 ROMA) (at vb3 ROMA) (at vb4 ROMA) (at vb5 ROMA) 
		(at vb6 ROMA) (at vb7 ROMA) (at vb8 ROMA) (at vb9 ROMA) (at vb10 ROMA) 
		(at vb11 ROMA) (at vb12 ROMA) (at vb13 ROMA) (at vb14 ROMA) (at vb15 ROMA) 
		(at vb16 ROMA) (at vb17 ROMA) (at vb18 ROMA) (at vb19 ROMA) (at vb20 ROMA) 
		(at vb21 ROMA) (at vb22 ROMA) (at vb23 ROMA) (at vb24 ROMA) (at vb25 ROMA) 
		(at vb26 ROMA) (at vb27 ROMA) (at vb28 ROMA) (at vb29 ROMA) (at vb30 ROMA) 
		(at vb31 ROMA) (at vb32 ROMA) (at vb33 ROMA) (at vb34 ROMA) (at vb35 ROMA) 
		(at vb36 ROMA) (at vb37 ROMA) (at vb38 ROMA) (at vb39 ROMA) (at vb40 ROMA) 
		(at vb41 ROMA) (at vb42 ROMA) (at vb43 ROMA) (at vb44 ROMA) (at vb45 ROMA) 
		(at vb46 ROMA) (at vb47 ROMA) (at vb48 ROMA) (at vb49 ROMA) (at vb50 ROMA) 
		(at vb51 ROMA) (at vb52 ROMA) (at vb53 ROMA) (at vb54 ROMA) (at vb55 ROMA) 
		(at vb56 ROMA) (at vb57 ROMA) (at vb58 ROMA) (at vb59 ROMA) (at vb60 ROMA) 
		(at vb61 ROMA) (at vb62 ROMA) (at vb63 ROMA) (at vb64 ROMA) (at vb65 ROMA) 
		(at vb66 ROMA) (at vb67 ROMA) (at vb68 ROMA) (at vb69 ROMA) (at vb70 ROMA) 
		(at vb71 ROMA) (at vb72 ROMA) (at vb73 ROMA) (at vb74 ROMA) (at vb75 ROMA) 
		(at vb76 ROMA) (at vb77 ROMA) (at vb78 ROMA) (at vb79 ROMA) (at vb80 ROMA) 
		(at vb81 ROMA) (at vb82 ROMA) (at vb83 ROMA) (at vb84 ROMA) (at vb85 ROMA) 
		(at vb86 ROMA) (at vb87 ROMA) (at vb88 ROMA) (at vb89 ROMA) (at vb90 ROMA) 
		(at vb91 ROMA) (at vb92 ROMA) (at vb93 ROMA) (at vb94 ROMA) (at vb95 ROMA) 
		(at vb96 ROMA) (at vb97 ROMA) (at vb98 ROMA) (at vb99 ROMA) (at vb100 ROMA) 
		(at vb101 ROMA) (at vb102 ROMA) (at vb103 ROMA) (at vb104 ROMA) (at vb105 ROMA) 
		(at vb106 ROMA) (at vb107 ROMA) (at vb108 ROMA) (at vb109 ROMA) (at vb110 ROMA) 
		(at vb111 ROMA) (at vb112 ROMA) (at vb113 ROMA) (at vb114 ROMA) (at vb115 ROMA) 
		(at vb116 ROMA) (at vb117 ROMA) (at vb118 ROMA) (at vb119 ROMA) (at vb120 ROMA) 
		(at vb121 ROMA) (at vb122 ROMA) (at vb123 ROMA) (at vb124 ROMA) (at vb125 ROMA) 
		(at vb126 ROMA) (at vb127 ROMA) (at vb128 ROMA) (at vb129 ROMA) (at vb130 ROMA) 
		(at vb131 ROMA) (at vb132 ROMA) (at vb133 ROMA) (at vb134 ROMA) (at vb135 ROMA) 
		(at vb136 ROMA) (at vb137 ROMA) (at vb138 ROMA) (at vb139 ROMA) (at vb140 ROMA) 
		(at vb141 ROMA) (at vb142 ROMA) (at vb143 ROMA) (at vb144 ROMA) (at vb145 ROMA) 
		(at vb146 ROMA) (at vb147 ROMA) (at vb148 ROMA) (at vb149 ROMA) (at vb150 ROMA) 
		(at vb151 ROMA) (at vb152 ROMA) (at vb153 ROMA) (at vb154 ROMA) (at vb155 ROMA) 
		(at vb156 ROMA) (at vb157 ROMA) (at vb158 ROMA) (at vb159 ROMA) (at vb160 ROMA) 
		(at vb161 ROMA) (at vb162 ROMA) (at vb163 ROMA) (at vb164 ROMA) (at vb165 ROMA) 
		(at vb166 ROMA) (at vb167 ROMA) (at vb168 ROMA) (at vb169 ROMA) (at vb170 ROMA) 
		(at vb171 ROMA) (at vb172 ROMA) (at vb173 ROMA) (at vb174 ROMA) (at vb175 ROMA) 
		(at vb176 ROMA) (at vb177 ROMA) (at vb178 ROMA) (at vb179 ROMA) (at vb180 ROMA) 
		(at vb181 ROMA) (at vb182 ROMA) (at vb183 ROMA) (at vb184 ROMA) (at vb185 ROMA) 
		(at vb186 ROMA) (at vb187 ROMA) (at vb188 ROMA) (at vb189 ROMA) (at vb190 ROMA) 
		(at vb191 ROMA) (at vb192 ROMA) (at vb193 ROMA) (at vb194 ROMA) (at vb195 ROMA) 
		(at vb196 ROMA) (at vb197 ROMA) (at vb198 ROMA) (at vb199 ROMA) (at vb200 ROMA) 
		(at vb201 ROMA) (at vb202 ROMA) (at vb203 ROMA) (at vb204 ROMA) (at vb205 ROMA) 
		(at vb206 ROMA) (at vb207 ROMA) (at vb208 ROMA) (at vb209 ROMA) (at vb210 ROMA) 
		(at vb211 ROMA) (at vb212 ROMA) (at vb213 ROMA) (at vb214 ROMA) (at vb215 ROMA) 
		(at vb216 ROMA) (at vb217 ROMA) (at vb218 ROMA) (at vb219 ROMA) (at vb220 ROMA) 
		(at vb221 ROMA) (at vb222 ROMA) (at vb223 ROMA) (at vb224 ROMA) (at vb225 ROMA) 
		(at vb226 ROMA) (at vb227 ROMA) (at vb228 ROMA) (at vb229 ROMA) (at vb230 ROMA) 
		(at vb231 ROMA) (at vb232 ROMA) (at vb233 ROMA) (at vb234 ROMA) (at vb235 ROMA) 
		(at vb236 ROMA) (at vb237 ROMA) (at vb238 ROMA) (at vb239 ROMA) (at vb240 ROMA) 
		(at vb241 ROMA) (at vb242 ROMA) (at vb243 ROMA) (at vb244 ROMA) (at vb245 ROMA) 
		(at vb246 ROMA) (at vb247 ROMA) (at vb248 ROMA) (at vb249 ROMA) (at vb250 ROMA) 
		(at vb251 ROMA) (at vb252 ROMA) (at vb253 ROMA) (at vb254 ROMA) (at vb255 ROMA) 
		(at vb256 ROMA) (at vb257 ROMA) (at vb258 ROMA) (at vb259 ROMA) (at vb260 ROMA) 
		(at vb261 ROMA) (at vb262 ROMA) (at vb263 ROMA) (at vb264 ROMA) (at vb265 ROMA) 
		(at vb266 ROMA) (at vb267 ROMA) (at vb268 ROMA) (at vb269 ROMA) (at vb270 ROMA) 
		(at vb271 ROMA) (at vb272 ROMA) (at vb273 ROMA) (at vb274 ROMA) (at vb275 ROMA) 
		(at vb276 ROMA) (at vb277 ROMA) (at vb278 ROMA) (at vb279 ROMA) (at vb280 ROMA) 
		(at vb281 ROMA) (at vb282 ROMA) (at vb283 ROMA) (at vb284 ROMA) (at vb285 ROMA) 
		(at vb286 ROMA) (at vb287 ROMA) (at vb288 ROMA) (at vb289 ROMA) (at vb290 ROMA) 
		(at vb291 ROMA) (at vb292 ROMA) (at vb293 ROMA) (at vb294 ROMA) (at vb295 ROMA) 
		(at vb296 ROMA) (at vb297 ROMA) (at vb298 ROMA) (at vb299 ROMA) (at vb300 ROMA) 
		(at vb301 ROMA) (at vb302 ROMA) (at vb303 ROMA) (at vb304 ROMA) (at vb305 ROMA) 
		(at vb306 ROMA) (at vb307 ROMA) (at vb308 ROMA) (at vb309 ROMA) (at vb310 ROMA) 
		(at vb311 ROMA) (at vb312 ROMA) (at vb313 ROMA) (at vb314 ROMA) (at vb315 ROMA) 
		(at vb316 ROMA) (at vb317 ROMA) (at vb318 ROMA) (at vb319 ROMA) (at vb320 ROMA) 
		(at vb321 ROMA) (at vb322 ROMA) (at vb323 ROMA) (at vb324 ROMA) (at vb325 ROMA) 
		(at vb326 ROMA) (at vb327 ROMA) (at vb328 ROMA) (at vb329 ROMA) (at vb330 ROMA) 
		(at vb331 ROMA) (at vb332 ROMA) (at vb333 ROMA) (at vb334 ROMA) (at vb335 ROMA) 
		(at vb336 ROMA) (at vb337 ROMA) (at vb338 ROMA) (at vb339 ROMA) (at vb340 ROMA) 
		(at vb341 ROMA) (at vb342 ROMA) (at vb343 ROMA) (at vb344 ROMA) (at vb345 ROMA) 
		(at vb346 ROMA) (at vb347 ROMA) (at vb348 ROMA) (at vb349 ROMA) (at vb350 ROMA) 
		(at vb351 ROMA) (at vb352 ROMA) (at vb353 ROMA) (at vb354 ROMA) (at vb355 ROMA) 
		(at vb356 ROMA) (at vb357 ROMA) (at vb358 ROMA) (at vb359 ROMA) (at vb360 ROMA) 
		(at vb361 ROMA) (at vb362 ROMA) (at vb363 ROMA) (at vb364 ROMA) (at vb365 ROMA) 
		(at vb366 ROMA) (at vb367 ROMA) (at vb368 ROMA) (at vb369 ROMA) (at vb370 ROMA) 
		(at vb371 ROMA) (at vb372 ROMA) (at vb373 ROMA) (at vb374 ROMA) (at vb375 ROMA) 
		(at vb376 ROMA) (at vb377 ROMA) (at vb378 ROMA) (at vb379 ROMA) (at vb380 ROMA) 
		(at vb381 ROMA) (at vb382 ROMA) (at vb383 ROMA) (at vb384 ROMA) (at vb385 ROMA) 
		(at vb386 ROMA) (at vb387 ROMA) (at vb388 ROMA) (at vb389 ROMA) (at vb390 ROMA) 
		(at vb391 ROMA) (at vb392 ROMA) (at vb393 ROMA) (at vb394 ROMA) (at vb395 ROMA) 
		(at vb396 ROMA) (at vb397 ROMA) (at vb398 ROMA) (at vb399 ROMA) (at vb400 ROMA) 
		(at vb401 ROMA) (at vb402 ROMA) (at vb403 ROMA) (at vb404 ROMA) (at vb405 ROMA) 
		(at vb406 ROMA) (at vb407 ROMA) (at vb408 ROMA) (at vb409 ROMA) (at vb410 ROMA) 
		(at vb411 ROMA) (at vb412 ROMA) 
		; constraints
		(reachCDP vb1 ROMA) (reachCDP vb2 ROMA) (reachCDP vb3 ROMA) (reachCDP vb4 ROMA) (reachCDP vb5 ROMA) 
		(reachCDP vb6 ROMA) (reachCDP vb7 ROMA) (reachCDP vb8 ROMA) (reachCDP vb9 ROMA) (reachCDP vb10 ROMA) 
		(reachCDP vb11 ROMA) (reachCDP vb12 ROMA) (reachCDP vb13 ROMA) (reachCDP vb14 ROMA) (reachCDP vb15 ROMA) 
		(reachCDP vb16 ROMA) (reachCDP vb17 ROMA) (reachCDP vb18 ROMA) (reachCDP vb19 ROMA) (reachCDP vb20 ROMA) 
		(reachCDP vb21 ROMA) (reachCDP vb22 ROMA) (reachCDP vb23 ROMA) (reachCDP vb24 ROMA) (reachCDP vb25 ROMA) 
		(reachCDP vb26 ROMA) (reachCDP vb27 ROMA) (reachCDP vb28 ROMA) (reachCDP vb29 ROMA) (reachCDP vb30 ROMA) 
		(reachCDP vb31 ROMA) (reachCDP vb32 ROMA) (reachCDP vb33 ROMA) (reachCDP vb34 ROMA) (reachCDP vb35 ROMA) 
		(reachCDP vb36 ROMA) (reachCDP vb37 ROMA) (reachCDP vb38 ROMA) (reachCDP vb39 ROMA) (reachCDP vb40 ROMA) 
		(reachCDP vb41 ROMA) (reachCDP vb42 ROMA) (reachCDP vb43 ROMA) (reachCDP vb44 ROMA) (reachCDP vb45 ROMA) 
		(reachCDP vb46 ROMA) (reachCDP vb47 ROMA) (reachCDP vb48 ROMA) (reachCDP vb49 ROMA) (reachCDP vb50 ROMA) 
		(reachCDP vb51 ROMA) (reachCDP vb52 ROMA) (reachCDP vb53 ROMA) (reachCDP vb54 ROMA) (reachCDP vb55 ROMA) 
		(reachCDP vb56 ROMA) (reachCDP vb57 ROMA) (reachCDP vb58 ROMA) (reachCDP vb59 ROMA) (reachCDP vb60 ROMA) 
		(reachCDP vb61 ROMA) (reachCDP vb62 ROMA) (reachCDP vb63 ROMA) (reachCDP vb64 ROMA) (reachCDP vb65 ROMA) 
		(reachCDP vb66 ROMA) (reachCDP vb67 ROMA) (reachCDP vb68 ROMA) (reachCDP vb69 ROMA) (reachCDP vb70 ROMA) 
		(reachCDP vb71 ROMA) (reachCDP vb72 ROMA) (reachCDP vb73 ROMA) (reachCDP vb74 ROMA) (reachCDP vb75 ROMA) 
		(reachCDP vb76 ROMA) (reachCDP vb77 ROMA) (reachCDP vb78 ROMA) (reachCDP vb79 ROMA) (reachCDP vb80 ROMA) 
		(reachCDP vb81 ROMA) (reachCDP vb82 ROMA) (reachCDP vb83 ROMA) (reachCDP vb84 ROMA) (reachCDP vb85 ROMA) 
		(reachCDP vb86 ROMA) (reachCDP vb87 ROMA) (reachCDP vb88 ROMA) (reachCDP vb89 ROMA) (reachCDP vb90 ROMA) 
		(reachCDP vb91 ROMA) (reachCDP vb92 ROMA) (reachCDP vb93 ROMA) (reachCDP vb94 ROMA) (reachCDP vb95 ROMA) 
		(reachCDP vb96 ROMA) (reachCDP vb97 ROMA) (reachCDP vb98 ROMA) (reachCDP vb99 ROMA) (reachCDP vb100 ROMA) 
		(reachCDP vb101 ROMA) (reachCDP vb102 ROMA) (reachCDP vb103 ROMA) (reachCDP vb104 ROMA) (reachCDP vb105 ROMA) 
		(reachCDP vb106 ROMA) (reachCDP vb107 ROMA) (reachCDP vb108 ROMA) (reachCDP vb109 ROMA) (reachCDP vb110 ROMA) 
		(reachCDP vb111 ROMA) (reachCDP vb112 ROMA) (reachCDP vb113 ROMA) (reachCDP vb114 ROMA) (reachCDP vb115 ROMA) 
		(reachCDP vb116 ROMA) (reachCDP vb117 ROMA) (reachCDP vb118 ROMA) (reachCDP vb119 ROMA) (reachCDP vb120 ROMA) 
		(reachCDP vb121 ROMA) (reachCDP vb122 ROMA) (reachCDP vb123 ROMA) (reachCDP vb124 ROMA) (reachCDP vb125 ROMA) 
		(reachCDP vb126 ROMA) (reachCDP vb127 ROMA) (reachCDP vb128 ROMA) (reachCDP vb129 ROMA) (reachCDP vb130 ROMA) 
		(reachCDP vb131 ROMA) (reachCDP vb132 ROMA) (reachCDP vb133 ROMA) (reachCDP vb134 ROMA) (reachCDP vb135 ROMA) 
		(reachCDP vb136 ROMA) (reachCDP vb137 ROMA) (reachCDP vb138 ROMA) (reachCDP vb139 ROMA) (reachCDP vb140 ROMA) 
		(reachCDP vb141 ROMA) (reachCDP vb142 ROMA) (reachCDP vb143 ROMA) (reachCDP vb144 ROMA) (reachCDP vb145 ROMA) 
		(reachCDP vb146 ROMA) (reachCDP vb147 ROMA) (reachCDP vb148 ROMA) (reachCDP vb149 ROMA) (reachCDP vb150 ROMA) 
		(reachCDP vb151 ROMA) (reachCDP vb152 ROMA) (reachCDP vb153 ROMA) (reachCDP vb154 ROMA) (reachCDP vb155 ROMA) 
		(reachCDP vb156 ROMA) (reachCDP vb157 ROMA) (reachCDP vb158 ROMA) (reachCDP vb159 ROMA) (reachCDP vb160 ROMA) 
		(reachCDP vb161 ROMA) (reachCDP vb162 ROMA) (reachCDP vb163 ROMA) (reachCDP vb164 ROMA) (reachCDP vb165 ROMA) 
		(reachCDP vb166 ROMA) (reachCDP vb167 ROMA) (reachCDP vb168 ROMA) (reachCDP vb169 ROMA) (reachCDP vb170 ROMA) 
		(reachCDP vb171 ROMA) (reachCDP vb172 ROMA) (reachCDP vb173 ROMA) (reachCDP vb174 ROMA) (reachCDP vb175 ROMA) 
		(reachCDP vb176 ROMA) (reachCDP vb177 ROMA) (reachCDP vb178 ROMA) (reachCDP vb179 ROMA) (reachCDP vb180 ROMA) 
		(reachCDP vb181 ROMA) (reachCDP vb182 ROMA) (reachCDP vb183 ROMA) (reachCDP vb184 ROMA) (reachCDP vb185 ROMA) 
		(reachCDP vb186 ROMA) (reachCDP vb187 ROMA) (reachCDP vb188 ROMA) (reachCDP vb189 ROMA) (reachCDP vb190 ROMA) 
		(reachCDP vb191 ROMA) (reachCDP vb192 ROMA) (reachCDP vb193 ROMA) (reachCDP vb194 ROMA) (reachCDP vb195 ROMA) 
		(reachCDP vb196 ROMA) (reachCDP vb197 ROMA) (reachCDP vb198 ROMA) (reachCDP vb199 ROMA) (reachCDP vb200 ROMA) 
		(reachCDP vb201 ROMA) (reachCDP vb202 ROMA) (reachCDP vb203 ROMA) (reachCDP vb204 ROMA) (reachCDP vb205 ROMA) 
		(reachCDP vb206 ROMA) (reachCDP vb207 ROMA) (reachCDP vb208 ROMA) (reachCDP vb209 ROMA) (reachCDP vb210 ROMA) 
		(reachCDP vb211 ROMA) (reachCDP vb212 ROMA) (reachCDP vb213 ROMA) (reachCDP vb214 ROMA) (reachCDP vb215 ROMA) 
		(reachCDP vb216 ROMA) (reachCDP vb217 ROMA) (reachCDP vb218 ROMA) (reachCDP vb219 ROMA) (reachCDP vb220 ROMA) 
		(reachCDP vb221 ROMA) (reachCDP vb222 ROMA) (reachCDP vb223 ROMA) (reachCDP vb224 ROMA) (reachCDP vb225 ROMA) 
		(reachCDP vb226 ROMA) (reachCDP vb227 ROMA) (reachCDP vb228 ROMA) (reachCDP vb229 ROMA) (reachCDP vb230 ROMA) 
		(reachCDP vb231 ROMA) (reachCDP vb232 ROMA) (reachCDP vb233 ROMA) (reachCDP vb234 ROMA) (reachCDP vb235 ROMA) 
		(reachCDP vb236 ROMA) (reachCDP vb237 ROMA) (reachCDP vb238 ROMA) (reachCDP vb239 ROMA) (reachCDP vb240 ROMA) 
		(reachCDP vb241 ROMA) (reachCDP vb242 ROMA) (reachCDP vb243 ROMA) (reachCDP vb244 ROMA) (reachCDP vb245 ROMA) 
		(reachCDP vb246 ROMA) (reachCDP vb247 ROMA) (reachCDP vb248 ROMA) (reachCDP vb249 ROMA) (reachCDP vb250 ROMA) 
		(reachCDP vb251 ROMA) (reachCDP vb252 ROMA) (reachCDP vb253 ROMA) (reachCDP vb254 ROMA) (reachCDP vb255 ROMA) 
		(reachCDP vb256 ROMA) (reachCDP vb257 ROMA) (reachCDP vb258 ROMA) (reachCDP vb259 ROMA) (reachCDP vb260 ROMA) 
		(reachCDP vb261 ROMA) (reachCDP vb262 ROMA) (reachCDP vb263 ROMA) (reachCDP vb264 ROMA) (reachCDP vb265 ROMA) 
		(reachCDP vb266 ROMA) (reachCDP vb267 ROMA) (reachCDP vb268 ROMA) (reachCDP vb269 ROMA) (reachCDP vb270 ROMA) 
		(reachCDP vb271 ROMA) (reachCDP vb272 ROMA) (reachCDP vb273 ROMA) (reachCDP vb274 ROMA) (reachCDP vb275 ROMA) 
		(reachCDP vb276 ROMA) (reachCDP vb277 ROMA) (reachCDP vb278 ROMA) (reachCDP vb279 ROMA) (reachCDP vb280 ROMA) 
		(reachCDP vb281 ROMA) (reachCDP vb282 ROMA) (reachCDP vb283 ROMA) (reachCDP vb284 ROMA) (reachCDP vb285 ROMA) 
		(reachCDP vb286 ROMA) (reachCDP vb287 ROMA) (reachCDP vb288 ROMA) (reachCDP vb289 ROMA) (reachCDP vb290 ROMA) 
		(reachCDP vb291 ROMA) (reachCDP vb292 ROMA) (reachCDP vb293 ROMA) (reachCDP vb294 ROMA) (reachCDP vb295 ROMA) 
		(reachCDP vb296 ROMA) (reachCDP vb297 ROMA) (reachCDP vb298 ROMA) (reachCDP vb299 ROMA) (reachCDP vb300 ROMA) 
		(reachCDP vb301 ROMA) (reachCDP vb302 ROMA) (reachCDP vb303 ROMA) (reachCDP vb304 ROMA) (reachCDP vb305 ROMA) 
		(reachCDP vb306 ROMA) (reachCDP vb307 ROMA) (reachCDP vb308 ROMA) (reachCDP vb309 ROMA) (reachCDP vb310 ROMA) 
		(reachCDP vb311 ROMA) (reachCDP vb312 ROMA) (reachCDP vb313 ROMA) (reachCDP vb314 ROMA) (reachCDP vb315 ROMA) 
		(reachCDP vb316 ROMA) (reachCDP vb317 ROMA) (reachCDP vb318 ROMA) (reachCDP vb319 ROMA) (reachCDP vb320 ROMA) 
		(reachCDP vb321 ROMA) (reachCDP vb322 ROMA) (reachCDP vb323 ROMA) (reachCDP vb324 ROMA) (reachCDP vb325 ROMA) 
		(reachCDP vb326 ROMA) (reachCDP vb327 ROMA) (reachCDP vb328 ROMA) (reachCDP vb329 ROMA) (reachCDP vb330 ROMA) 
		(reachCDP vb331 ROMA) (reachCDP vb332 ROMA) (reachCDP vb333 ROMA) (reachCDP vb334 ROMA) (reachCDP vb335 ROMA) 
		(reachCDP vb336 ROMA) (reachCDP vb337 ROMA) (reachCDP vb338 ROMA) (reachCDP vb339 ROMA) (reachCDP vb340 ROMA) 
		(reachCDP vb341 ROMA) (reachCDP vb342 ROMA) (reachCDP vb343 ROMA) (reachCDP vb344 ROMA) (reachCDP vb345 ROMA) 
		(reachCDP vb346 ROMA) (reachCDP vb347 ROMA) (reachCDP vb348 ROMA) (reachCDP vb349 ROMA) (reachCDP vb350 ROMA) 
		(reachCDP vb351 ROMA) (reachCDP vb352 ROMA) (reachCDP vb353 ROMA) (reachCDP vb354 ROMA) (reachCDP vb355 ROMA) 
		(reachCDP vb356 ROMA) (reachCDP vb357 ROMA) (reachCDP vb358 ROMA) (reachCDP vb359 ROMA) (reachCDP vb360 ROMA) 
		(reachCDP vb361 ROMA) (reachCDP vb362 ROMA) (reachCDP vb363 ROMA) (reachCDP vb364 ROMA) (reachCDP vb365 ROMA) 
		(reachCDP vb366 ROMA) (reachCDP vb367 ROMA) (reachCDP vb368 ROMA) (reachCDP vb369 ROMA) (reachCDP vb370 ROMA) 
		(reachCDP vb371 ROMA) (reachCDP vb372 ROMA) (reachCDP vb373 ROMA) (reachCDP vb374 ROMA) (reachCDP vb375 ROMA) 
		(reachCDP vb376 ROMA) (reachCDP vb377 ROMA) (reachCDP vb378 ROMA) (reachCDP vb379 ROMA) (reachCDP vb380 ROMA) 
		(reachCDP vb381 ROMA) (reachCDP vb382 ROMA) (reachCDP vb383 ROMA) (reachCDP vb384 ROMA) (reachCDP vb385 ROMA) 
		(reachCDP vb386 ROMA) (reachCDP vb387 ROMA) (reachCDP vb388 ROMA) (reachCDP vb389 ROMA) (reachCDP vb390 ROMA) 
		(reachCDP vb391 ROMA) (reachCDP vb392 ROMA) (reachCDP vb393 ROMA) (reachCDP vb394 ROMA) (reachCDP vb395 ROMA) 
		(reachCDP vb396 ROMA) (reachCDP vb397 ROMA) (reachCDP vb398 ROMA) (reachCDP vb399 ROMA) (reachCDP vb400 ROMA) 
		(reachCDP vb401 ROMA) (reachCDP vb402 ROMA) (reachCDP vb403 ROMA) (reachCDP vb404 ROMA) (reachCDP vb405 ROMA) 
		(reachCDP vb406 ROMA) (reachCDP vb407 ROMA) (reachCDP vb408 ROMA) (reachCDP vb409 ROMA) (reachCDP vb410 ROMA) 
		(reachCDP vb411 ROMA) (reachCDP vb412 ROMA) 
	)


	; The goal state describe what we desire to achieve
	(:goal (and
		(hasVaccineBox cassino)
		(hasVaccineBox ceccano)
		(hasVaccineBox alatri)
		(hasVaccineBox anagni)
		(hasVaccineBox aprilia)
		(hasVaccineBox terracina)
		(hasVaccineBox fondi)
		(hasVaccineBox sabaudia)
		(hasVaccineBox amatrice)
		(hasVaccineBox leonessa)
		(hasVaccineBox borbona)
		(hasVaccineBox spedino)
		(hasVaccineBox monterotondo)
		(hasVaccineBox frascati)
		(hasVaccineBox velletri)
		(hasVaccineBox pomezia)
		(hasVaccineBox anzio)
		(hasVaccineBox acquapendente)
		(hasVaccineBox tarquinia)
		(hasVaccineBox orte)
		(hasVaccineBox bagnoregio)
		(hasVaccineBox spoleto)
		(hasVaccineBox gubbio)
		(hasVaccineBox foligno)
		(hasVaccineBox amelia)
		(hasVaccineBox narni)
		(hasVaccineBox montecastrilli)
		(hasVaccineBox lameziaterme)
		(hasVaccineBox botricello)
		(hasVaccineBox girifalco)
		(hasVaccineBox sersale)
		(hasVaccineBox dipignano)
		(hasVaccineBox amantea)
		(hasVaccineBox lorica)
		(hasVaccineBox verzino)
		(hasVaccineBox crucoli)
		(hasVaccineBox salica)
		(hasVaccineBox gioiatauro)
		(hasVaccineBox polistena)
		(hasVaccineBox bovalino)
		(hasVaccineBox tropea)
		(hasVaccineBox mileto)
		(hasVaccineBox nicotera)
		(hasVaccineBox pizzo)
		(hasVaccineBox tarsia)
		(hasVaccineBox rossano)
		(hasVaccineBox sibari)
		(hasVaccineBox saracena)
		(hasVaccineBox andretta)
		(hasVaccineBox taurasi)
		(hasVaccineBox solofra)
		(hasVaccineBox telese)
		(hasVaccineBox morcone)
		(hasVaccineBox circello)
		(hasVaccineBox pietralcina)
		(hasVaccineBox aversa)
		(hasVaccineBox mondragone)
		(hasVaccineBox teano)
		(hasVaccineBox pozzuoli)
		(hasVaccineBox pompei)
		(hasVaccineBox afragola)
		(hasVaccineBox sorrento)
		(hasVaccineBox battipaglia)
		(hasVaccineBox polla)
		(hasVaccineBox palinuro)
		(hasVaccineBox metaponto)
		(hasVaccineBox irsina)
		(hasVaccineBox stigliano)
		(hasVaccineBox tursi)
		(hasVaccineBox ferrandina)
		(hasVaccineBox venosa)
		(hasVaccineBox lagonegro)
		(hasVaccineBox senise)
		(hasVaccineBox francavilla)
		(hasVaccineBox guardiagrele)
		(hasVaccineBox lanciano)
		(hasVaccineBox vasto)
		(hasVaccineBox avezzano)
		(hasVaccineBox pescina)
		(hasVaccineBox sulmona)
		(hasVaccineBox pizzoli)
		(hasVaccineBox montesilvano)
		(hasVaccineBox scafa)
		(hasVaccineBox popoli)
		(hasVaccineBox roseto)
		(hasVaccineBox giulianova)
		(hasVaccineBox ceppo)
		(hasVaccineBox crognaletto)
		(hasVaccineBox nereto)
		(hasVaccineBox boiano)
		(hasVaccineBox sepino)
		(hasVaccineBox riccia)
		(hasVaccineBox colletorto)
		(hasVaccineBox fossalto)
		(hasVaccineBox capracotta)
		(hasVaccineBox agnone)
		(hasVaccineBox venafro)
		(hasVaccineBox palata)
		(hasVaccineBox larino)
		(hasVaccineBox petaccio)
		(hasVaccineBox portocannone)
		(hasVaccineBox castelmauro)
		(hasVaccineBox molfetta)
		(hasVaccineBox altamura)
		(hasVaccineBox monopoli)
		(hasVaccineBox andria)
		(hasVaccineBox trani)
		(hasVaccineBox bisceglie)
		(hasVaccineBox trinitapoli)
		(hasVaccineBox fasano)
		(hasVaccineBox ostuni)
		(hasVaccineBox mesegne)
		(hasVaccineBox manfredonia)
		(hasVaccineBox cerignola)
		(hasVaccineBox lucera)
		(hasVaccineBox otranto)
		(hasVaccineBox gallipoli)
		(hasVaccineBox nardo)
		(hasVaccineBox maglie)
		(hasVaccineBox castellaneta)
		(hasVaccineBox massafra)
		(hasVaccineBox martinafranca)
		(hasVaccineBox grottaglie)
		(hasVaccineBox manduria)
		(hasVaccineBox canicatti)
		(hasVaccineBox licata)
		(hasVaccineBox sciacca)
		(hasVaccineBox mussomeli)
		(hasVaccineBox gela)
		(hasVaccineBox niscemi)
		(hasVaccineBox acireale)
		(hasVaccineBox paterno)
		(hasVaccineBox bronte)
		(hasVaccineBox caltagirone)
		(hasVaccineBox giarre)
		(hasVaccineBox nicosia)
		(hasVaccineBox barrafranca)
		(hasVaccineBox troina)
		(hasVaccineBox milazzo)
		(hasVaccineBox patti)
		(hasVaccineBox lipari)
		(hasVaccineBox corleone)
		(hasVaccineBox bagheria)
		(hasVaccineBox gangi)
		(hasVaccineBox cefalu)
		(hasVaccineBox modica)
		(hasVaccineBox vittoria)
		(hasVaccineBox pozzallo)
		(hasVaccineBox noto)
		(hasVaccineBox avola)
		(hasVaccineBox lentini)
		(hasVaccineBox augusta)
		(hasVaccineBox marsala)
		(hasVaccineBox alcamo)
		(hasVaccineBox sanvitolocapo)
		(hasVaccineBox mazaradelvallo)
		(hasVaccineBox chatillon)
		(hasVaccineBox verres)
		(hasVaccineBox courmayeur)
		(hasVaccineBox tortona)
		(hasVaccineBox noviligure)
		(hasVaccineBox acquiterme)
		(hasVaccineBox casalemonferrato)
		(hasVaccineBox ovada)
		(hasVaccineBox moncalvo)
		(hasVaccineBox cocconato)
		(hasVaccineBox sandamianodasti)
		(hasVaccineBox canelli)
		(hasVaccineBox cavaglia)
		(hasVaccineBox cossato)
		(hasVaccineBox oropa)
		(hasVaccineBox piedicavallo)
		(hasVaccineBox mondovi)
		(hasVaccineBox bra)
		(hasVaccineBox alba)
		(hasVaccineBox gattinara)
		(hasVaccineBox borgomanero)
		(hasVaccineBox arona)
		(hasVaccineBox trecate)
		(hasVaccineBox ivrea)
		(hasVaccineBox pinerolo)
		(hasVaccineBox susa)
		(hasVaccineBox oulx)
		(hasVaccineBox domodossola)
		(hasVaccineBox verbania)
		(hasVaccineBox valdo)
		(hasVaccineBox saluggia)
		(hasVaccineBox stroppiana)
		(hasVaccineBox carisio)
		(hasVaccineBox cortona)
		(hasVaccineBox subbiano)
		(hasVaccineBox bibbiena)
		(hasVaccineBox empoli)
		(hasVaccineBox firenzuola)
		(hasVaccineBox certaldo)
		(hasVaccineBox barberino)
		(hasVaccineBox campibisenzio)
		(hasVaccineBox orbetello)
		(hasVaccineBox follonica)
		(hasVaccineBox roccastrada)
		(hasVaccineBox saturnia)
		(hasVaccineBox pitigliano)
		(hasVaccineBox piombino)
		(hasVaccineBox cecina)
		(hasVaccineBox rosignano)
		(hasVaccineBox viareggio)
		(hasVaccineBox pietrasanta)
		(hasVaccineBox barga)
		(hasVaccineBox pontedera)
		(hasVaccineBox volterra)
		(hasVaccineBox pomarance)
		(hasVaccineBox montecatini)
		(hasVaccineBox quarrata)
		(hasVaccineBox cutigliano)
		(hasVaccineBox abetone)
		(hasVaccineBox cantagallo)
		(hasVaccineBox vaiano)
		(hasVaccineBox vernio)
		(hasVaccineBox pienza)
		(hasVaccineBox montalcino)
		(hasVaccineBox montepulciano)
		(hasVaccineBox poggibonsi)
		(hasVaccineBox senigallia)
		(hasVaccineBox jesi)
		(hasVaccineBox fabriano)
		(hasVaccineBox numana)
		(hasVaccineBox piceno)
		(hasVaccineBox sanbenedetto)
		(hasVaccineBox grottammare)
		(hasVaccineBox acquasantaterme)
		(hasVaccineBox portosangiorgio)
		(hasVaccineBox montegranaro)
		(hasVaccineBox servigliano)
		(hasVaccineBox montefalcone)
		(hasVaccineBox grottazzolina)
		(hasVaccineBox civitanovamarche)
		(hasVaccineBox camerino)
		(hasVaccineBox tolentino)
		(hasVaccineBox fano)
		(hasVaccineBox marotta)
		(hasVaccineBox calcinelli)
		(hasVaccineBox vallefoglia)
		(hasVaccineBox pergola)
		(hasVaccineBox acqualagna)
		(hasVaccineBox apecchio)
		(hasVaccineBox rapallo)
		(hasVaccineBox chiavari)
		(hasVaccineBox sestrilevante)
		(hasVaccineBox taggia)
		(hasVaccineBox borgomaro)
		(hasVaccineBox pontedassio)
		(hasVaccineBox lerici)
		(hasVaccineBox levanto)
		(hasVaccineBox riomaggiore)
		(hasVaccineBox manarola)
		(hasVaccineBox brugnato)
		(hasVaccineBox albenga)
		(hasVaccineBox finaleligure)
		(hasVaccineBox varazze)
		(hasVaccineBox carrara)
		(hasVaccineBox pontremoli)
		(hasVaccineBox fivizzano)
		(hasVaccineBox bordighera)
		(hasVaccineBox ventimiglia)
		(hasVaccineBox pigna)
		(hasVaccineBox chioggia)
		(hasVaccineBox mestre)
		(hasVaccineBox sandona)
		(hasVaccineBox portogruaro)
		(hasVaccineBox conegliano)
		(hasVaccineBox montebelluna)
		(hasVaccineBox vittorioveneto)
		(hasVaccineBox oderzo)
		(hasVaccineBox castelfranco)
		(hasVaccineBox adria)
		(hasVaccineBox rosolina)
		(hasVaccineBox trecenta)
		(hasVaccineBox schio)
		(hasVaccineBox thiene)
		(hasVaccineBox bassano)
		(hasVaccineBox asiago)
		(hasVaccineBox nogara)
		(hasVaccineBox legnago)
		(hasVaccineBox malcesine)
		(hasVaccineBox peschieradelgarda)
		(hasVaccineBox este)
		(hasVaccineBox monselice)
		(hasVaccineBox camposampiero)
		(hasVaccineBox cittadella)
		(hasVaccineBox muggia)
		(hasVaccineBox opicina)
		(hasVaccineBox duino)
		(hasVaccineBox monfalcone)
		(hasVaccineBox cormons)
		(hasVaccineBox villesse)
		(hasVaccineBox palmanova)
		(hasVaccineBox ovaro)
		(hasVaccineBox gemona)
		(hasVaccineBox codroipo)
		(hasVaccineBox aviano)
		(hasVaccineBox maniago)
		(hasVaccineBox spilimbergo)
		(hasVaccineBox feltre)
		(hasVaccineBox agordo)
		(hasVaccineBox cortina)
		(hasVaccineBox auronzo)
		(hasVaccineBox rovereto)
		(hasVaccineBox borgovalsugana)
		(hasVaccineBox cles)
		(hasVaccineBox tione)
		(hasVaccineBox merano)
		(hasVaccineBox brunico)
		(hasVaccineBox bressanone)
		(hasVaccineBox vipiteno)
		(hasVaccineBox sesto)
		(hasVaccineBox treviglio)
		(hasVaccineBox clusone)
		(hasVaccineBox nembro)
		(hasVaccineBox desenzano)
		(hasVaccineBox iseo)
		(hasVaccineBox salo)
		(hasVaccineBox edolo)
		(hasVaccineBox esine)
		(hasVaccineBox cantù)
		(hasVaccineBox erba)
		(hasVaccineBox cernobbio)
		(hasVaccineBox crema)
		(hasVaccineBox casalmaggiore)
		(hasVaccineBox soresina)
		(hasVaccineBox merate)
		(hasVaccineBox barzio)
		(hasVaccineBox calolziocorte)
		(hasVaccineBox codogno)
		(hasVaccineBox casalpusterlengo)
		(hasVaccineBox somaglia)
		(hasVaccineBox poggiorusco)
		(hasVaccineBox suzzara)
		(hasVaccineBox asola)
		(hasVaccineBox rodigo)
		(hasVaccineBox abbiategrasso)
		(hasVaccineBox magenta)
		(hasVaccineBox segrate)
		(hasVaccineBox rho)
		(hasVaccineBox sestosangiovanni)
		(hasVaccineBox seregno)
		(hasVaccineBox lissone)
		(hasVaccineBox busnago)
		(hasVaccineBox vimercate)
		(hasVaccineBox vigevano)
		(hasVaccineBox voghera)
		(hasVaccineBox varzi)
		(hasVaccineBox mortara)
		(hasVaccineBox bormio)
		(hasVaccineBox livigno)
		(hasVaccineBox morbegno)
		(hasVaccineBox campodolcino)
		(hasVaccineBox bustoarsizio)
		(hasVaccineBox gallarate)
		(hasVaccineBox luino)
		(hasVaccineBox imola)
		(hasVaccineBox vergato)
		(hasVaccineBox castiglionedeipepoli)
		(hasVaccineBox copparo)
		(hasVaccineBox codigoro)
		(hasVaccineBox comacchio)
		(hasVaccineBox argenta)
		(hasVaccineBox bondeno)
		(hasVaccineBox cesena)
		(hasVaccineBox predappio)
		(hasVaccineBox forlimpopoli)
		(hasVaccineBox cesenatico)
		(hasVaccineBox carpi)
		(hasVaccineBox pavullo)
		(hasVaccineBox sassuolo)
		(hasVaccineBox fidenza)
		(hasVaccineBox langhirano)
		(hasVaccineBox volpara)
		(hasVaccineBox bobbio)
		(hasVaccineBox pontenure)
		(hasVaccineBox fiorenzuola)
		(hasVaccineBox lugo)
		(hasVaccineBox faenza)
		(hasVaccineBox brisighella)
		(hasVaccineBox cervia)
		(hasVaccineBox correggio)
		(hasVaccineBox bibbiano)
		(hasVaccineBox busana)
		(hasVaccineBox riccione)
		(hasVaccineBox cattolica)
		(hasVaccineBox sanmarino)
		(hasVaccineBox ismolas)
		(hasVaccineBox siliqua)
		(hasVaccineBox sestu)
		(hasVaccineBox macomer)
		(hasVaccineBox fonni)
		(hasVaccineBox bitti)
		(hasVaccineBox cardedu)
		(hasVaccineBox posada)
		(hasVaccineBox cabras)
		(hasVaccineBox terralba)
		(hasVaccineBox laconi)
		(hasVaccineBox bosa)
		(hasVaccineBox alghero)
		(hasVaccineBox stintino)
		(hasVaccineBox castelsardo)
		(hasVaccineBox portocervo)
		(hasVaccineBox berchidda)
		(hasVaccineBox arzachena)
		(hasVaccineBox zinnigas)
		(hasVaccineBox portoscuso)
		(hasVaccineBox buggerru)
		(hasVaccineBox gonnosfanadiga)
	))
)