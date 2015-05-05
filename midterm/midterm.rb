

##This is a simple program that gives you a list of sustainable materials, and allows the user to pick a material, then receive back all of the different pros, cons, and things to consider when using that material

require 'json'
require 'open-uri'

##First we need to pull the list of materials our users can choose from 
def lookup_materials
  raw_response = open('https://api.data.gov/sftool/v1/materials?api_key=dMBLd1yIH2IPbsLLSXncwX4CPaZkPm8FH0wT7Ipp')
  response = JSON.load(raw_response)

  response.map  do |material|
    material_hash = {
      id: material["id"],
      name: material["name"],
      overview: material["overview"]
    }
  end
end

##Next we need a method to display the list of materials 
def display_materials(materials)
  materials.sort_by! { |material| material[:id] }
 
  materials.reverse!
 
  materials.each do |material|
    puts "ID: #{material[:id]}"
    puts "Name: #{material[:name]}"
    puts "Overview: (#{material[:overview]})"
    puts ""
  end
end

##
puts "!!! Welcome to the Sustainable Materials Suggestion Program !!!"
materials = lookup_materials
display_materials(materials)

##Display the comparisons
puts "Once you have decided the material you want to find alternatives for, enter the materials ID number below:"



def lookup_comparisons chosen_material

  @chosen_material = gets.chomp

  ##add code here for number validation

  ##Get the comparisons for the material specified
  raw_response = open("https://api.data.gov/sftool/v1/materials/#{@chosen_material}/comparisons?api_key=dMBLd1yIH2IPbsLLSXncwX4CPaZkPm8FH0wT7Ipp")
  response = JSON.load(raw_response)

  response.map  do |comparison|
    comparison_hash = {
      category: comparison["category"],
      area: comparison["area"],
      details: comparison["details"],
      type: comparison["type"]
    }
  end
end

##display the comparisons for the material specified
def display_comparisons(comparisons)
 
  comparisons.each do |comparison|
    puts "Category: #{comparison[:category]}"
    puts "Area: #{comparison[:area]}"
    puts "Details: (#{comparison[:details]})"
    puts "Type: (#{comparison[:type]})"
    puts ""
  end
end

comparisons = lookup_comparisons
display_comparisons(comparisons)
