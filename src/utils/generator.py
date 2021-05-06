import random

CENTRALPOINT = 'ROMA'
NPLANES = 10
NTRUCKS = 22
NDRONES = 78
NVACCINEBOXES = 412
TWOTABS = '\t\t'
THREETABS = '\t\t\t'
FOURTABS = '\t\t\t\t'
FIVETABS = '\t\t\t\t\t'

def read_file(file_to_read):
    return [line.strip().split() for line in open(file_to_read, 'r')]

def write_header(file_to_write):
    tmp = '; FULL problem description\n'
    tmp += '; Describe one scenario within the domain constraints\n\n'
    tmp += '(define (problem full-vaccine-distribution)\n'
    tmp += '\t(:domain vaccine-distribution)\n\n'
    file_to_write.write(tmp)

def write_objects_header(file_to_write):
    tmp = '\t; Objects are candidates to replace free variables\n\t(:objects\n'
    file_to_write.write(tmp)

def write_init_header(file_to_write):
    tmp = '\t; The initial state describe what is currently true\n\t; Everything else is considered false\n\t(:init\n'
    file_to_write.write(tmp)

def generate_objects(file_to_write, reg, prov, hd, nplanes=NPLANES, ntrucks=NTRUCKS, ndrones=NDRONES, vb=NVACCINEBOXES):
    # LOCATIONS
    file_to_write.write(TWOTABS + CENTRALPOINT + '\n')
    counterHD = 0
    counterPV = 0
    counterRG = 0
    for region in reg:
        file_to_write.write(THREETABS + str(region[0]) + '\n')
        for i in range(len(prov[counterRG])):
            file_to_write.write(FOURTABS + str((prov[counterRG])[i]) + '\n')
            for i in range(len(hd[counterPV])):
                file_to_write.write(FIVETABS + str((hd[counterPV])[i]) + '\n')
                counterHD += 1
            counterPV += 1
        counterRG += 1
    file_to_write.write(TWOTABS + '; TRANSPORT MEANS\n')
    # PLANES
    file_to_write.write(TWOTABS + '; planes\n' + TWOTABS)
    for i in range(nplanes):
        file_to_write.write('plane' + str(i+1) + ' ')
        if(i != 0 and (i+1) % 10 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n')
    # TRUCKS
    file_to_write.write(TWOTABS + '; trucks\n' + TWOTABS)
    for i in range(ntrucks):
        file_to_write.write('truck' + str(i+1) + ' ')
        if(i != 0 and (i+1) % 10 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n')
    # DRONES
    file_to_write.write(TWOTABS + '; drones\n' + TWOTABS)
    for i in range(ndrones):
        file_to_write.write('drone' + str(i+1) + ' ')
        if(i != 0 and (i+1) % 10 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n')
    # VACCINE BOXES
    file_to_write.write(TWOTABS + '; vaccine boxes\n' + TWOTABS)
    if vb < counterHD:
        vb = counterHD
        NVACCINEBOXES = vb
    for i in range(vb):
        file_to_write.write('vb' + str(i+1) + ' ')
        if(i != 0 and (i+1) % 10 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n\t)\n\n')

def generate_locations(file_to_write, reg, prov, hd):
    file_to_write.write(TWOTABS + '; LOCATIONS\n')

    file_to_write.write(TWOTABS + '; central point\n')
    tmp = TWOTABS + '(location ' + CENTRALPOINT +') (isCDP ' + CENTRALPOINT + ')\n'
    file_to_write.write(tmp)

    file_to_write.write(TWOTABS + '; regional distribution centers\n')
    for region in reg:
        tmp = TWOTABS + '(location ' + str(region[0]) + ') (isRDC ' + str(region[0]) + ')\n'
        file_to_write.write(tmp)

    file_to_write.write(TWOTABS + '; provincial distribution centers\n')
    for province in prov:
        for i in range(len(province)):
            tmp = TWOTABS + '(location ' + str(province[i]) + ') (isPDC ' + str(province[i]) + ')\n'
            file_to_write.write(tmp)

    file_to_write.write(TWOTABS + '; health districts\n')
    for health_district in hd:
        for i in range(len(health_district)):
            tmp = TWOTABS + '(location ' + str(health_district[i]) + ') (isHDDC ' + str(health_district[i]) + ')\n'
            file_to_write.write(tmp)

def generate_links(file_to_write, reg, prov, hd):
    file_to_write.write('\n' + TWOTABS + '; LINKS\n')
    counterHD = 0
    counterPV = 0
    counterRG = 0
    for region in reg:
        file_to_write.write(TWOTABS + '(link ' + str(region[0]) + ' ' + CENTRALPOINT + ')\n')
        for i in range(len(prov[counterRG])):
            file_to_write.write(THREETABS + '(link ' + str((prov[counterRG])[i]) + ' ' + str(region[0]) + ')\n')
            for j in range(len(hd[counterPV])):
                file_to_write.write(FOURTABS + '(link ' + str((hd[counterPV])[j]) + ' ' +  str((prov[counterRG])[i]) + ')\n')
                counterHD += 1
            counterPV += 1
        counterRG += 1

def generate_connections(file_to_write, reg, prov, hd):
    file_to_write.write('\n' + TWOTABS + '; CONNECTIONS\n')
    for line in open('connections.txt', 'r'):
        file_to_write.write(TWOTABS + line)
    counterHD = 0
    counterPV = 0
    counterRG = 0
    file_to_write.write('\n\n' + TWOTABS + '; PROVINCE > HD and HD > PROVINCE connections\n')
    for region in reg:
        for i in range(len(prov[counterRG])):
            for j in range(len(hd[counterPV])):
                file_to_write.write(TWOTABS + '(connected ' + str((hd[counterPV])[j]) + ' ' +  str((prov[counterRG])[i]) + ') ')
                file_to_write.write('(connected ' + str((prov[counterRG])[i]) + ' ' + str((hd[counterPV])[j]) + ')\n')
                counterHD += 1
            counterPV += 1
        counterRG += 1

def generate_transport_means_header(file_to_write):
    file_to_write.write('\n' + TWOTABS + '; TRANSPORT MEANS\n')
    # PLANES
    file_to_write.write(TWOTABS + '; planes\n' + TWOTABS)
    for i in range(NPLANES):
        file_to_write.write('(transport plane' + str(i+1) + ') ')
        if(i != 0 and (i+1) % 5 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n')
    # TRUCKS
    file_to_write.write(TWOTABS + '; trucks\n' + TWOTABS)
    for i in range(NTRUCKS):
        file_to_write.write('(transport truck' + str(i+1) + ') ')
        if(i != 0 and (i+1) % 5 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n')
    # DRONES
    file_to_write.write(TWOTABS + '; drones\n' + TWOTABS)
    for i in range(NDRONES):
        file_to_write.write('(transport drone' + str(i+1) + ') ')
        if(i != 0 and (i+1) % 5 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n')

def generate_airports(file_to_write, airports_file):
    file_to_write.write('\n' + TWOTABS + '; airports\n')
    for airport in airports_file:
        file_to_write.write(TWOTABS + '(hasAirport ' + str(airport[0]) + ')\n')
    file_to_write.write('\n' + TWOTABS + '; planes\n')
    for i in range(NPLANES):
        rnd = random.randint(0, len(airports_file) - 1)
        tmp = '(plane plane' + str(i+1) + ') '
        tmp += '(at plane' + str(i+1) + ' ' + str((airports_file[rnd])[0]) + ') '
        tmp += '(= (capacity plane' + str(i+1) + ') 0)\n'
        file_to_write.write(TWOTABS + tmp)

def generate_trucks(file_to_write, airports_file):
    file_to_write.write(TWOTABS + '; trucks\n')
    for i in range(0, NTRUCKS):
        tmp = '(truck truck' + str(i+1) + ') '
        if i >= (NTRUCKS - 1):
            tmp += '(at truck' + str(i+1) + ' ' + CENTRALPOINT + ') '
        else:    
            tmp += '(at truck' + str(i+1) + ' ' + str((airports_file[i])[0]) + ') '
        tmp += '(= (capacity truck' + str(i+1) + ') 0)\n'
        file_to_write.write(TWOTABS + tmp)
    file_to_write.write('\n')

def generate_drones(file_to_write, prov, hd, drones_file):
    file_to_write.write(TWOTABS + '; drones\n')
    counterPV = 0
    counterRG = 0
    ndrones = 1
    for entry in drones_file:
        nprov = len(prov[counterRG])
        for i in range(int(entry[0])):
            tmp = '(drone drone' + str(ndrones) + ') '
            boolean = random.randint(0, 1)
            # positioned in province
            if boolean == 0:
                rnd = random.randint(0, nprov - 1)
                tmp += '(at drone' + str(ndrones) + ' ' + str((prov[counterRG])[rnd]) + ') '
            # positioned in health district
            else:
                rnd1 = random.randint(counterPV, nprov + counterPV - 1)
                rnd2 = random.randint(0, len(hd[rnd1]) - 1)
                tmp += '(at drone' + str(ndrones) + ' ' + str((hd[rnd1])[rnd2]) + ') '
            tmp += '(= (capacity drone' + str(ndrones) + ') 0)\n'
            file_to_write.write(TWOTABS + tmp)
            ndrones += 1
        counterPV += len(prov[counterRG])
        counterRG += 1
    file_to_write.write('\n')

def generate_vaccineboxes(file_to_write):
    file_to_write.write(TWOTABS + '; VACCINE BOXES\n')
    file_to_write.write(TWOTABS + '; vaccine boxes\n' + TWOTABS)
    for i in range(NVACCINEBOXES):
        file_to_write.write('(vaccineBox vb' + str(i+1) + ') ')
        if(i != 0 and (i+1) % 10 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n' + TWOTABS + '; where\n' + TWOTABS)
    for i in range(NVACCINEBOXES):
        file_to_write.write('(at vb' + str(i+1) + ' ' + CENTRALPOINT + ') ')
        if(i != 0 and (i+1) % 5 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n' + TWOTABS + '; constraints\n' + TWOTABS)
    for i in range(NVACCINEBOXES):
        file_to_write.write('(reachCDP vb' + str(i+1) + ' ' + CENTRALPOINT + ') ')
        if(i != 0 and (i+1) % 5 == 0):
            file_to_write.write('\n' + TWOTABS)
    file_to_write.write('\n\t)\n\n')
        
def generate_goal_header(file_to_write):
    file_to_write.write('\n\t; The goal state describe what we desire to achieve\n')
    file_to_write.write('\t(:goal (and\n')

def generate_goal(file_to_write, hd):
    for health_district in hd:
        for i in range(len(health_district)):
            file_to_write.write('\t\t(hasVaccineBox ' + health_district[i] + ')\n')
    file_to_write.write('\t))\n')
    file_to_write.write(')')

def main():

    regions = read_file('regions.txt')
    provinces = read_file('provinces.txt')
    health_districts = read_file('healthdistricts.txt')
    airports = read_file('airports.txt')
    drones = read_file('drones.txt')

    log = open('problem.pddl', 'w')

    write_header(log)
    write_objects_header(log)
    generate_objects(log, regions, provinces, health_districts)
    write_init_header(log)
    generate_locations(log, regions, provinces, health_districts)
    generate_links(log, regions, provinces, health_districts)
    generate_connections(log, regions, provinces, health_districts)
    generate_transport_means_header(log)
    generate_airports(log, airports)
    generate_trucks(log, airports)
    generate_drones(log, provinces, health_districts, drones)
    generate_vaccineboxes(log)
    generate_goal_header(log)
    generate_goal(log, health_districts)
    log.close()

if __name__ == "__main__":
    main()