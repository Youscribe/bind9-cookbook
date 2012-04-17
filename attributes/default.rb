default[:bind9][:enable_ipv6] = true

# Allow all clients to query the nameserver, no recursion
default[:bind9][:allow_query] = nil
default[:bind9][:allow_recursion] = "none"

# Don:t allow to mess with zone files by default
default[:bind9][:allow_transfer] = "none"
default[:bind9][:allow_update] = nil

default[:bind9][:enable_forwarding] = false
default[:bind9][:forwarders] = [ "8.8.8.8", "8.8.4.4" ]
  
case node[:platform]
when "centos", "redhat", "suse", "fedora"
  default[:bind9][:package] = "bind"
when "debian", "ubuntu"
  default[:bind9][:package] = "bind9"
end

default[:bind9][:service] = "bind9"