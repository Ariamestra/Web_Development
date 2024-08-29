require "application_system_test_case"

class BooksLibrariesTest < ApplicationSystemTestCase
  setup do
    @books_library = books_libraries(:one)
  end

  test "visiting the index" do
    visit books_libraries_url
    assert_selector "h1", text: "Books libraries"
  end

  test "should create books libraries" do
    visit books_libraries_url
    click_on "New books libraries"

    fill_in "Book", with: @books_library.book_id
    fill_in "Library", with: @books_library.library_id
    click_on "Create Books libraries"

    assert_text "Books libraries was successfully created"
    click_on "Back"
  end

  test "should update Books libraries" do
    visit books_library_url(@books_library)
    click_on "Edit this books libraries", match: :first

    fill_in "Book", with: @books_library.book_id
    fill_in "Library", with: @books_library.library_id
    click_on "Update Books libraries"

    assert_text "Books libraries was successfully updated"
    click_on "Back"
  end

  test "should destroy Books libraries" do
    visit books_library_url(@books_library)
    click_on "Destroy this books libraries", match: :first

    assert_text "Books libraries was successfully destroyed"
  end
end
