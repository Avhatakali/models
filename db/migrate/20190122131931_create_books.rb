class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :author
      t.date :published_date

      t.timestamps
    end
  end
end