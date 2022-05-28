#!/usr/bin/ruby
require "digest/md5"
require "json"
require_relative "./alfred_workflow.rb"

$wf = Alfred::Workflow.new
ar1 = ARGV[0]

def local_md5(input)
  unless input.nil? || input.length == 0 then
    $md5String = Digest::MD5.hexdigest(input)
    print $wf.output(
      title: $md5String,
      subtitle: "Press enter to paste or ⌘C to copy",
      arg: $md5String,
    )
  end
end

local_md5(ar1)
