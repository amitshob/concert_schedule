class RenameBandTable < ActiveRecord::Migration
  def self.up
    rename_table :band, :bands
  end
end
