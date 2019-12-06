class RenameReturnedColumn < ActiveRecord::Migration[5.0]
    def change
        rename_column :checkouts, :returned?, :returned
    end
end