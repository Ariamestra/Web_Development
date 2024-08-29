class CountiesController < ApplicationController
  before_action :set_county, only: %i[ show edit update destroy ]

  # GET /counties
  def index
    @counties = County.all
  end

  # GET /counties/1
  def show
  end

  # GET /counties/new
  def new
    @county = County.new
  end

  # GET /counties/1/edit
  def edit
  end

  # POST /counties
  def create
    @county = County.new(county_params)

    if @county.save
      redirect_to @county, notice: "County was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /counties/1
  def update
    if @county.update(county_params)
      redirect_to @county, notice: "County was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /counties/1
  def destroy
    @county.destroy
    redirect_to counties_url, notice: "County was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_county
      @county = County.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def county_params
      params.require(:county).permit(:name, :population, :coordinates)
    end
end
