# frozen_string_literal: true

def safe_invert(hash)
  inverted = hash.invert
  if inverted.keys.length < hash.keys.length
    puts 'Not all values are unique'
  else
    inverted
  end
end

def main
  fruits_country = {
    'orange' => 'Marocco',
    'banana' => 'Ecuador',
    'lemon' => 'Marocco'
  }
  inverted = safe_invert(fruits_country)
  puts inverted
rescue StandardError => e
  puts e
end
main
