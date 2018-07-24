class DefectsController < ApplicationController
	before_action :get_defect, only: [:show, :update, :destroy]

  def index
    @defects = Defect.all
    if @defects
      render json: @defects, status: 200
    else
      render json: {errors: @defects.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    if @defect
      render json: @defect, status: 200
    else
      render json:'', status: 404
    end
  end

  def create
    @defect = Defect.new(defect_params)
    if @defect.save
      render json: @defect, status: 200
    else
      render json: {errors: @defect.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    if @defect.update(defect_params)
      render json: @defect, status: 200
    else
      render json: {errors: @defect.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @defect.destroy
  end

  private

  def get_defect
    @defect = Defect.find_by(id: params[:id])
  end

  def defect_params
    params.require(:defect_info).permit(:defect_number, :defect_desc)
  end
end
