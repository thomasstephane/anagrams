class CreateCanons < ActiveRecord::Migration
  def change
    create_table :canons do |t|
      t.string :canon
    end
  end
end
