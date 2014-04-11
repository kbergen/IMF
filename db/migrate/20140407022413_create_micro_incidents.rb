class CreateMicroIncidents < ActiveRecord::Migration
  def change
    create_table :micro_incidents do |t|
      t.string :internal_malicious_ip
      t.string :internal_exploit_kit
      t.string :internal_malicious_url
      t.string :internal_malicious_resource
      t.string :internal_geographic_location
      t.string :internal_referrer_chian
      t.string :internal_mal_exe
      t.string :internal_mal_jar
      t.string :internal_mal_pdf
      t.string :internal_mal_xls
      t.string :internal_mal_doc
      t.string :internal_mal_eml
      t.references :incident, index: true

      t.timestamps
    end
  end
end
