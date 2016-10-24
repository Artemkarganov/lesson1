require 'date'
class Lesson1
  def sum(val = 0)
    val = val.to_s
    if val.size == 1
      val.to_i
    else
      val.split('').map(&:to_i).inject(:+)
    end
  end

  def age(birthday)
    return 'Invalid Date Format' if birthday.nil?
    birthday = Date.parse(birthday)
    today = Time.now
    a = today.to_i - birthday.strftime('%Q').to_i
    "Я живу #{today.year - birthday.year} года
    или #{a / 864_000_00} дней
    или #{a / 360_000_0} часов
    или #{a / 600_000} минут
    или #{a / 1000} секунд"
  end

  def name
    first_name = gets.strip
    middle_name = gets.strip
    last_name = gets.strip
    "Hello #{first_name} #{middle_name} #{last_name}!"
  end
end
