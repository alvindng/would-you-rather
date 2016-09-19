class CreateAnswer < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.column :question_id, :integer
      t.column :selection, :string
      t.timestamps
    end
  end
end
