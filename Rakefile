require 'yaml'
require 'rake_terraform'

RakeTerraform.define_installation_tasks(
    path: File.join(Dir.pwd, 'vendor', 'terraform'),
    version: '0.11.8')

namespace :main do
  RakeTerraform.define_command_tasks do |t|
    t.argument_names = [:deployment_id]

    t.configuration_name = 'main'
    t.source_directory = 'src'
    t.work_directory = 'build'

    t.state_file = lambda do |args|
      File.join(Dir.pwd, "state/main/#{args.deployment_id}.tfstate")
    end

    t.vars = lambda do |args|
      args.to_hash
          .merge(YAML.load_file("config/#{args.deployment_id}.yaml"))
    end
  end
end
