
class Medicine < ApplicationRecord
  enum med_type: {tablet: 0, capsule: 1, syrup: 2 }
  def self.seed
    require 'csv'
    table = CSV.parse(File.read(Rails.root.to_s + '/files/drugs_names.csv'), headers: true)
    table.each_slice(1500) do |rows|
      data_hash = []
      rows.each do |row|
        data_hash << {
            medicine_code: row[0],
            name: row[1],
            created_at: Time.now,
            updated_at: Time.now
        }
      end
      Medicine.insert_all(data_hash)
    end
  end
end
