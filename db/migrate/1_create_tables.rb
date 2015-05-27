class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :bakes do |t|
      # Your code goes here
      t.string :title
      t.string :picture_caption
      t.decimal :rating
      t.text :ingredients
      t.text :reviews
      t.timestamps
    end

    create_table :reviews do |t|
      t.text :review
      t.string :user
      t.string :title
      t.timestamps
    end

  end

end