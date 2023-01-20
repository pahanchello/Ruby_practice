# frozen_string_literal: true

def problem3
  arr = %w[orange banana banana banana lemon lemon]
  h = Hash.new(0)
  arr.each { |x| h[x] += 1 }
  puts h
end
problem3
