require 'active_record'

ActiveRecord::Base.configurations = YAML::load(IO.read('database.yml'))


class Schema < ActiveRecord::Migration
  def setup
    create_table :tweets, id: false do |t|
      # we'll use the id to store the actual tweet ID
      t.integer :id
      t.string :text
      t.datetime :created_at
      t.index :created_at
    end

    execute %Q{ ALTER TABLE "tweets" ADD PRIMARY KEY ("id") }
  end

  def teardown
    drop_table :tweets
  end
end