class UpdateQuestionModel < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :option1_count, :integer, default: 0
    add_column :questions, :option2_count, :integer, default: 0
  end
end
