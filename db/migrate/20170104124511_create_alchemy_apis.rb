class CreateAlchemyApis < ActiveRecord::Migration
  def change
    create_table :alchemy_apis do |t|

      t.timestamps null: false
    end
  end
end
