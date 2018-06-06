class ContactsController < ApplicationController
  def new
        @contact = Contact.new
    end

    def create
      @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver
        flash[:success] = "Mensagem Enviada"
        redirect_to welcome_homepage_path.concat"#forms-w"
      else
        flash[:error] = 'Mensagem não enviada, revise os campos a ser preenchidos'
        redirect_to welcome_homepage_path.concat"#forms-w"
      end
    end
end
