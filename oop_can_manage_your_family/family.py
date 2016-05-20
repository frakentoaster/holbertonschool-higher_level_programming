from datetime import datetime
''' This class describes a circle '''
class Person():
	''' Class attributes '''
	EYE_COLORS = ["Blue", "Green", "Brown"]
	GENRES = ["Female", "Male"]

	''' Constructor '''
	def __init__(self, id, first_name, date_of_birth, genre, eyes_color):
		''' Private and Public attributes '''
		self.__id = id
		self.__eye_color = eyes_color
		self.__genre = genre
		self.__date_of_birth = date_of_birth
		self.__first_name = first_name

		if type(genre) is not str and genre not in Person.GENRES:
			raise Exception("genre is not valid")

		if type(eyes_color) is not str and eye_color not in Person.EYE_COLORS:
			raise Exception("eyes_color is not valid")

		if not isinstance(id,int):
			raise Exception("id is not an integer")

		if self.__first_name == "" or not isinstance(first_name, str):
			raise Exception("string is not a string")

		if len(self.__date_of_birth) != 3:
			raise Exception("date_of_birth is not a valid date")
		if int(self.__date_of_birth[0]) < 1 or int(self.__date_of_birth[0]) > 12:
			raise Exception("date_of_birth is not a valid date")
		if int(self.__date_of_birth[1]) < 1 or int(self.__date_of_birth[1]) > 31:
			raise Exception("date_of_birth is not a valid date")


	''' Getters '''
	def get_id(self):
		return self.__id

	def get_eyes_color(self):
		return self.__eye_color

	def get_genre(self):
		return self.__genre

	def get_date_of_birth(self):
		return self.__date_of_birth

	def get_first_name(self):
		return self.__first_name


	''' Public Methods '''
	def __str__(self):
		return self.__first_name + " " + self.last_name

	def is_male(self):
		return self.__genre == "Male"

	def age(self):
		str1 = str(self.__date_of_birth).strip('[]')
		date_format = "%m, %d, %Y"
		a = datetime.strptime('5, 20, 2016', date_format)
		b = datetime.strptime(str1, date_format)
		age = abs((a - b).days/365.2425)
		return age

class Baby(Person):
	''' Describes a baby, sublclass of Person '''
	def can_run(self):
		return False

	def need_help(self):
		return True

	def is_young(self):
		return True

	def can_vote(self):
		return False

class Teenager(Person):
	''' Describes a teenager, sublclass of Person '''
	def can_run(self):
		return True

	def need_help(self):
		return False

	def is_young(self):
		return True

	def can_vote(self):
		return False

class Adult(Person):
	''' Describes an adult, sublclass of Person '''
	def can_run(self):
		return True

	def need_help(self):
		return False

	def is_young(self):
		return False

	def can_vote(self):
		return True

class Senior(Person):
	''' Describes a senior, sublclass of Person '''
	def can_run(self):
		return False

	def need_help(self):
		return True

	def is_young(self):
		return False

	def can_vote(self):
		return True
