
class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@id = 1

  #--- Class Methods ---#

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  def self.all #displays all contacts by full name
    @@contacts.each { |contact| puts contact.full_name }
  end

  def self.find(id) #find contact by id
    index = id - 1
    puts @@contacts[index].full_name
  end

  #--- Instance Methods ---#

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update #UNDER CONSTRUCTION
    puts "Which field would you like to update?"
    puts "[1] First Name"
    puts "[2] Last Name"
    puts "[3] Email"
    puts "[4] Note"
    puts "Enter a number:"
    update_field = gets.chomp
  end

  def self.find_by(field_name, value) #search contacts by field_name
    case field_name
    when "first_name" then index = @@contacts.find_index { |contact| contact.first_name == value }
    when "last_name" then index = @@contacts.find_index { |contact| contact.last_name == value }
    when "email" then index = @@contacts.find_index { |contact| contact.email == value }
    end

    if index != nil
      puts @@contacts[index].full_name
    else
      puts "Contact not found"
    end
  end

  def self.delete_all # delete all of the contact
    @@contacts.clear
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.

end

#---- Test Code ----#

# betty = Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
# courtney = Contact.create('Courtney', 'Noonan', 'courtneynoonan@me.com', 'working hard')
# james = Contact.create('James', 'Bibby', 'james@me.com', 'cuteness')
#
#
# puts "self.all"
# Contact.all
# puts
# puts
# puts "self.find(id)"
# Contact.find(2)
# puts
# puts "find by first name"
# Contact.find_by("last_name1", "Bibby")
# puts ".update"
# courtney.update
# puts
# puts "Delete all contacts"
# Contact.delete_all
# puts
# puts "Test for contacts"
# Contact.all
