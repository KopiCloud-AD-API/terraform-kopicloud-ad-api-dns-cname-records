###############################################
## KopiCloud AD API - List DNS CNAME Records ##
###############################################

# List All DNS CNAME Records
data "kopicloud_dns_cname_records_list" "test_cname_all" {
}

# Returns All DNS CNAME Records
output "OUTPUT_dns_cname_records_list_all" {
  description = "List ALL existing DNS CNAME records"
  value       = data.kopicloud_dns_cname_records_list.test_cname_all
}

#######################################

# Filter DNS CNAME Records with the Zone Name
data "kopicloud_dns_cname_records_list" "test_cname_zone_name" {
  zone_name = "kopicloud.local"
}

# Returns all DNS CNAME Records that matches the Zone Name
output "OUTPUT_dns_cname_records_list_zone_name" {
  description = "List existing DNS CNAME records in a Zone"
  value       = data.kopicloud_dns_cname_records_list.test_cname_zone_name
}

#######################################

# Filter DNS CNAME Records with an Alias
data "kopicloud_dns_cname_records_list" "test_cname_alias" {
  hostname_alias = "computer70_alias"
}

# Returns all DNS CNAME Records that matches the Alias
output "OUTPUT_dns_cname_records_list_ip_address" {
  description = "List existing DNS CNAME Records with the Alias"
  value       = data.kopicloud_dns_cname_records_list.test_cname_alias
}

#######################################

# Filter DNS CNAME Records with a Hostname
data "kopicloud_dns_cname_records_list" "test_cname_hostname" {
  hostname = "computer33"
}

# Returns all DNS CNAME Records that matches the Hostname
output "OUTPUT_dns_cname_records_list_hostname" {
  description = "List Existing DNS CNAME Records"
  value       = data.kopicloud_dns_cname_records_list.test_cname_hostname
}
