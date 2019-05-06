class CreateJoinTablePostDumpster < ActiveRecord::Migration[5.2]
  def change
    create_join_table :posts, :dumpsters do |t|
      # t.index [:post_id, :dumpster_id]
      # t.index [:dumpster_id, :post_id]
    end
  end
end
