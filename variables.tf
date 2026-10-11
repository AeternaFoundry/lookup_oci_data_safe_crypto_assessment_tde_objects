variable "data_safe_crypto_assessment_tde_objects_lookup" {
  description = <<EOT
Map of data_safe_crypto_assessment_tde_objects_lookup, attributes below
Required:
    - compartment_id
    - object_type
Optional:
    - access_level
    - assessment_id
    - assessment_type
    - compartment_id_in_subtree
    - encryption_observed
    - encryption_status
    - quantum_readiness
    - target_id
    - target_ids
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    object_type               = string
    access_level              = optional(string)
    assessment_id             = optional(string)
    assessment_type           = optional(string)
    compartment_id_in_subtree = optional(bool)
    encryption_observed       = optional(list(string))
    encryption_status         = optional(string)
    quantum_readiness         = optional(string)
    target_id                 = optional(string)
    target_ids                = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

