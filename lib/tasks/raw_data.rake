require "#{Rails.root}/lib/load_data"

namespace :raw_data do
  desc "reload ec2 data"
  task load_ec2: :environment do
    Instance.delete_all
    AwsData.load_ec2
  end

end
