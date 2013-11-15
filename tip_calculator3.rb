print "Enter the cost of your meal before tax: "
meal = Float (gets) # Convert string to float
while meal <= 0
	print "Please enter a number greater than 0: "
	meal = Float (gets)
end

print "Enter the tax rate as a percentage: "
tax = Float (gets)
while (tax < 0 || tax > 100)
	print "Please enter a number greater than or equal to 0, and less than or equal to 100: "
	tax_string = gets.chomp
	tax = Float (tax_string)
end

print "Enter the tip as a percentage that you'd like to leave: "
tip_string = gets.chomp
tip = Float(tip_string)
while (tip < 0 || tip > 100)
	print "Please enter a number greater than or equal to 0, and less than or equal to 100: "
	tip_string = gets.chomp
	tip = Float (tip_string)
end

# Create a method to calculate a value based on a base amount and a percentage
def percentage_to_value(parameter1, parameter2)
	parameter1 * (parameter2/100)  # I originally tried putting variable meal here, and only having one parameter, but didn't work
end



# Calculations

tax_value = percentage_to_value(meal, tax)  # Need to define local variables outside the method
meal_with_tax = meal + tax_value
tip_value = percentage_to_value(meal_with_tax, tip)
total_cost = meal_with_tax + tip_value


puts "The pre-tax cost of your meal was $%.2f." % meal
puts "At %.0f%%, tax for this meal is $%.2f." % [tax, tax_value]
puts "For a %.0f%% tip, you should leave $%.2f." % [tip, tip_value]
puts "The grand total for this meal is then $%.2f." %total_cost


# Also could have done it the following way, but this is less efficient
=begin

meal_with_tax = meal + percentage_to_value(meal, tax)
total_cost = meal_with_tax + percentage_to_value(meal_with_tax, tip)

puts "The pre-tax cost of your meal was $%.2f." % meal
puts "At %.0f%%, tax for this meal is $%.2f." % [tax, percentage_to_value(meal, tax)]
puts "For a %.0f%% tip, you should leave $%.2f." % [tip, percentage_to_value(meal_with_tax, tip)]
puts "The grand total for this meal is then $%.2f." %total_cost
=end