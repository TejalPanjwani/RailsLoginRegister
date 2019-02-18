class CreateServies < ActiveRecord::Migration[5.2]
  def change
    create_table :servies do |t|
      t.string :image
      t.string :service_name
      t.string :address
      t.string :city
      t.string :contact
      t.string :description

      t.timestamps
    end
  end
end
