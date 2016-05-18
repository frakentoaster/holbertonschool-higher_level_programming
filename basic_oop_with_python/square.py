from math import pi
''' This class describes a square '''
class Square():

	''' Constructor '''
	def __init__(self, radius):
		''' Private attributes '''
		self.__radius = (radius)
		self.__center = (0, 0)
		self.__color = ("Yellow")
		''' Public attributes '''
		self.name = ("Square")

	''' Getters '''
	def get_center(self):
		return self.__center

	def get_color(self):
		return self.__color

	''' Setters '''
	def set_center(self, center):
		self.__center = center

	def set_color(self, color):
		self.__color = color

	''' Public method '''
	def area(self):
		return (self.__radius * self.__radius)

	def s(self):
		size = (self.__radius)
		for i in range(size):
			if i == 0 or i == (size - 1):
				print("*" * (size))
			else:
				print("*" + (" " * (size - 2)) + "*")
