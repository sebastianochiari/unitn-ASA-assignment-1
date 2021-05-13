; Domain description
; Describe the relations and transitions that can occur
; national vaccine distribution domain
(define (domain vaccine-distribution) ; Domain name must match problem's

  ; what the planner must support to execute this domain
  (:requirements
    :strips                     ; basic preconditions and effects
    :negative-preconditions     ; to use not in preconditions
    :equality                   ; to use = in preconditions
    :disjunctive-preconditions  ; to use or in preconditions
    :conditional-effects        ; to use when in effect
    :fluents                    ; to use capacity functions for means of transport
  )

  ; Define the relations
  (:predicates
    ; location management
    (location ?l) ; object ?l is a location
    (isCDP ?l) ; location ?l is the Central Distribution Point for the State
    (isRDC ?l) ; location ?l is the Regional Distribution Centre
    (isPDC ?l) ; location ?l is the Provincial Distribution Centre
    (isHDDC ?l) ; location ?l is a Health District Distribution Centre (DESTINATION)
    (link ?low ?high) ; location ?low is linked to a location ?high (GRAPH DELIVER DEPENDENCIES)
    (connected ?l1 ?l2) ; location ?l1 is connected to location ?l2 (TRANSPORT CONNECTIONS)
    (hasVaccineBox ?l) ; HDDC ?l received a vaccine box
    (hasAirport ?l) ; location ?l has an airport
    ; logistic vaccine box predicates
    (vaccineBox ?x) ; object ?x is a vaccine box
    (reachCDP ?x ?l) ; vaccine box ?x reaches the Central Distribution Point in location ?l
    (getToRDC ?x) ; vaccine box ?x reaches the Regional Distribution Centre
    (reachRDC ?x ?l) ; vaccine box ?x reaches the Regional Distribution Centre in location ?l
    (getToPDC ?x) ; vaccine box ?x reaches the Provincial Distribution Centre
    (reachPDC ?x ?l) ; vaccine box ?x reaches the Provincial Distribution Centre in location ?l
    (reachHDDC ?x) ; vaccine box ?x reaches the Health District Distribution Centre
    ; transport logistic
    (transport ?t) ; object ?t is a transport mean
    (plane ?t) ; transport mean ?t is a plane
    (truck ?t) ; transport mean ?t is a truck
    (drone ?t) ; transport mean ?t is a drone
    (droneLoaded ?drone) ; drone ?drone is loaded with a vaccine box
    (at ?what ?where) ; object ?w is at location ?l
    (in ?what ?where) ; object ?w is in the transport mean ?t
    (capacity ?transport ?amount) ; transport ?transport has the capacity to load ?amount of vaccine boxes
  )

  (:functions
    ; function to enable multiple loads inside a single means of transport
    (capacity ?transport)
  )

  ; ACTIONS

  ; load a vaccine box inside a transport mean
  (:action load
    :parameters (?vaccineBox ?transport ?location)
    :precondition (and
        (vaccineBox ?vaccineBox)
        (not (reachHDDC ?vaccineBox))
        (transport ?transport)
        (location ?location)
        (at ?transport ?location)
        (at ?vaccineBox ?location)
        (or
          (and (plane ?transport) (< (capacity ?transport) 20))
          (and (truck ?transport) (< (capacity ?transport) 10))
          (and (drone ?transport) (not (droneLoaded ?transport)))
        )
    )
    :effect (and
        (not (at ?vaccineBox ?location))
        (in ?vaccineBox ?transport)
        (when (plane ?transport) (increase (capacity ?transport) 1))
        (when (truck ?transport) (increase (capacity ?transport) 1))
        (when (drone ?transport) (droneLoaded ?transport))
    )
  )

  ; unload a vaccine box inside a distribution center
  (:action unload
      :parameters (?vaccineBox ?transport ?currentLocation ?sourceLocation)
      :precondition (and
        (vaccineBox ?vaccineBox)
        (transport ?transport)
        (location ?currentLocation)
        (location ?sourceLocation)
        (in ?vaccineBox ?transport)
        (at ?transport ?currentLocation)
        (or
            (and (plane ?transport) (> (capacity ?transport) 0))
            (and (truck ?transport) (> (capacity ?transport) 0))
            (and (drone ?transport) (droneLoaded ?transport))
        )
        (or
          (and (isHDDC ?currentLocation) (not (reachHDDC ?vaccineBox)) (reachPDC ?vaccineBox ?sourceLocation) (link ?currentLocation ?sourceLocation))
          (and (isPDC ?currentLocation) (not (getToPDC ?vaccineBox)) (reachRDC ?vaccineBox ?sourceLocation) (link ?currentLocation ?sourceLocation))
          (and (isRDC ?currentLocation) (not (getToRDC ?vaccineBox)) (reachCDP ?vaccineBox ?sourceLocation) (link ?currentLocation ?sourceLocation))
        )
      )
      :effect (and
        (not (in ?vaccineBox ?transport))
        (at ?vaccineBox ?currentLocation)
        (when (plane ?transport) (decrease (capacity ?transport) 1))
        (when (truck ?transport) (decrease (capacity ?transport) 1))
        (when (drone ?transport) (not (droneLoaded ?transport)))
        (when (isHDDC ?currentLocation) (and (reachHDDC ?vaccineBox) (hasVaccineBox ?currentLocation)))
        (when (isPDC ?currentLocation) (and (reachPDC ?vaccineBox ?currentLocation) (getToPDC ?vaccineBox)))
        (when (isRDC ?currentLocation) (and (reachRDC ?vaccineBox ?currentLocation) (getToRDC ?vaccineBox)))
      )
  )
  
  ; move a transport mean from one location to another
  ;     drones are allowed only to move from PDC to HDDC or viceversa
  ;     planes are allowed to move only between locations with airports
  (:action move
    :parameters (?transport ?departure ?arrival)
    :precondition (and
        (transport ?transport)
        (location ?departure)
        (location ?arrival)
        (at ?transport ?departure)
        (or 
          (and (plane ?transport) (hasAirport ?departure) (hasAirport ?arrival))
          (and
            (drone ?transport)
            (connected ?departure ?arrival)
            (or
              (and (isPDC ?departure) (isHDDC ?arrival) )
              (and (isHDDC ?departure) (isPDC ?arrival) )
            )
          )
          (and (truck ?transport) (connected ?departure ?arrival) (not (isHDDC ?arrival)))
        )
    )
    :effect (and
        (not (at ?transport ?departure))
        (at ?transport ?arrival)
    )
  )
  
  ; relocate a drone to another province of the same region
  (:action relocateDrone
      :parameters (?drone ?pointA ?pointB ?region)
      :precondition (and
        (drone ?drone)
        (isPDC ?pointA)
        (isPDC ?pointB)
        (link ?pointA ?region)
        (link ?pointB ?region)
        (at ?drone ?pointA)
        (not (droneLoaded ?drone))
      )
      :effect (and
        (not (at ?drone ?pointA))
        (at ?drone ?pointB)
      )
  )

)