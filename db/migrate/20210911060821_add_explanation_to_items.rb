class AddExplanationToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :explanation, :string
  end
end
