# frozen_string_literal: true

class Dates
  puts 'Введите дату'
  puts 'День:'
  @day = gets.to_i
  puts 'Месяц:'
  @month = gets.to_i
  puts 'Год:'
  @year = gets.to_i

  puts 'Введите единицы измерения:
  1 - день,
  2 - неделя,
  3 - месяц,
  4 - год:'
  units = gets.chomp.to_i
  h_units = { 1 => 'день', 2 => 'неделя', 3 => 'месяц', 4 => 'год' }
  puts 'Введите длительность:'
  @duration = gets.to_i
  puts 'Введите кол-во дат которые вы хотитие вывести :'
  @n = gets.to_i

  puts @input = Time.new(@year, @month, @day)

  day_counter = -> {  @input += 86_400 * @duration } # секунд в сутках

  week_counter = -> { @input += 604_800 * @duration } # секунд в неделе
  month_counter = -> { @input += @duration.month }
  year_counter = -> { @input += @duration.year }

  hh = { 'день' => day_counter, 'неделя' => week_counter, 'месяц' => month_counter, 'год' => year_counter }

  if hh[h_units[units]]
    @n.times do
      p hh[h_units[units]].call
    end
  end
end
