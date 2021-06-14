class CreateLinuxes < ActiveRecord::Migration[6.0]
  def change
    create_table :linuxes do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
