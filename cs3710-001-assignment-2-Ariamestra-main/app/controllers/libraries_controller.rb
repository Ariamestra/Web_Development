class LibrariesController < ApplicationController

  before_action :set_library, only: %i[ show edit update destroy ]

  # GET /libraries
  def index
    @libraries = Library.all
  end

  # GET /libraries/1
  def show
  end

  # GET /libraries/new
  def new
    @library = Library.new
  end

  # GET /libraries/1/edit
  def edit
    @library = Library.find(params[:id])
  end

  # POST /libraries
  def create
    @library = Library.new(library_params)

    if @library.save
      redirect_to @library, notice: "Library was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /libraries/1
  def update
    if @library.update(library_params)
      redirect_to @library, notice: "Library was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /libraries/1
  def destroy
    @library.destroy
    redirect_to libraries_url, notice: "Library was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library
      @library = Library.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def library_params
      params.require(:library).permit(:name, :address, :telephone, :county_id)
    end
end
