class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      # Блок
      t.string  :name
      t.text    :description
    end
  end
end