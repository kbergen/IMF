class AddincidentArtifactsToIncident < ActiveRecord::Migration
  def change
		add_column :incidents, :incident_artifacts, :string, default: "None"
  end
end
