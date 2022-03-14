require_relative 'spec_helper'
require_relative '../enumerables'

describe '#get_names' do

  it 'returns an array of names' do
    expect(get_names(spicy_foods)).to eq(["Green Curry", "Buffalo Wings", "Mapo Tofu"])
  end

end

describe '#spiciest_foods' do
  
  it 'return an array of hashes where the heat level of the food is greater than 5' do
    expect(spiciest_foods(spicy_foods)).to eq([
      { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
      { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 } 
    ])
  end

end

describe '#print_spicy_foods' do
  
  it 'outputs the spicy foods to the terminal in the specified format' do
    output_str = "Green Curry (Thai) | Heat Level: 🌶🌶🌶🌶🌶🌶🌶🌶🌶\nBuffalo Wings (American) | Heat Level: 🌶🌶🌶\nMapo Tofu (Sichuan) | Heat Level: 🌶🌶🌶🌶🌶🌶\n"
    expect { print_spicy_foods(spicy_foods) }.to output(output_str).to_stdout
  end
  
end

describe '#get_spicy_food_by_cuisine' do
  
  it 'returns a single hash for the spicy food whose cuisine matches the cuisine being passed to the method' do
    expect(get_spicy_food_by_cuisine(spicy_foods, "Sichuan")).to eq({ name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 })
    expect(get_spicy_food_by_cuisine(spicy_foods, "Thai")).to eq({ name: 'Green Curry', cuisine: 'Thai', heat_level: 9 })
  end

end

describe '#sort_by_heat' do
  
  it 'return an array of hashes sorted by heat level from lowest to highest' do
    sorted_array = [
      { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
      { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
      { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 }
    ]
    expect(sort_by_heat(spicy_foods)).to eq(sorted_array)
  end

end

describe '#print_spiciest_foods' do
  
  it 'outputs ONLY the spicy foods that have a heat level greater than 5 to the terminal in the specified format' do
    output_str = "Green Curry (Thai) | Heat Level: 🌶🌶🌶🌶🌶🌶🌶🌶🌶\nMapo Tofu (Sichuan) | Heat Level: 🌶🌶🌶🌶🌶🌶\n"
    expect { print_spiciest_foods(spicy_foods) }.to output(output_str).to_stdout
  end
  
end

describe '#average_heat_level' do
  
  it 'returns an integer representing the average heat level of all the spicy foods in the array' do
    expect(average_heat_level(spicy_foods)).to eq(6)
  end
  
end