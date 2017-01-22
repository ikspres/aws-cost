require 'csv'

class String
  def snake_case
    return downcase if match(/\A[A-Z]+\z/)
      gsub("S/W", "sw").
      gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
      gsub(/([a-z])([A-Z])/, '\1_\2').
      gsub('/', '_').
      gsub(' ', '_').
      downcase
  end
end

module AwsData

  # You need to download CSV using 'wget_ec2.sh' before running 'load_ec2'
  def AwsData.load_ec2
    cols = [
      [18, "instance_type",],
      [37, "operating_system",],
      [63, "pre_installed_sw",],
      [9, "price_per_unit",],
      [8, "unit",],
      [3, "term_type",],
      [11, "lease_contract_length",],
      [12, "purchase_option",],
      [16, "location",],
      [21, "vcpu",],
      [24, "memory",],
      [25, "storage",],
      [22, "physical_processor",],
      [23, "clock_speed",],
    ]

    filename = "#{Rails.root}/lib/ec2.csv"
    CSV.foreach( filename, 
                converters: :numeric, 
                header_converters: lambda {|h| h.snake_case},
                headers: true
               ) do |row|

      h = {}
      cols.each { |i, c| h[c] = row[i] }
      Instance.create h
    end
  end

end

