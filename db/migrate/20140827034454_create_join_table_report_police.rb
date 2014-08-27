class CreateJoinTableReportPolice < ActiveRecord::Migration
  def change
    create_join_table :reports, :police do |t|
      # t.index [:report_id, :police_id]
      # t.index [:police_id, :report_id]
    end
  end
end
