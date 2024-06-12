class CreareArtigos < ActiveRecord::Migration[7.1]
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :descricao
    
      t.timestamps
    end
    
  end
end
