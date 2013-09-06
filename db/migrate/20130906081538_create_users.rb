class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #Cretae Table Format
      #t.column "name", :type, options
              #OR
      #t.type "name", options #new style(sexy migrations)
      
      #Table column types
      #binary,boolean,date,datetime,decimal,float,integer,string,text,time
      
      #Table column options
        #:limit => size
        #:default => value
        #:null => true/false
        #:precision => number
        #:scale => number
      
      #t.integer "id" #built in
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => "" , :null =>false
      t.string "password", :limit => 40
      #Following are very common, and is part of the rails as t.timestamps
        #t.datetime "created_at"
        #t.datetime "updated_at"
      t.timestamps
    end
  end
end
