class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def create
    coordinates = Geocoder.coordinates(params[:address])
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone_number = params[:phone_number]
    address = params[:address]
    contact = Contact.create(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number, latitude: coordinates[0], longitude: coordinates[1])

    # @all_contacts = Contact.all
    # contact = params[:contact]
    # @all_contacts << contact 
  end

  def new
  end

  def show
    id =  params[:id]
    @contact = contact.find_by(id: id)
  end

  def edit
    id = params[:id]
    @contact = contact.find_by(id: id)
  end
 

  def update
      id = params[:id]
      contact = contact.find_by(id: id)
      first_name = params[:first_name]
      last_name = params[:last_name]
      email = params[:email]
      phone_number = params[:phone_number]
      address = params[:address]
      contact = Contact.update(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number, address: address)
  end
  
  def destroy
      id = params[:id]
      contact = Contact.find_by(id: id)
      contact.destroy
  end
end
  