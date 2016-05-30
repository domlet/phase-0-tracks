car = "Patriot"

manufacturer = case car
   when "Focus" then "Ford"
   when "Navigator" then "Lincoln"
   when "Camry" then "Toyota"
   when "Civic" then "Honda"
   when "Patriot" then "Jeep"
   when "Jetta" then "VW"
   when "Ceyene" then "Porsche"
   when "Outback" then "Subaru"
   when "520i" then "BMW"
   when "Tundra" then "Nissan"
   else "Unknown"
end

puts "The " + car  + " is made by "  + manufacturer


is_vampire = nil

case is_vampire
# age right, and willing to eat garlic or sign up for insurance
# “Probably not.”
when age_computes === true && (likes_garlic === true || likes_insurance === true)
  is_vampire = "Probably not a vampire"
# age wrong, and hates garlic bread or waives insurance
# “Probably.”
when age_computes === false && (likes_garlic === false || likes_insurance === false)
  is_vampire = "Probably a vampire"
# age wrong, hates garlic bread, and doesn’t want insurance
# “Almost certainly.”
when age_computes === false && likes_garlic === false && likes_insurance === false
  is_vampire = "Almost certainly a vampire"
# “Drake Cula” or “Tu Fang” 
# “Definitely a vampire.”
when has_vampire_name === true
  is_vampire = "Definitely a vampire"
# Otherwise, print “Results inconclusive.”
else "Results inconclusive."
end

  puts "\n#{is_vampire} ."