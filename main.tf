# ---------------------------------------------------------------------------
# Trivadis AG, Infrastructure Managed Services
# Saegereistrasse 29, 8152 Glattbrugg, Switzerland
# ---------------------------------------------------------------------------
# Name.......: main.tf
# Author.....: Stefan Oehrli (oes) stefan.oehrli@trivadis.com
# Editor.....: Stefan Oehrli
# Date.......: 2021.03.05
# Revision...: 
# Purpose....: Main configuration for this terraform configuration.
# Notes......: --
# Reference..: --
# License....: Apache License Version 2.0, January 2004 as shown
#              at http://www.apache.org/licenses/
# ---------------------------------------------------------------------------
module "tvdlab-vcn" {
  source  = "Trivadis/tvdlab-vcn/oci"
  version = ">= 1.1.2"

  # - Mandatory Parameters --------------------------------------------------
  region         = var.region
  compartment_id = var.compartment_id

  # # - Optional Parameters ---------------------------------------------------
  # # Lab Configuration
  # resource_name    = local.resource_name
  # tvd_domain       = var.tvd_domain
  # tvd_participants = var.tvd_participants

  # # general oci parameters
  # label_prefix = var.label_prefix
  # tags         = var.tags

  # # VCN Network parameter
  # nat_gateway_enabled      = var.nat_gateway_enabled
  # internet_gateway_enabled = var.internet_gateway_enabled
  # service_gateway_enabled  = var.service_gateway_enabled
  # vcn_cidr                 = var.vcn_cidr
  # private_netnum           = var.private_netnum
  # private_newbits          = var.private_newbits
  # public_netnum            = var.public_netnum
  # public_newbits           = var.public_newbits

  # # Trivadis LAB specific parameter 
  # tvd_dns_hostnum = var.tvd_dns_hostnum
  # tvd_private_dns = var.tvd_private_dns
  # tvd_public_dns  = var.tvd_public_dns
}
# --- EOF -------------------------------------------------------------------
