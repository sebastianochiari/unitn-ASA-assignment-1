; DUMMY MULTI AGENT PROBLEM
; Describe one scenario within the domain constraints

(define (problem dummy-vaccine-distribution-ma)
    (:domain vaccine-distribution-ma)
    (:objects
        cp rp1 rp2 pp1 pp2 hd1 hd2 hd3 - location
        p1 t1 t2 d1 d2 - transport
        vb1 vb2 vb3 - vaccineBox
    )
    (:init

        (isCP cp)
        (isRP rp1) (isRP rp2)
        (isPP pp1) (isPP pp2)
        (isHD hd1) (isHD hd2) (isHD hd3)

        (connected cp rp2) (connected rp2 cp)
        (connected rp1 pp1) (connected pp1 rp1)
        (connected rp2 pp2) (connected pp2 rp2)
        (connected pp1 hd1) (connected hd1 pp1)
        (connected pp2 hd2) (connected hd2 pp2)
        (connected pp2 hd3) (connected hd3 pp2)

        (hasAirport cp)
        (hasAirport rp1)
        
        ; TRANPORT MEANS
        (plane p1)
        (truck t1)
        (truck t2)
        (drone d1)
        (drone d2)
        
        ; WHERE
        (at p1 cp)
        (at t1 rp1) (at t2 cp)
        (at d1 pp1) (at d2 hd3)
        (at vb1 cp) (at vb2 cp) (at vb3 cp)
    )
    
    (:goal (and
        (hasVaccineBox hd1)
        (hasVaccineBox hd2)
        (hasVaccineBox hd3)
    ))
)