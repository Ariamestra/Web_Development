json.extract! books_library, :id, :book_id, :library_id, :created_at, :updated_at
json.url books_library_url(books_library, format: :json)
