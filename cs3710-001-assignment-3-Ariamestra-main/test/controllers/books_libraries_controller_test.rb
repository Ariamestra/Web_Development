require "test_helper"

class BooksLibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @books_library = books_libraries(:one)
  end

  test "should get index" do
    get books_libraries_url
    assert_response :success
  end

  test "should get new" do
    get new_books_library_url
    assert_response :success
  end

  test "should create books_library" do
    assert_difference("BooksLibraries.count") do
      post books_libraries_url, params: { books_library: { book_id: @books_library.book_id, library_id: @books_library.library_id } }
    end

    assert_redirected_to books_library_url(BooksLibraries.last)
  end

  test "should show books_library" do
    get books_libraries_url(@books_library)
    assert_response :success
  end

  test "should get edit" do
    get edit_books_library_url(@books_library)
    assert_response :success
  end

  test "should update books_library" do
    patch books_library_url(@books_library), params: { books_library: { book_id: @books_library.book_id, library_id: @books_library.library_id } }
    assert_redirected_to books_library_url(@books_library)
  end

  test "should destroy books_library" do
    assert_difference("BooksLibraries.count", -1) do
      delete books_library_url(@books_library)
    end

    assert_redirected_to books_libraries_url
  end
end
