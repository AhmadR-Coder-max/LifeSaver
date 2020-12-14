class MedicineController < ApplicationController
  def index
  end

  def list
    data = Medicine.where("name LIKE ?", "%#{params[:name]}%").limit(10).pluck(:name, :medicine_code)
    render json: data
  end
end
