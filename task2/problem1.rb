# frozen_string_literal: true

class Dates
  puts 'Enter date'
  puts 'day:'
  @day = gets.to_i
  puts 'month:'
  @month = gets.to_i
  puts 'year:'
  @year = gets.to_i

  puts 'Enter units:
  1 - day,
  2 - week,
  3 - month,
  4 - year:'
  units = gets.chomp.to_i
  h_units = { 1 => 'day', 2 => 'week', 3 => 'month', 4 => 'year' }
  puts 'Enter duration:'
  @duration = gets.to_i
  puts 'Enter the number dates :'
  @n = gets.to_i

  puts @input = Time.new(@year, @month, @day)

  day_counter = -> {  @input += 86_400 * @duration } # секунд в сутках

  week_counter = -> { @input += 604_800 * @duration } # секунд в неделе
  month_counter = -> { @input += @duration.month }
  year_counter = -> { @input += @duration.year }

  hh = { 'day' => day_counter, 'week' => week_counter, 'month' => month_counter, 'year' => year_counter }

  if hh[h_units[units]]
    @n.times do
      p hh[h_units[units]].call
    end
  end
end
