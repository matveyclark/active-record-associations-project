class CreateCheckout < ActiveRecord::Migration[5.0]
    def change
        create_table :checkouts do |t|
            t.integer :book_id
            t.integer :user_id
            t.string :due_date
        end
    end
end