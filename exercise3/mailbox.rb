# Use the `mailbox.rb` file. Fill in and complete the following class
# definitions:


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


class MailboxTextFormatter

  def initialize(mailbox)
    @mailbox = mailbox
  end

  def mailbox
    @mailbox
  end

  def format

    cDate = @mailbox.emails.max_by { |d| d.date.length}.date.length


    puts "Size : #{cDate}"
    puts
    puts "Mailbox: #{mailbox.name}"
    puts

    oDisp =
    puts "+"+"-"*(maxFieldLength)+"|"+"-"*(maxFieldLength)
    puts "| Date | From | Subject"
    puts "+---"
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


# '''
# ```
# Your goal is to complete the code in a way so it outputs the following:
# ```
# Mailbox: Ruby Study Group
#
# +------------+---------+------------------------+
# | Date       | From    | Subject                |
# +------------+---------+------------------------+
# | 2014-12-01 | Ferdous | Homework this week     |
# | 2014-12-01 | Dajana  | Keep on coding! :)     |
# | 2014-12-02 | Ariane  | Re: Homework this week |
# +------------+---------+------------------------+
# ```
#
# You are allowed to add as many methods to the classes `Email`, `Mailbox` and
# `MailboxTextFormatter` as you deem useful. In your final solution you are not
# allowed to change any of the code outside (after) the class definitions. For
# debugging purposes, you can, of course, change all the code you want.
#
# Try to come up with a working solution first. It does not matter how elegant,
# generic, or pretty it is. Whatever produces the required output is fine for a
# first solution. Then, later, look at your code, and try to improve it by
# cleaning up everything that you do not like, or deem ugly.
#
# Eventually, one goal to aim for would be: Adding another column to the
# table only requires minimal changes, e.g. changes to one or two places in your
# formatter class.
# '''
