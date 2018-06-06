class RegisterController < ApplicationController

  def index
    @register = Register.all
  end

  def new
    @register = Register.new
  end

  def show
    @register = Register.find(params[:id])
  end

  def edit
    @register = Register.find(params[:id])
  end

  def create
    @register = Register.new(register_params)
      respond_to do |format|
        if @register.save
          format.html { render 'welcome/homepage', notice: 'Evento was successfully created.' }
          format.json { render :show, status: :created, location: @register }
        else
          format.html { render :new }
          format.json { render json: @register.errors, status: :unprocessable_entity }
        end
      end
    end

  def update
    @register = Register.find(params[:id])

    if @register.update(register_params)
      redirect_to new
    else
      render 'edit'
    end
  end

  private

  def register_params
    params.require(:register).permit(:nome, :email)
  end
end
