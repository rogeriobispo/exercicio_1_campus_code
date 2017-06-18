class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.string :portugues
      t.string :ingles

      t.timestamps
    end
  end
end
