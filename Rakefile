
task :sync_rxjs_repo do
  unless Dir.exist?('tmp/RxJS')
    `git clone https://github.com/Reactive-Extensions/RxJS.git tmp/RxJS`
  end
  `cd tmp/RxJS && git pull`
end

desc 'update asset files to RxJS version'
task(:update, [:version] => :sync_rxjs_repo) do |t,args|

  `cd tmp/RxJS && git co -b #{args[:version]}`
  `cd tmp/RxJS && npm install`
  `cd tmp/RxJS && grunt`
  `rm -f vendor/assets/javascipts/*.js`
  `cp tmp/RxJS/rx*js vendor/assets/javascripts/`

end

