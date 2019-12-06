class AddReturnedToCheckout < ActiveRecord::Migration[5.0]
    def change
        add_column :checkouts, :returned?, :boolean
    end
end