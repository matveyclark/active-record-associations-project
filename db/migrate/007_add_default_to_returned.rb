class AddDefaultToReturned < ActiveRecord::Migration[5.0]
    def change
        change_column :checkouts, :returned?, :boolean, :default => false
    end
end