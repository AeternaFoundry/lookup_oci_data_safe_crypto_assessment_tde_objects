data "oci_data_safe_crypto_assessment_tde_objects" "data_safe_crypto_assessment_tde_objects_lookup" {
  for_each = var.data_safe_crypto_assessment_tde_objects_lookup

  compartment_id            = each.value.compartment_id
  object_type               = each.value.object_type
  access_level              = each.value.access_level
  assessment_id             = each.value.assessment_id
  assessment_type           = each.value.assessment_type
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  encryption_observed       = each.value.encryption_observed
  encryption_status         = each.value.encryption_status
  quantum_readiness         = each.value.quantum_readiness
  target_id                 = each.value.target_id
  target_ids                = each.value.target_ids

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

