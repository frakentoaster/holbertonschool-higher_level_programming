''' Script to display information about a JSON file '''

import json
from xml.dom.minidom import *
from car import Car

f = open('5-main.json')
json_file = f.read()
json_data = json.loads(json_file)

doc = Document()
car_elements = doc.createElement('cars')
doc.appendChild(car_elements)
brands = []
num_doors = 0
index = 0

for line in json_data:
	''' Create car objects from json_data '''
	c = Car(name=(str(line['name'])),
			brand=(str(line['brand'])),
			nb_doors=line['nb_doors'])

	''' Create DOM document of cars '''
	car_elements.appendChild(c.to_xml_node(doc))

	''' Count unique car brands '''
	if line['brand'] not in brands:
		brands.append(line['brand'])

	''' Sum number of car doors '''
	num_doors += line['nb_doors']

	''' Find fourth car in json_data '''
	index += 1
	if index == 4:
		fourth_car = c

print len(brands)
print num_doors
print fourth_car
print doc.toxml(encoding='utf-8')

f.close()
