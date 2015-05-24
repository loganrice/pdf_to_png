class ClaimsController < ApplicationController
  def index
    @claims = Claim.all
  end

  def new
    @claim = Claim.new
  end

  def edit
    @claim = Claim.find(params[:id])
  end

  def create
    claim = Claim.new(claim_params)
    if claim.save
      redirect_to claim_path(claim)
    else
      render :claim
    end
  end

  def update
    claim = Claim.find(params[:id])
    if claim.update(claim_params)
      redirect_to claims_path
    else
      render :edit
    end
  end

  def show
    @claim = Claim.find(params[:id])
  end

  def destroy
    Claim.find(params[:id]).destroy
    redirect_to claims_path
  end

  private

  def claim_params
    params.require(:claim).permit(
      :client_address,
      :client_city,
      :client_first_name,
      :initial_contact_date,
      :client_contact_time,
      :gender,
      :retained_services_date,
      :retained_services_time,
      :client_zip_code,
      :client_state,
      :client_claim_number,
      :notes,
      :client_last_name,
      :body_type,
      :photo_provided_by,
      :year,
      :make,
      :model,
      :color,
      :mileage,
      :vin,
      :transmission,
      :drivetrain,
      :engine_size,
      :date_of_loss,
      :picture,
      vehicle_photos_attributes: [ 
        :vehicle,
        :id,
        :_destroy
                            ]
    )
  end
end
