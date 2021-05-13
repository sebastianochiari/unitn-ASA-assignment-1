; MULTI AGENT PROBLEM
; Describe one scenario within the domain constraints
; THIS PROBLEM DOES NOT WORK WITH MAPLAN due to non supported requirements 
(define (problem attempt-vaccine-distribution-ma)
    (:domain vaccine-distribution-ma)
    (:objects
        cp rp1 rp2 rp3 pp1 pp2 pp3 pp4 hd1 hd2 hd3 hd4 - location
        plane1 - plane
        truck1 truck2 - truck
        drone1 drone2 drone3 - drone
        vb1 vb2 vb3 vb4 - vaccineBox
    )
    (:init
        ; TOPOGRAPHY
        (isCDP cp)
        (isRDC rp1) (isRDC rp2) (isRDC rp3)
        (isPDC pp1) (isPDC pp2) (isPDC pp3) (isPDC pp4)
        (isHDDC hd1) (isHDDC hd2) (isHDDC hd3) (isHDDC hd4)
        ; LINKS
        (link rp1 cp) (link rp2 cp) (link rp3 cp)
        (link pp1 rp1) (link pp2 rp2) (link pp3 rp3) (link pp4 rp4)
        (link hd1 pp1) (link hd2 pp2) (link hd3 pp3) (link hd4 pp4)
        ; CONNECTIONS
        (connected cp rp1) (connected rp1 cp)
        (connected rp1 pp2) (connected pp2 rp1)
        (connected rp1 pp1) (connected pp1 rp1)
        (connected pp1 hd1) (connected hd1 pp1)
        (connected pp2 rp2) (connected rp2 pp2)
        (connected pp2 hd2) (connected hd2 pp2)
        (connected rp3 pp3) (connected pp3 rp3)
        (connected rp3 pp4) (connected pp4 rp3)
        (connected pp3 hd3) (connected hd3 pp3)
        (connected pp4 hd4) (connected hd4 pp4)
        ; AIRPORTS
        (hasAirport cp) (hasAirport rp3)
        ; TRANPORT MEANS
        (at plane1 cp)
        (at truck1 cp) (at truck2 rp3)
        (at drone1 pp1) (at drone2 pp2) (at drone3 pp3)
        ; VACCINE BOXES
        (atVB vb1 cp) (atVB vb2 cp) (atVB vb3 cp) (atVB vb4 cp)
        (reachCDP vb1 cp) (reachCDP vb2 cp) (reachCDP vb3 cp) (reachCDP vb4 cp)

    )
    
    (:goal (and
        (hasVaccineBox hd1)
        (hasVaccineBox hd2)
        (hasVaccineBox hd3)
        (hasVaccineBox hd4)
    ))
)