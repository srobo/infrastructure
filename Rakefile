require 'rake_terraform'

RakeTerraform.define_installation_tasks(
    path: File.join(Dir.pwd, 'vendor', 'terraform'),
    version: '0.11.8')

namespace :infrastructure do
  RakeTerraform.define_command_tasks do |t|
    t.argument_names = [:deployment_id]

    t.configuration_name = 'infrastructure'
    t.source_directory = 'src'
    t.work_directory = 'build'

    t.state_file = lambda do |args|
      File.join(Dir.pwd, "state/bootstrap/#{args.deployment_id}.tfstate")
    end

    t.vars = lambda do |args|
      {
          deployment_id: args.deployment_id,
          domain_name: "studentrobotics.co.uk"
      }
    end
  end
end
