#################################################
## KopiCloud AD API - Create DNS CNAME Records ##
#################################################

# Create a DNS CNAME Record for a Computer
resource "kopicloud_dns_cname_record" "test_cname" {
  hostname       = "tftestcn01"
  hostname_alias = "tftestcn01_alias"
  zone_name      = "kopicloud.local"
}

# Output Created DNS CNAME Record 
output "dns_cname_record" {
  description = "Created DNS CNAME Record"
  value       = resource.kopicloud_dns_cname_record.test_cname
}

