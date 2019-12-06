the_doctor = User.create(name: "The Doctor")
book = Book.create(title: "Tardis Manual")

the_doctor.check_out_book(book, due_date: "September 1st, 2016")