# class Email
# Exercicio 1.1
# 
# by Diogo Silva - a6562
#
# Ref: http://justintallant.com/classes-in-ruby-using-getters-and-setters/?doing_wp_cron=1428585008.2999188899993896484375
# Ref: 01-ruby-basics.pdf

class Email

  #Construtor
  def initialize(subject,date,from)
    @subject = subject
    @date = date
    @from = from
  end

  #Propriedades (getters & setters)
  def subject
    @subject
  end

  def date
    @date
  end

  def from
    @from
  end
end

email = Email.new("Homework this week", "2014-12-01", "Ferdous")

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"
