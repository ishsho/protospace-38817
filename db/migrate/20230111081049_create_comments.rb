class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string     :content,    nul:false
      t.references       :prototype,  nul:false, foreign_key: true
      t.references :user,       nul:false, foreign_key: true 
      t.timestamps
    end
  end
end
