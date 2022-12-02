variable "region" {
    type = string
}
variable "vpc-name" {
    type = string
  
}
variable "vpc-range" {
    type = string
  
}
variable "public-cidrs" {
    type = list(string)
  
}
variable "private-cidrs" {
    type = list(string)
  
}
variable "web-trigger" {
    type = string
    description = "running number for trigger"
    default = "1.0"
}    
variable "ami-id" {
    type = string
    description = "Ami id of ubuntu 20.04"
    default = "ami-024c319d5d14b463e"
}