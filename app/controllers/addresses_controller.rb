class AddressesController < ApplicationController
  before_action :get_address, only: [:show, :edit, :update, :destroy]

  def index
    @title = 'Addresses'
    @addresses = current_user.addresses
  end

  def show
    @title = 'Address'
  end

  def new
    @title = 'New Address'
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id
    if @address.save
      flash[:notice] = "Address saved successfully"
      redirect_to addresses_path
    else
      flash[:alert] = "Failed to save address"
      render :new
    end
  end

  def edit
    @title = 'Edit Address'
  end

  def update
    @title = 'Update Address'
    if @address.update_attributes(address_params)
      flash[:notice] = "Address saved successfully"
      redirect_to addresses_path
    else
      flash[:alert] = "Failed to save address"
      render :edit
    end
  end

  def destroy
    @title = 'Delete Address'
    @address.destroy
    redirect_to :back
  end

  private

  def get_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:description, :zip, :street1, :street2, :city, :state, :country, :phone)
  end
end
