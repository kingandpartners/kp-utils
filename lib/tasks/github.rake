namespace :github do

  desc "creating new release in github"
  task create_release: :environment do

    begin
      owner = KP::Utils.github[:repo_owner]
      repo  = KP::Utils.github[:repo_name]
      token = KP::Utils.github[:deploy_token]
      auth  = "-H 'Authorization: token #{token}'"

      current_branch = `git rev-parse --abbrev-ref HEAD`
      target         = `git branch | grep \* | cut -d ' ' -f2`
      prerelease     = !Rails.env.production?

      params = {
        tag_name:         "#{target}-#{Time.now.strftime('%F-%H-%M-%S')}", 
        target_commitish: target, 
        name:             "#{Rails.env.upcase} DEPLOY: #{Time.now.strftime('%A : %B %e, %Y : %R')}", 
        draft:            false, 
        prerelease:       prerelease
        #body: 'Description of the release', # FIX ME: to do: add commits of release diff
      }

      system "curl #{auth} https://api.github.com/repos/#{owner}/#{repo}/releases -d '#{params.to_json}'"
    rescue Exception => e
      puts "Failure: Could not create release"
      puts "Error: #{e.inspect}"
    ensure
    end

  end

end