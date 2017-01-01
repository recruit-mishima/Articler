class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string      :title
      t.string      :author
      t.integer    :date
      t.text        :abstract
      t.timestamps
    end
  end
end
