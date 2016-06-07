
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
    @id = @@id #increases the id number each time a contact is created
    @@id += 1
  end

  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note) #this is where the initializer is called
    @@contacts << new_contact
    return new_contact
  end

  def self.all  #iterate over the contacts array to display the first and last name WORKING ON THIS
    @@contacts.each { |x| puts x }
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    p @@contacts[id] #will this work?????


  end


  #--- Instance Methods ---#

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update


  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by

  end

  def self.delete_all # This method should delete all of the contacts
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

betty = Contact.new('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
courtney = Contact.new('Courtney', 'Noonan', 'courtneynoonan@me.com', 'working hard')
james = Contact.new('James', 'Bibby', 'james@me.com', 'cuteness')

Contact.all
