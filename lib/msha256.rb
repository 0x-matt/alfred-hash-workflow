#!/usr/bin/ruby
require "digest"
require "json"
require_relative "./alfred_workflow.rb"

$wf = Alfred::Workflow.new
ar1 = ARGV[0]

def local_sha256(input)
  unless input.nil? || input.length == 0 then
    $md5String = Digest::SHA256.hexdigest(input)
    print $wf.output(
      title: $md5String,
      subtitle: "Press enter to paste or ⌘C to copy",
      arg: $md5String,
    )
  end
end

local_sha256(ar1)
