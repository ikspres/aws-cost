require "#{Rails.root}/lib/load_data"

namespace :raw_data do
  desc "load ec2 data"
  task load_ec2: :environment do
    AwsData.load_ec2
  end

end
