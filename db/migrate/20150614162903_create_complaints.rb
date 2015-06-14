class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
