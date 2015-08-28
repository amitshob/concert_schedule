class CreateVenuesTable < ActiveRecord::Migration
  def change
    create_table(:venue) do |t|
      t.column(:name, :string)
      # t.column(:rating, :integer)

      t.timestamp()
  end
end
