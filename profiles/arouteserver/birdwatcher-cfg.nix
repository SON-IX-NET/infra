{ pkgs, management_network }: 

''
#
# Birdwatcher Configuration
#

[server]
# Restrict access to certain IPs or CIDRs. Leave empty to allow from all.
allow_from = [
]
# Allow queries that bypass the cache
allow_uncached = false

# Available modules:
## low-level modules (translation from birdc output to JSON objects)
#   status
#   symbols
#   symbols_tables
#   symbols_protocols
#   protocols
#   protocols_bgp
#   protocols_short
#   routes_protocol
#   routes_peer
#   routes_table
#   routes_table_filtered
#   routes_table_peer
#   routes_count_protocol
#   routes_count_table
#   routes_count_primary
#   routes_filtered
#   routes_prefixed
#   routes_export
#   routes_noexport
#   route_net
#   routes_pipe_filtered_count
#   routes_pipe_filtered
#   route_net_mask


modules_enabled = ["status",
                   "protocols",
                   "protocols_bgp",
                   "protocols_short",
                   "routes_protocol",
                   "routes_peer",
                   "routes_table",
                   "routes_table_filtered",
                   "routes_table_peer",
                   "routes_filtered",
                   "routes_prefixed",
                   "routes_noexport",
                   "routes_pipe_filtered_count",
                   "routes_pipe_filtered"
                  ]

[status]
#
# Where to get the reconfigure timestamp from:
# Available sources: bird, config_regex, config_modified
#
reconfig_timestamp_source = "bird"
reconfig_timestamp_match = "# Created: (.*)"

# Remove fields e.g. last_reboot
filter_fields = []

[ratelimit]
enabled = true
requests_per_minute = 10

[bird]
listen = "0.0.0.0:29184"
config = "/var/lib/arouteserver/bird2.conf"
birdc  = "${pkgs.bird}/bin/birdc"
ttl = 5 # time to live (in minutes) for caching of cli output
# When dualstack is set to true, birdwatcher will combine queries for both
#   protocol versions into a single API.
# When dualstack is set to false, birdwatcher will use the presence or absense
#   of the "-6" CLI flag to set a protocol stack to query for
dualstack = false

[bird6]
listen = "0.0.0.0:29186"
config = "/var/lib/arouteserver/bird2.conf"
birdc  = "${pkgs.bird}/bin/birdc"
ttl = 5 # time to live (in minutes) for caching of cli output
# When dualstack is set to true, birdwatcher will combine queries for both
#   protocol versions into a single API.
# When dualstack is set to false, birdwatcher will use the presence or absense
#   of the "-6" CLI flag to set a protocol stack to query for
#dualstack = true

[parser]
# Remove fields e.g. interface
filter_fields = []

[cache]
use_redis = false # if not using redis cache, activate housekeeping to save memory! 
redis_server = "myredis:6379"
redis_db = 0

# Maximum numbers of keys in the cache, if the
# memory cache is used. Does not apply to redis.
# max_keys = 60

# Housekeeping expires old cache entries (memory cache backend) and performs a GC/SCVG run if configured.
[housekeeping]
# Interval for the housekeeping routine in minutes
interval = 5
# Try to release memory via a forced GC/SCVG run on every housekeeping run
force_release_memory = true
''