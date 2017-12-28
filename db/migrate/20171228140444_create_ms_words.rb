class CreateMsWords < ActiveRecord::Migration
  def change
    create_table :ms_words do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
