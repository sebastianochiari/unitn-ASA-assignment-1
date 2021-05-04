; SMALL problem description
; Describe one scenario within the domain constraints

(define (problem small-vaccine-distribution)
  (:domain vaccine-distribution)

  ; Objects are candidates to replace free variables
  (:objects
    ; central point
    cp
    ; regional points
    rp1 rp2 rp3
    ; provincial point
    pp1 pp2 pp3 pp4 pp5
    ; health districts
    hd1 hd2 hd3 hd4 hd5 hd6 hd7 hd8 hd9 hd10
    ; planes
    plane1
    ; trucks
    truck1 truck2 truck3
    ; drones
    drone1 drone2 drone3
    ; vaccine boxes
    vb1 vb2 vb3 vb4 vb5 vb6 vb7 vb8 vb9 vb10
  )

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    ; TOPOGRAPHY
    ; central point
    (location cp)
    (isCDP cp)
    ; regional points
    (location rp1) (location rp2) (location rp3)
    (isRDC rp1) (isRDC rp2) (isRDC rp3)
    ; provincial point
    (location pp1) (location pp2) (location pp3) (location pp4) (location pp5)
    (isPDC pp1) (isPDC pp2) (isPDC pp3) (isPDC pp4) (isPDC pp5)
    ; health districts
    (location hd1) (location hd2) (location hd3) (location hd4)
    (location hd5) (location hd6) (location hd7) (location hd8)
    (location hd9) (location hd10)
    (isHDDC hd1) (isHDDC hd2) (isHDDC hd3) (isHDDC hd4)
    (isHDDC hd5) (isHDDC hd6) (isHDDC hd7) (isHDDC hd8)
    (isHDDC hd9) (isHDDC hd10)

    ; LINKS
    (link rp1 cp) (link rp2 cp) (link rp3 cp)
    (link pp1 rp1) (link pp2 rp1)
    (link pp3 rp2) (link pp4 rp2)
    (link pp5 rp3)
    (link hd1 pp1) (link hd2 pp1) (link hd3 pp2)
    (link hd4 pp3)
    (link hd5 pp4) (link hd6 pp4) (link hd7 pp4)
    (link hd8 pp5) (link hd9 pp5) (link hd10 pp5)
    
    ; CONNECTIONS
    ; from central point to regional points
    (connected cp rp2) (connected rp2 cp)
    (connected cp pp5) (connected pp5 cp)
    ; from regional points to provincial points
    (connected rp1 pp1) (connected pp1 rp1)
    (connected rp1 pp2) (connected pp2 rp1)
    (connected rp2 pp3) (connected pp3 rp2)
    (connected rp2 pp4) (connected pp4 rp2)
    (connected rp3 pp5) (connected pp5 rp3)
    ; from provincial points to health districts
    (connected pp1 hd1) (connected hd1 pp1)
    (connected pp1 hd2) (connected hd2 pp1)
    (connected pp2 hd3) (connected hd3 pp2)
    (connected pp3 hd4) (connected hd4 pp3)
    (connected pp4 hd5) (connected hd5 pp4)
    (connected pp4 hd6) (connected hd6 pp4)
    (connected pp4 hd7) (connected hd7 pp4)
    (connected pp5 hd8) (connected hd8 pp5)
    (connected pp5 hd9) (connected hd9 pp5)
    (connected pp5 hd10) (connected hd10 pp5)
    ; inter-regional connections
    (connected rp2 rp3) (connected rp3 rp2)
    ; inter-provincial connections
    (connected pp1 pp2) (connected pp2 pp1)
    (connected pp3 pp4) (connected pp4 pp3)
    ; inter-health districts connections
    (connected hd1 hd2) (connected hd2 hd1)
    (connected hd5 hd6) (connected hd6 hd5)
    (connected hd5 hd7) (connected hd7 hd5)
    (connected hd6 hd7) (connected hd7 hd6)
    (connected hd8 hd9) (connected hd9 hd8)
    (connected hd10 hd9) (connected hd9 hd10)

    ; TRANPORT MEANS
    ; airports
    (hasAirport cp) (hasAirport rp1)
    ; planes
    (transport plane1)
    (plane plane1) (at plane1 cp) (= (capacity plane1) 0)
    ; trucks
    (transport truck1) (transport truck2) (transport truck3)
    (truck truck1) (at truck1 rp1) (= (capacity truck1) 0)
    (truck truck2) (at truck2 rp2) (= (capacity truck2) 0)
    (truck truck3) (at truck3 cp) (= (capacity truck3) 0)
    ; drones
    (transport drone1) (transport drone2) (transport drone3)
    (drone drone1) (at drone1 pp1) (= (capacity drone1) 0)
    (drone drone2) (at drone2 pp4) (= (capacity drone2) 0)
    (drone drone3) (at drone3 pp5) (= (capacity drone3) 0)

    ; VACCINE BOXES
    ; vaccine boxes
    (vaccineBox vb1) (vaccineBox vb2) (vaccineBox vb3)
    (vaccineBox vb4) (vaccineBox vb5) (vaccineBox vb6)
    (vaccineBox vb7) (vaccineBox vb8) (vaccineBox vb9)
    (vaccineBox vb10)
    ; where
    (at vb1 cp) (at vb2 cp) (at vb3 cp) (at vb4 cp) (at vb5 cp)
    (at vb6 cp) (at vb7 cp) (at vb8 cp) (at vb9 cp) (at vb10 cp)
    ; constrains
    (reachCDP vb1 cp) (reachCDP vb2 cp) (reachCDP vb3 cp)
    (reachCDP vb4 cp) (reachCDP vb5 cp) (reachCDP vb6 cp)
    (reachCDP vb7 cp) (reachCDP vb8 cp) (reachCDP vb9 cp)
    (reachCDP vb10 cp)
  )

  ; The goal state describe what we desire to achieve
  (:goal (and
    (hasVaccineBox hd1)
    (hasVaccineBox hd2)
    (hasVaccineBox hd3)
    (hasVaccineBox hd4)
    (hasVaccineBox hd5)
    (hasVaccineBox hd6)
    (hasVaccineBox hd7)
    (hasVaccineBox hd8)
    (hasVaccineBox hd9)
    (hasVaccineBox hd10)
  ))
)