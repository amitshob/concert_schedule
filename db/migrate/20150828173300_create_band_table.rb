class CreateBandTable < ActiveRecord::Migration
  def change
    create_table(:band) do |t|
      t.column(:name, :string)
      # t.column(:rating, :integer)

      t.timestamp()
    end
  end
end
