require "fileutils"
require "rake"

task :init do |t, args|
  repo_name = ENV["REPO"]
  abort "Usage: REPO_NAME=PATH rake init" unless repo_name
  source_branch = "source"
  system "cp -R boilerplate/* #{repo_name}"

  FileUtils.cd repo_name do
    system "bundle"
    system "git checkout -b #{source_branch}"
    system "git add ."
  end
end
