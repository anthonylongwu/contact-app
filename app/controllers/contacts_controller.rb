class ContactsController < ApplicationController
  def index
    @all_contacts = Contact.all
  end

  def submit
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone_number = params[:phone_number]
    contact = Contact.create(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number)

    # @all_contacts = Contact.all
    # contact = params[:contact]
    # @all_contacts << contact 
  end

  def result
    # id = params[:id]

    # @all_contacts = Contact.all
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone_number = params[:phone_number]
    contact = Contact.create(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number)
  end

  def update
      id = params[:id]
      contact = contact.find_by(id: id)
      first_name = params[:first_name]
      last_name = params[:last_name]
      email = params[:email]
      phone_number = params[:phone_number]
      contact = Contact.update(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number)
  end
  def destroy
      id = params[:id]
      contact = Contact.find_by(id: id)
      contact.destroy
  end
  def full_name

  end
  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

end
  