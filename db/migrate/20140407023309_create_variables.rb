class CreateVariables < ActiveRecord::Migration
  def change
    create_table :variables do |t|
      t.text :location_options
      t.text :exploited_application_options
      t.text :social_engineering_options
      t.text :user_permissions_options
      t.text :operating_system_options
      t.text :incident_cause_options
      t.text :external_impact
      t.text :incident_category_options

      t.timestamps
    end
  end
end
