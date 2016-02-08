'''
Author: 		 		Rick Houser
Script Name: 		Tip Calculator
This script calculates the total cost for a purchase
given an item's price, tax rate and tip amount.
'''

# Welcome message
print "Welcome to the taxes and tip calculator!"

# Request price amount from user and store in variable "price"
price = float(raw_input("What is the price before tax? "))

# Request tax rate from user and store in variable "tax"
tax = float(raw_input("What are the taxes? (in %) "))

# Request tip amount from user and store in variable "tip"
tip = float(raw_input("What do you want to tip? (in %) "))

# Calculate subtotal based on price and tax rate
subtotal = price + price * (tax/100)

# Calculate total amount based on subtotal and tip amount
total = subtotal + subtotal * (tip/100)

# Print total amount with 6 place precision.
print "The price you need to pay is: $%.6f." % (total)