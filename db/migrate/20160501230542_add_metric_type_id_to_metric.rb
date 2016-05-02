class AddMetricTypeIdToMetric < ActiveRecord::Migration
  def change
    add_column :metrics, :metric_type_id, :integer
  end
end
