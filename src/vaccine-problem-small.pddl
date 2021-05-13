; SMALL problem description
; Describe one scenario within the domain constraints

(define (problem small-vaccine-distribution)
  (:domain vaccine-distribution)

  ; Objects are candidates to replace free variables
  (:objects
    ; central point
    ROMA
    ; regional points
    roma1 napoli cagliari
    ; provincial point
    latina frosinone
    caserta avellino salerno
    oristano nuoro
    ; health districts
    aprilia terracina fondi ceccano cassino
    mondragone aversa taurasi andretta solofra battipaglia palinuro
    cabras macomer fonni
    ; planes
    plane1
    ; trucks
    truck1 truck2 truck3
    ; drones
    drone1 drone2 drone3
    ; vaccine boxes
    vb1 vb2 vb3 vb4 vb5 vb6 vb7 vb8 vb9 vb10 vb11 vb12 vb13 vb14 vb15
  )

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    ; TOPOGRAPHY
    ; central point
    (location ROMA)
    (isCDP ROMA)
    ; regional points
    (location roma1) (isRDC roma1)
    (location napoli) (isRDC napoli)
    (location cagliari) (isRDC cagliari)
    ; provincial point
    (location oristano) (location nuoro)
    (isPDC oristano) (isPDC nuoro)
    (location latina) (location frosinone)
    (isPDC latina) (isPDC frosinone)
    (location caserta) (location avellino) (location salerno)
    (isPDC caserta) (isPDC avellino) (isPDC salerno)
    ; health districts
    (location aprilia) (location terracina) (location fondi) (location ceccano) (location cassino)
    (isHDDC aprilia) (isHDDC terracina) (isHDDC fondi) (isHDDC ceccano) (isHDDC cassino)
    (location mondragone) (location aversa) (location taurasi) (location andretta) (location solofra) (location battipaglia) (location palinuro)
    (isHDDC mondragone) (isHDDC aversa) (isHDDC taurasi) (isHDDC andretta) (isHDDC solofra) (isHDDC battipaglia) (isHDDC palinuro)
    (location cabras) (location macomer) (location fonni)
    (isHDDC cabras) (isHDDC macomer) (isHDDC fonni)

    ; LINKS
    ; central to region
    (link roma1 ROMA) (link napoli ROMA) (link cagliari ROMA)
    ; region to province
    (link latina roma1) (link frosinone roma1)
    (link caserta napoli) (link avellino napoli) (link salerno napoli)
    (link oristano cagliari) (link nuoro cagliari)
    ; province to hd
    (link aprilia latina) (link terracina latina) (link fondi latina)
    (link ceccano frosinone) (link cassino frosinone)
    (link mondragone caserta) (link aversa caserta)
    (link taurasi avellino) (link andretta avellino) (link solofra avellino)
    (link battipaglia salerno) (link palinuro salerno)
    (link cabras oristano)
    (link macomer nuoro) (link fonni nuoro)

    ; CONNECTIONS
    ; from central point to regional points
    (connected ROMA roma1) (connected roma1 ROMA)
    ; from regional points to provincial points
    (connected roma1 latina) (connected latina roma1)
    (connected roma1 frosinone) (connected frosinone roma1)
    (connected napoli caserta) (connected caserta napoli)
    (connected napoli avellino) (connected avellino napoli)
    (connected napoli salerno) (connected salerno napoli)
    (connected cagliari oristano) (connected oristano cagliari)
    ; from provincial points to health districts
    (connected latina aprilia) (connected aprilia latina)
    (connected latina terracina) (connected terracina latina)
    (connected latina fondi) (connected fondi latina)
    (connected frosinone ceccano) (connected ceccano frosinone)
    (connected frosinone cassino) (connected cassino frosinone)
    (connected caserta mondragone) (connected mondragone caserta)
    (connected caserta aversa) (connected aversa caserta)
    (connected avellino taurasi) (connected taurasi avellino)
    (connected avellino andretta) (connected andretta avellino)
    (connected avellino solofra) (connected solofra avellino)
    (connected salerno battipaglia) (connected battipaglia salerno)
    (connected salerno palinuro) (connected palinuro salerno)
    (connected oristano cabras) (connected cabras oristano)
    (connected nuoro macomer) (connected macomer nuoro)
    (connected nuoro fonni) (connected fonni nuoro)
    ; regional connections
    (connected roma1 napoli) (connected napoli roma1)
    ; provincial connections
    (connected frosinone latina) (connected latina frosinone)
    (connected caserta avellino) (connected avellino caserta)
    (connected oristano nuoro) (connected nuoro oristano)
    ; more
    (connected frosinone caserta) (connected caserta frosinone)

    ; TRANPORT MEANS
    ; airports
    (hasAirport ROMA) (hasAirport cagliari)
    ; planes
    (transport plane1)
    (plane plane1) (at plane1 ROMA) (= (capacity plane1) 0)
    ; trucks
    (transport truck1) (transport truck2) (transport truck3)
    (truck truck1) (at truck1 ROMA) (= (capacity truck1) 0)
    (truck truck2) (at truck2 napoli) (= (capacity truck2) 0)
    (truck truck3) (at truck3 cagliari) (= (capacity truck3) 0)
    ; drones
    (transport drone1) (transport drone2) (transport drone3)
    (drone drone1) (at drone1 latina)
    (drone drone2) (at drone2 caserta)
    (drone drone3) (at drone3 nuoro)

    ; VACCINE BOXES
    ; vaccine boxes
    (vaccineBox vb1) (vaccineBox vb2) (vaccineBox vb3)
    (vaccineBox vb4) (vaccineBox vb5) (vaccineBox vb6)
    (vaccineBox vb7) (vaccineBox vb8) (vaccineBox vb9)
    (vaccineBox vb10) (vaccineBox vb11) (vaccineBox vb12)
    (vaccineBox vb13) (vaccineBox vb14) (vaccineBox vb15)
    ; where
    (at vb1 ROMA) (at vb2 ROMA) (at vb3 ROMA) (at vb4 ROMA) (at vb5 ROMA)
    (at vb6 ROMA) (at vb7 ROMA) (at vb8 ROMA) (at vb9 ROMA) (at vb10 ROMA)
    (at vb11 ROMA) (at vb12 ROMA) (at vb13 ROMA) (at vb14 ROMA) (at vb15 ROMA)
    ; constrains
    (reachCDP vb1 ROMA) (reachCDP vb2 ROMA) (reachCDP vb3 ROMA)
    (reachCDP vb4 ROMA) (reachCDP vb5 ROMA) (reachCDP vb6 ROMA)
    (reachCDP vb7 ROMA) (reachCDP vb8 ROMA) (reachCDP vb9 ROMA)
    (reachCDP vb10 ROMA) (reachCDP vb11 ROMA) (reachCDP vb12 ROMA)
    (reachCDP vb13 ROMA) (reachCDP vb14 ROMA) (reachCDP vb15 ROMA)

    )

  ; The goal state describe what we desire to achieve
  (:goal (and
    (hasVaccineBox aprilia)
    (hasVaccineBox terracina)
    (hasVaccineBox fondi)
    (hasVaccineBox ceccano)
    (hasVaccineBox cassino)
    (hasVaccineBox mondragone)
    (hasVaccineBox aversa)
    (hasVaccineBox taurasi)
    (hasVaccineBox andretta)
    (hasVaccineBox solofra)
    (hasVaccineBox battipaglia)
    (hasVaccineBox palinuro)
    (hasVaccineBox macomer)
    (hasVaccineBox fonni)
    (hasVaccineBox cabras)
  ))

)