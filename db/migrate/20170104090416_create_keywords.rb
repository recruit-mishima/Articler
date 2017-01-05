class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.text      :keyword
      t.integer      :article_id
      t.timestamps
    end
  end
end
