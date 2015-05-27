class AddForeignKeys < ActiveRecord::Migration
    def change
        change_table :bakes do |t|
            t.references :user
        end

		change_table :reviews do |t|
            t.references :user
        end

    end
end