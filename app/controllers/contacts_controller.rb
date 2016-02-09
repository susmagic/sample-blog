class ContactsController < ApplicationController

  def new

  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      @contact.save
    else
      #возвращаем страницу new
      render action: 'new'
    end

  end

  #сохраняем аттрибуты
  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
