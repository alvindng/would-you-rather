class CreateQuestion < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :prompt, :string
      t.column :option1, :string
      t.column :option2, :string

      t.timestamps
    end
  end
end
