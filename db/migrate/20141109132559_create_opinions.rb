class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.text :content
      t.float :stars
      t.string :job
      t.integer :hr

      t.timestamps
    end
  end
end
