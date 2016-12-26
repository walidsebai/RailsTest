class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :contenu
      t.datetime :pdate
      t.belongs_to :user , index: true
      t.timestamps
    end
  end
end
