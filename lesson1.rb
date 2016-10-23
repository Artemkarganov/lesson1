require 'date'
class Lesson1
  def sum(val = 0)
    # TODO
     val = val.to_s
     if val.size == 1
       val.to_i
     else
       val.split('').map(&:to_i).inject(0){|x,y| x+=y}
    end
  end

  def age(birthday)
    # TODO
      return 'Invalid Date Format' if birthday.nil?

      birthday_date = Date.parse(birthday)
      current_date = Time.now
      current_year = Date.today.year
      a = current_date.to_i - birthday_date.strftime('%Q').to_i
     "Я живу #{current_year - birthday_date.year} года
      или #{a / 864_000_00} дней
      или #{a / 360_000_0} часов
      или #{a / 600_000} минут
      или #{a / 1000} секунд"
  end

  def name
    # TODO
      first_name = gets.strip
      middle_name = gets.strip
      last_name = gets.strip
      "Hello #{first_name} #{middle_name} #{last_name}!"
  end
end
