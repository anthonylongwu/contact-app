class ContactsController < ApplicationController
  def index
    @all_contacts = Contact.all
  end

  def submit
    # @all_contacts = Contact.all
    # contact = params[:contact]
    # @all_contacts << contact 
  end

  def result
    # @all_contacts = Contact.all
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone_number = params[:phone_number]
    Contact.create(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number)

  end

end
