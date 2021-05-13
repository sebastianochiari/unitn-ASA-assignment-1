; Domain description
; Describe the relations and transitions that can occur
; multi agent national vaccine distribution domain 
; THIS DOMAIN DOES NOT WORK WITH MAPLAN due to non supported requirements 
(define (domain vaccine-distribution-ma) ; Domain name must match problem's
    ; what the planner must support to execute this domain
    (:requirements
        :strips
        :typing
        :negative-preconditions     ; to use not in preconditions
        :equality                   ; to use = in preconditions
        :disjunctive-preconditions  ; to use or in preconditions
        :conditional-effects        ; to use when in effect
        :multi-agent
        :unfactored-privacy
    )

    (:types
        location agent vaccineBox - object
        plane truck drone - agent
    )

    ; Define the relations
    (:predicates
        ; location management
        (isCDP ?location - location)
        (isRDC ?location - location)
        (isPDC ?location - location)
        (isHDDC ?location - location)
        (link ?low - location ?high - location)
        (connected ?l1 - location ?l2 - location)
        (hasVaccineBox ?hddc - location)
        (hasAirport ?l - location)
        ; logistic vaccine box predicates
        (reachCDP ?vb - vaccineBox ?cdp - location)
        (getToRDC ?vb - vaccineBox)
        (reachRDC ?vb - vaccineBox ?rdc - location)
        (getToPDC ?vb - vaccineBox)
        (reachPDC ?vb - vaccineBox ?pdc - location)
        (reachHDDC ?vb - vaccineBox)
        ; transport logistic
        (loaded ?transport - agent)
        (at ?what - agent ?where - location)
        (atVB ?what - vaccineBox ?where - location)
        (in ?vb - vaccineBox ?where - agent)
    )

    (:action flyPlane
        :agent ?plane - plane
        :parameters (?from - location ?to - location)
        :precondition (and
            (at ?plane ?from)
            (hasAirport ?from)
            (hasAirport ?to)
        )
        :effect (and
            (not (at ?plane ?from))
            (at ?plane ?to)
        )
    )

    (:action drive
        :agent ?truck - truck
        :parameters (?from - location ?to - location)
        :precondition (and
            (at ?truck ?from)
            (connected ?from ?to)
            (not (isHDDC ?to))
        )
        :effect (and
            (not (at ?truck ?from))
            (at ?truck ?to)
        )
    )

    (:action flyDrone
        :agent ?drone - drone
        :parameters (?from - location ?to - location)
        :precondition (and
            (at ?drone ?from)
            (connected ?from ?to)
            (or
                (and (isPDC ?from) (isHDDC ?to))
                (and (isHDDC ?from) (isPDC ?to))
            )
        )
        :effect (and
            (not (at ?drone ?from))
            (at ?drone ?to)
        )
    )

    (:action relocateDrone
        :agent ?drone - drone
        :parameters (?pointA - location ?pointB - location ?region - location)
        :precondition (and
            (isPDC ?pointA)
            (isPDC ?pointB)
            (link ?pointA ?region)
            (link ?pointB ?region)
            (at ?drone ?pointA)
            (not (loaded ?drone))
        )
        :effect (and 
            (not (at ?drone ?pointA))
            (at ?drone ?pointB)
        )
    )

    (:action load
        :agent ?transport - agent
        :parameters (?vaccineBox - vaccineBox ?location - location)
        :precondition (and 
            (atVB ?vaccineBox ?location)
            (at ?transport ?location)
            (not (loaded ?transport))
        )
        :effect (and 
            (not (atVB ?vaccineBox ?location))
            (in ?vaccineBox ?transport)
            (loaded ?transport)
        )
    )

    (:action unload
        :agent ?transport - agent
        :parameters (?vaccineBox - vaccineBox ?currentLocation - location ?sourceLocation - location)
        :precondition (and
            (in ?vaccineBox ?transport)
            (at ?transport ?currentLocation)
            (loaded ?transport)
            (or
                (and (isHDDC ?currentLocation) (not (reachHDDC ?vaccineBox)) (reachPDC ?vaccineBox ?sourceLocation) (link ?currentLocation ?sourceLocation))
                (and (isPDC ?currentLocation) (not (getToPDC ?vaccineBox)) (reachRDC ?vaccineBox ?sourceLocation) (link ?currentLocation ?sourceLocation))
                (and (isRDC ?currentLocation) (not (getToRDC ?vaccineBox)) (reachCDP ?vaccineBox ?sourceLocation) (link ?currentLocation ?sourceLocation))
            )
        )
        :effect (and
            (not (in ?vaccineBox ?transport))
            (atVB ?vaccineBox ?currentLocation)
            (not (loaded ?transport))
            (when (isHDDC ?currentLocation) (and (reachHDDC ?vaccineBox) (hasVaccineBox ?currentLocation)))
            (when (isPDC ?currentLocation) (and (reachPDC ?vaccineBox ?currentLocation) (getToPDC ?vaccineBox)))
            (when (isRDC ?currentLocation) (and (reachRDC ?vaccineBox ?currentLocation) (getToRDC ?vaccineBox)))
        )
    )

)