# Exercise 3
#
# Mailbox - Formatação dados pelo tamanho
#
# by Diogo Silva - a6562
# Ref: http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-max_by


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

class MailboxTextFormatter

  def initialize(mailbox)
    @mailbox = mailbox
  end

  def mailbox
    @mailbox
  end

  def format

    maxDate = @mailbox.emails.max_by { |d| d.date.length}.date.length
    maxFrom = @mailbox.emails.max_by { |f| f.from.length}.from.length
    maxSubject = @mailbox.emails.max_by { |s| s.subject.length}.subject.length


    puts "Mailbox: #{@mailbox.name}\n\n"
    puts tabHeader(maxDate,maxFrom,maxSubject)

    @mailbox.emails.each do |email|
      print "| #{email.date}" + " "*(maxDate-email.date.length+1)
      print "| #{email.from}" + " "*(maxFrom-email.from.length+1)
      print "| #{email.subject}" + " "*(maxSubject-email.subject.length+1) + "|\n"
      end

      puts "+"+"-"*(maxDate+2)+"+"+"-"*(maxFrom+2)+"+"+"-"*(maxSubject+2)+"+\n"

  end

  def tabHeader(maxDate,maxFrom,maxSubject)
    "+"+"-"*(maxDate+2)+"+"+"-"*(maxFrom+2)+"+"+"-"*(maxSubject+2)+"+\n" +
    "| Date" + " "*(maxDate-3) + "| From" + " "*(maxFrom-3) + "| Subject" + " "*(maxSubject-6) + "|\n" +
    "+"+"-"*(maxDate+2)+"+"+"-"*(maxFrom+2)+"+"+"-"*(maxSubject+2)+"+\n"
  end


end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format
