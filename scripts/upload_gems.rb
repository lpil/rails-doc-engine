#!/usr/bin/env ruby

require "fileutils"
require "mkmf"

abort "AWS CLI not install" unless find_executable "aws"

FileUtils.mkdir_p "tmp/gems/gems/"
gems = Dir.glob "*.gem"

puts "Copying gems to tmp/"
FileUtils.cp gems, "tmp/gems/gems/"

FileUtils.cd "tmp/gems/" do
  puts "Generating gem index"
  puts `gem generate_index -V`

  destination = "s3://assets.roli.com/gems/doc_server/"
  puts "Uploading to #{destination} --region us-west-2"
  system "aws s3 sync . #{destination}"
  abort "\nUpload failed! Are you logged into the AWS CLI?" unless $?.success?
end
