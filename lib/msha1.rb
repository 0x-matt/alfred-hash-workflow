#!/usr/bin/ruby
require "digest/sha1"
require "json"
require_relative "./alfred_workflow.rb"

$wf = Alfred::Workflow.new
ar1 = ARGV[0]

def local_sha1(input)
  unless input.nil? || input.length == 0 then
    $md5String = Digest::SHA1.hexdigest(input)
    print $wf.output(
      title: $md5String,
      subtitle: "Press enter to paste or ⌘C to copy",
      arg: $md5String,
    )
  end
end

local_sha1(ar1)
