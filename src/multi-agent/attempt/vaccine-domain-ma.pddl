; Domain description
; Describe the relations and transitions that can occur
; small single agent PDDL domain transposed into a multi-agent domain
(define (domain vaccine-distribution-ma)

  (:requirements
    :strips
    :typing
    :multi-agent
    :unfactored-privacy
  )

  (:types
    location agent - object
    transport vaccineBox - agent
  )

  ; Define the relations
  (:predicates

    (isCP ?location - location)
    (isRP ?location - location)
    (isPP ?location - location)
    (isHD ?location - location)

    (connected ?l1 - location ?l2 - location)
    (hasAirport ?location - location)
    (hasVaccineBox ?location - location)
    
    (at ?agent - agent ?where - location)
    (in ?vaccineBox - vaccineBox ?where - agent)
    
    (loaded ?transport - transport)
    (plane ?transport - transport)
    (truck ?transport - transport)
    (drone ?transport - transport)
  )

  (:action flyPlane
    :agent ?transport - transport
    :parameters (?from - location ?to - location)
    :precondition (and
      (plane ?transport)
      (at ?transport ?from)
      (hasAirport ?from)
      (hasAirport ?to)
    )
    :effect (and
      (not (at ?transport ?from))
      (at ?transport ?to)
    )
  )

  (:action drive
    :agent ?truck - transport
    :parameters (?from - location ?to - location)
    :precondition (and
      (truck ?truck)
      (at ?truck ?from)
      (connected ?from ?to)
      (not (isHD ?to))
    )
    :effect (and
      (not (at ?truck ?from))
      (at ?truck ?to)
    )
  )

  (:action flyDrone
    :agent ?drone - transport
    :parameters (?from - location ?to - location)
    :precondition (and
      (drone ?drone)
      (at ?drone ?from)
      (connected ?from ?to)
      (or
        (and (isHD ?from) (isPP ?to))
        (and (isPP ?from) (isHD ?to))
      )
    )
    :effect (and
      (not (at ?drone ?from))
      (at ?drone ?to)
    )
  )
  

  (:action load
    :agent ?vaccineBox - vaccineBox
    :parameters (?transport - transport ?location - location)
    :precondition (and
      (at ?transport ?location)
      (at ?vaccineBox ?location)
      (not (isHD ?location))
      (not (loaded ?transport))
    )
    :effect (and
      (not (at ?vaccineBox ?location))
      (in ?vaccineBox ?transport)
      (loaded ?transport)
    )
  )

  (:action unload
    :agent ?vaccineBox - vaccineBox
    :parameters (?transport - transport ?location - location)
    :precondition (and
      (in ?vaccineBox ?transport)
      (at ?transport ?location)
      (not (isHD ?location))
    )
    :effect (and
      (not (in ?vaccineBox ?transport))
      (not (loaded ?transport))
      (at ?vaccineBox ?location)
    )
  )

  (:action unloadHD
    :agent ?vaccineBox - vaccineBox
    :parameters (?transport - transport ?location - location)
    :precondition (and
      (in ?vaccineBox ?transport)
      (at ?transport ?location)
      (isHD ?location)
    )
    :effect (and
      (not (in ?vaccineBox ?transport))
      (not (loaded ?transport))
      (at ?vaccineBox ?location)
      (hasVaccineBox ?location)
    )
  )
  

)