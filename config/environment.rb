# Load the Rails application.
require File.expand_path('../application', __FILE__)

AWS_SETTINGS = YAML.load_file("#{Rails.root}/config/aws_dynamo.yml")

# Initialize the Rails application.
Rails.application.initialize!

Aws.init
