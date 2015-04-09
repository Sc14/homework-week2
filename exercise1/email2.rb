# class Email
# Exercicio 1.2
#
# by Diogo Silva - a6562

class Email

  #Construtor
  def initialize(subject,headers)
    @subject = subject
    @date = headers[:date]
    @from = headers[:from]
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

email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"
