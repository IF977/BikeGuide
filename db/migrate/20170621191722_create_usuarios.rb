
class CreateUsuarios < ActiveRecord::Migration
   def self.up
      create_table :usuarios do |t|
         t.string  :email, :limit => 50
         t.string  :senha, :limit => 20
         t.string  :nome,  :limit => 50
         t.string  :CPF,   :limit => 14
         t.timestamps
      end
   end
 
   def self.down
      drop_table :usuarios
   end
end
