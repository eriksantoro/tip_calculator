print "Enter the cost of your meal before tax: "
meal_string = gets.chomp
meal = Float(meal_string) # Convert string to float
while meal <= 0
	print "Please enter a number greater than 0: "
	meal_string = gets.chomp
	meal = Float (meal_string)
end

print "Enter the tax rate as a percentage: "
tax_string = gets.chomp
tax = Float(tax_string)
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

# Calculations
tax_value = meal * (tax/100)
meal_with_tax = meal + tax_value
tip_value = meal_with_tax * (tip/100)
total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $%.2f." % meal
puts "At %.0f%%, tax for this meal is $%.2f." % [tax, tax_value]
puts "For a %.0f%% tip, you should leave $%.2f." % [tip, tip_value]
puts "The grand total for this meal is then $%.2f." %total_cost



