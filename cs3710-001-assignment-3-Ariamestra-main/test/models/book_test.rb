require 'test_helper'

class BookTest < ActiveSupport::TestCase

  setup do
    @person = Person.create!(name: 'Author Name')
  end

  test 'Good Book' do
    book = Book.create!(person: @person, title: 'Book Title', isbn: 'ISBN 978-3-161-48410-0')
  end

  test 'Book: Bad title too long' do
    exception = assert_raise(ActiveRecord::RecordInvalid){
      book = Book.create!(person: @person, title: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', isbn: 'ISBN 978-3-161-48410-0')
    }
    assert_equal(exception.message, "Validation failed: Title is too long (maximum is 50 characters)")
  end

  test 'Book: Bad title too short' do
    exception = assert_raise(ActiveRecord::RecordInvalid){
      book = Book.create!(person: @person, title: 'B', isbn: 'ISBN 978-3-161-48410-0')
    }
    assert_equal(exception.message, "Validation failed: Title is too short (minimum is 2 characters)")
  end

  test 'Book: Bad ISBN too long' do
    exception = assert_raise(ActiveRecord::RecordInvalid){
      book = Book.create!(person: @person, title: 'Book Title', isbn: '1234567890000000')
    }
    assert_equal(exception.message, "Validation failed: Isbn is invalid")
  end

  test 'Book: Bad ISBN too short' do
    exception = assert_raise(ActiveRecord::RecordInvalid){
      book = Book.create!(person: @person, title: 'Book Title', isbn: '1234')
    }
    assert_equal(exception.message, "Validation failed: Isbn is invalid")
  end
end
