
task :sync_rxjs_repo do
  unless Dir.exist?('tmp/RxJS')
    `git clone https://github.com/Reactive-Extensions/RxJS.git tmp/RxJS`
  end
  `cd tmp/RxJS && git fetch`
end

desc 'update asset files to RxJS version (vX.X.X)'
task(:update, [:version] => :sync_rxjs_repo) do |t,args|
  %x{
    cd tmp/RxJS
    git co -b #{args[:version]}
    rm -f vendor/assets/javascipts/*.js
    cp tmp/RxJS/dist/rx*js vendor/assets/javascripts/
    m4 -D version=#{args[:version].gsub(/^v/i, '')} version.rb.m4 > lib/rxjs/rails/version.rb
  }
end

