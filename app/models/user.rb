class User < ActiveRecord::Base
    has_many :checkouts
    has_many :books, through: :checkouts

    def check_out_book(book, due_date)
        Checkout.create(user_id: self.id, book_id: book.id, due_date: due_date)
    end

    def return_book(book)
        target_checkout = self.checkouts.find_by(book_id: book.id)
        target_checkout.returned = true
        target_checkout.save
    end
end