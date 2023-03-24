resource "volterra_nfv_service" "pan-nfv1" {
  name      = format("%s-svc", var.projectPrefix)
  namespace = "system"

    palo_alto_fw_service {
      instance_type = var.instance_type_name
      pan_ami_bundle1 = true
      ssh_key = var.ssh_key
      version = var.pan_version
      aws_tgw_site {
        tenant = var.tenant_name
        namespace = "system"
        name = var.aws_tgw_site_name
      }
      service_nodes {
        nodes {
            node_name = format("%s-svc", var.projectPrefix)
            aws_az_name = format("%sa", var.aws_region)  
            reserved_mgmt_subnet = false   
        }
        dynamic  "nodes" {
            for_each = var.pan_ha ? [1] : []
                content {
                        node_name = format("%s-svc", var.projectPrefix)
                        aws_az_name = format("%s-a", var.aws_region)  
                        reserved_mgmt_subnet = false   
                }
        }
      }
    }
     
    https_management {
      domain_suffix = var.domain_suffix_name
      default_https_port = true 
      do_not_advertise = true
      advertise_on_internet_default_vip = true
    }


}