variable "bigquery-account-id" {
  type = string
}

variable "bigquery-display-name" {
  type = string
}

variable "bigquery-iam-role-id" {
  type = string
}


variable "bigquery-iam-role-permissions" {
  type = list
}

variable "project" {
  type = string

}

#
variable "gs-bucket-account-id" {
  type = string
}

variable "gs-bucket-display-name" {
  type = string
}

variable "gs-bucket-iam-role-id" {
  type = string
}

variable "gs-bucket-iam-role-permissions" {
  type = list
}

#
variable "gcr-account-id" {
  type = string
}

variable "gcr-display-name" {
  type = string
}


variable "gcr-iam-role-permissions" {
  type = string
}
