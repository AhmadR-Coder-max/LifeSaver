class MedicineController < ApplicationController
  def index
    # Geocoder::Calculations.distance_between([31.506432, 74.32437759999999], [32.1270461, 74.210813])
  end

  def list
    data = Medicine.where("name LIKE ?", "%#{params[:name]}%").limit(10).pluck(:name, :medicine_code)
    render json: data
  end
end
