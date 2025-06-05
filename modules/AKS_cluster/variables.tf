variable "rgname" {
  type = string
}

variable "location" {
  type = string
}

variable "vnetname" {
  type = string
}

variable "subnetname" {
  type = string
}

variable "addr_space" {
  type = list(string)
}

variable "addr_prefix" {
  type = list(string)
}

variable "aksname" {
  type = string
}
