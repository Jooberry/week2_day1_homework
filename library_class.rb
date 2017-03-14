class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def list_books
    return @books
  end

  def book_info(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

def rental_info(title)
  for book in @books
    if book[:title] == title
      return book[:rental_details]
    end
  end
end

def add_book(title)
  @books.push({
    title: "shopaholic",
    rental_details: {
      student_name: "",
      date: ""
    }
  })
end

def change_rental_details(title, name, date)
  for book in @books
    if book[:title] == book
      book[:rental_details] = { student_name: student, date: due_date }
    end
  end
end




end