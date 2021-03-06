import json
''' Class '''
class Car():

	''' Constructor '''
	def __init__(self, *args, **kwargs):
		# Check for key in args or kwargs
		if len(args) > 0 and isinstance(args[0], dict):
			hash = args[0]
			# Private Attributes
			name = hash.get('name')
			brand = hash.get('brand')
			nb_doors = hash.get('nb_doors')
		else:
			name = kwargs['name']
			brand = kwargs['brand']
			nb_doors = kwargs['nb_doors']

		if name == None or not isinstance(name, str):
			raise Exception("name is not a string")
		if brand == None or not isinstance(brand, str):
			raise Exception("brand is not a string")
		if nb_doors <= 0 or not isinstance(nb_doors, int):
			raise Exception("nb_doors is not > 0")

		self.__name = name
		self.__brand = brand
		self.__nb_doors = nb_doors

	''' Getters '''
	def get_name(self):
		return self.__name
	def get_brand(self):
		return self.__brand
	def get_nb_doors(self):
		return self.__nb_doors

	''' Return dictionary '''
	def to_hash(self):
		return { 'name': self.__name,
				'brand': self.__brand,
				'nb_doors': self.__nb_doors }

	''' Return string describing car '''
	def __str__(self):
		return self.__name + " " + self.__brand + " (" + str(self.__nb_doors) + ")"

	''' Update private attributes '''
	def set_nb_doors(self, number):
		self.__nb_doors = number

	''' Return string in JSON format '''
	def to_json_string(self):
		struct = { 'name': self.__name,
				  'brand': self.__brand,
				  'nb_doors': self.__nb_doors }
		json_string = json.dumps(struct)
		return json_string

	''' Return DOM element '''
	def to_xml_node(self, doc):
			car = doc.createElement('car')
			car.setAttribute('nb_doors', str(self.__nb_doors))
			name = doc.createCDATASection(self.__name)
			brand = doc.createElement('brand')
			self_brand = doc.createTextNode(self.__brand)
			brand.appendChild(self_brand)
			car.appendChild(name)
			car.appendChild(brand)
			return car
