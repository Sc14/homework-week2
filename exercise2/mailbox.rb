# Exercise 2
#
# by Diogo Silva - a6562
#
# In a new file `mailbox.rb` write a class that has a `name` and `emails`
# attribute. Make it so that the these attributes can be populated through the
# `initialize` method (`name` being a string, and `emails` being an array of
# `Email` instances).

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

class Mailbox

  def initialize(name,emails)
    @name = name
    @emails = emails
  end

  def name
    @name
  end

  def emails
    @emails
  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
  ]
mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.emails.each do |email|
  puts "Date:    #{email.date}"
  puts "From:    #{email.from}"
  puts "Subject: #{email.subject}"
  puts
end
