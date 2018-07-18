require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# Allow app to handle patch and delete requests
use Rack::MethodOverride

run ApplicationController
