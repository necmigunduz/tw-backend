class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :q_text
      t.string :image

      t.timestamps
    end
  end
end
