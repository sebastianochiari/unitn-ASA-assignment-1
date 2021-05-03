; Domain description
; Describe the relations and transitions that can occur
; This one describes the Tower of Hanoi puzzle
(define (domain vaccine-distribution) ; Domain name must match problem's

  ; what the planner must support to execute this domain
  (:requirements
    :strips                 ; basic preconditions and effects
    :negative-preconditions ; to use not in preconditions
    :equality               ; to use = in preconditions
    :disjunctive-preconditions
    :typing                 ; to define type of objects and parameters
    :fluents
    :adl
  )

  ; Define the relations
  (:predicates
    ; location management
    (location ?l) ; ?l is location
    (isCDP ?l) ; location ?l is the Central Distribution Point for the State
    (isRDC ?l) ; location ?l is the Regional Distribution Centre
    (isPDC ?l) ; location ?l is the Provincial Distribution Centre
    (isHDDC ?l) ; location ?l is a Health District Distribution Centre (DESTINATION)
    (connected ?l1 ?l2) ; location ?l1 is connected to location ?l2
    (hasVaccineBox ?l) ; HDDC ?l received a vaccine box
    (hasAirport ?l) ; location ?l has an airport
    ; logistic vaccine box predicates
    (vaccineBox ?x)
    (reachRDC ?x) ; vaccine box ?x reaches the Regional Distribution Centre
    (reachPDC ?x) ; vaccine box ?x reaches the Provincial Distribution Centre
    (reachHDDC ?x) ; vaccine box ?x reaches the Health District Distribution Centre
    ; transport logistic
    (transport ?t) ; ?t is a transport mean
    (plane ?t) ; transport mean ?t is a plane
    (truck ?t) ; transport mean ?t is a truck
    (drone ?t) ; transport mean ?t is a drone
    (at ?what ?where) ; object ?w is at location ?l
    (in ?what ?where) ; object ?w is in the transport mean ?t
    (capacity ?transport ?amount)
  )

  (:functions
    (capacity ?transport)
  )

  ; ACTIONS
  ; load a vaccine box inside a transport mean
  (:action load
    :parameters (?vaccineBox ?transport ?location)
    :precondition (and
        (vaccineBox ?vaccineBox)
        (transport ?transport)
        (location ?location)
        (at ?transport ?location)
        (at ?vaccineBox ?location)
        (or
          (and (plane ?transport) (< (capacity ?transport) 20))
          (and (truck ?transport) (< (capacity ?transport) 10))
          (and (drone ?transport) (< (capacity ?transport) 1))
        )
        (not (reachHDDC ?vaccineBox))
    )
    :effect(and
        (not (at ?vaccineBox ?location))
        (in ?vaccineBox ?transport)
        (increase (capacity ?transport) 1)
    )
  )

  ; unload a vaccine box inside a distribution center
  (:action unload
      :parameters (?vaccineBox ?transport ?location)
      :precondition (and
        (vaccineBox ?vaccineBox)
        (transport ?transport)
        (location ?location)
        (in ?vaccineBox ?transport)
        (at ?transport ?location)
        (> (capacity ?transport) 0)
        (or
          (and (isHDDC ?location) (reachPDC ?vaccineBox))
          (and (isPDC ?location) (reachRDC ?vaccineBox))
          (isRDC ?location)
        )
      )
      :effect (and
        (not (in ?vaccineBox ?transport))
        (at ?vaccineBox ?location)
        (decrease (capacity ?transport) 1)
        (when (isHDDC ?location) (and (reachHDDC ?vaccineBox) (hasVaccineBox ?location)))
        (when (isPDC ?location) (reachPDC ?vaccineBox))
        (when (isRDC ?location) (reachRDC ?vaccineBox))
      )
  )
  
  
  ; move a transport mean from one location to another
  ; drones are allowed only to move from PDC to HDDC or viceversa
  ; planes are allowed to move only between locations with airports
  (:action move
    :parameters (?transport ?departure ?arrival)
    :precondition (and
        (transport ?transport)
        (location ?departure)
        (location ?arrival)
        (at ?transport ?departure)
        (or 
          (and (plane ?transport) (hasAirport ?departure) (hasAirport ?arrival))
          (and (drone ?transport) (connected ?departure ?arrival) (or (and (isPDC ?departure) (isHDDC ?arrival) ) (and (isHDDC ?departure) (isPDC ?arrival) ) ) )
          (and (truck ?transport) (connected ?departure ?arrival))
        )
    )
    :effect (and
        (not (at ?transport ?departure))
        (at ?transport ?arrival)
    )
  )

)