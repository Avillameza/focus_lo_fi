class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics, id: :string do |t|
      t.string :name
      t.string :description
      t.bigint :user_id

      t.timestamps
    end
    add_foreign_key :topics, :users, column: :user_id
    add_index(:topics, :user_id)
  end
end
