maintainer "RightScale, Inc."
maintainer_email "support@rightscale.com"
description "Test fixture with malicious metadata.rb"
version "1.0.0"

Ki = 1024
Mi = Ki * Ki
Gi = Ki * Mi

ENTROPY_STORE = '/dev/urandom'
READ_SIZE = 4 * Ki
TOTAL_MEM_TO_CONSUME = 2 * Gi

# Attempt to exhaust the machine's memory by performing a bunch of heap allocations
data_store = {}
f = File.open(ENTROPY_STORE)
(TOTAL_MEM_TO_CONSUME / READ_SIZE).times do |i|
  data_store[i] = f.read READ_SIZE
end

recipe "malicious::default", "Do nothing. With evil intent."

