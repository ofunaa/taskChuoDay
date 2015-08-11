class CreateCancells < ActiveRecord::Migration
  def change
    create_table :cancells do |t|
      t.string :date
      t.string :week
      t.string :subject
      t.string :teacher
      t.timestamps
    end
  end
end
