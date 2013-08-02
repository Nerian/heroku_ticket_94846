class Deploy < Thor
  include Thor::Actions

  desc "deploy_staging", "Deploy to Staging"
  def staging
    run('heroku run ruby -v')
  end

  default_task :staging

end