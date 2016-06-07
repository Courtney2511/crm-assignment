require_relative 'contact'

class CRM

  def initialize(name)
    @name = name
    @contacts = []
  end

  def main_menu #calls to print_main_menu
    while true  #because the program evaluates to true??  understand this concept.
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected) #takes the users number as input for call_option
    end
  end

  def print_main_menu   #prints the main menu options
    puts "\e[H\e[2J" #to clear screen
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number:'
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then Exit
    end
  end

  def add_new_contact
    puts "\e[H\e[2J" #to clear screen
    print 'Enter first name:'
    first_name = gets.chomp
    print 'Enter last name: '
    last_name = gets.chomp
    print 'Enter email address: '
    email = gets.chomp
    print 'Enter note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    print "Enter the contact ID"
    id = gets.chomp.to_i

  end

  def delete_contact

  end

  # This method should accept as an argument an array of contacts
  # and display each contact in that array
  def display_contacts


    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods to keep your code DRY
  end

  def display_all_contacts
    Contact.all

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  def search_by_attribute

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  # Add other methods here, if you need them.

end

crm = CRM.new("crm")
crm.main_menu
