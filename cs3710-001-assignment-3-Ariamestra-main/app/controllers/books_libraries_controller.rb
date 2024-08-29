class BooksLibrariesController < ApplicationController
  before_action :set_books_library, only: %i[ show edit update destroy ]

  # GET /books_libraries or /books_libraries.json
  def index
    @books_libraries = BooksLibraries.all
  end

  # GET /books_libraries/1 or /books_libraries/1.json
  def show
  end

  # GET /books_libraries/new
  def new
    @books_library = BooksLibraries.new
  end

  # GET /books_libraries/1/edit
  def edit
  end

  # POST /books_libraries or /books_libraries.json
  def create
    @books_library = BooksLibraries.new(books_library_params)

    respond_to do |format|
      if @books_library.save
        format.html { redirect_to books_library_url(@books_library), notice: "Books libraries was successfully created." }
        format.json { render :show, status: :created, location: @books_library }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @books_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books_libraries/1 or /books_libraries/1.json
  def update
    respond_to do |format|
      if @books_library.update(books_library_params)
        format.html { redirect_to books_library_url(@books_library), notice: "Books libraries was successfully updated." }
        format.json { render :show, status: :ok, location: @books_library }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @books_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books_libraries/1 or /books_libraries/1.json
  def destroy
    @books_library.destroy

    respond_to do |format|
      format.html { redirect_to books_libraries_url, notice: "Books libraries was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_books_library
      @books_library = BooksLibraries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def books_library_params
      params.require(:books_library).permit(:book_id, :library_id)
    end
end
