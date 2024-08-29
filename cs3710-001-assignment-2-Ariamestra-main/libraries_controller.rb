def update
  @library = Library.find(params[:id])
  if @library.update(library_params)
    redirect_to @library
  else
    render 'edit'
  end
end

