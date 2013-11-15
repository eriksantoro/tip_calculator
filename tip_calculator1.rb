# These are inputs
meal = 50.00  #This is the base price of meal
tax = 0.06  #This is the tax rate
tip = 0.20  #This is the tip rate

# Calculations
tax_value = (meal * tax)
meal_with_tax = meal + tax_value
tip_value = meal_with_tax * tip
total_cost = meal_with_tax + tip_value

# I did this to get whole numbers; I could have also started wtih whole numbers and then divided in calculations
tax_percentage = tax * 100  #This puts tax in percentage form (without sign)
tip_percentage = tip * 100  #This puts tip in percentage form (without sign)


puts "The pre-tax cost of your meal was $%.2f." % meal
puts "At %.0f%%, tax for this meal is $%.2f." % [tax_percentage, tax_value]
puts "For a %.0f%% tip, you should leave $%.2f." % [tip_percentage, tip_value]
puts "The grand total for this meal is then $%.2f." %total_cost




