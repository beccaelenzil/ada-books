require "test_helper"

describe BooksController do
  it "should get index" do
    get "/books"
    must_respond_with :success
  end

  it "can get books path even with no books" do
    #delete all books
    get "/books"
    must_respond_with :success
  end

  it "will get a book for valid id" do
    valid_id = 1

    get "/books/#{valid_id}"

    must_respond_with :success
  end

  it "will respond with not found for invalid id" do
    invalid_id = 999

    get "/books/#{invalid_id}"

    must_respond_with :not_found
  end
end
