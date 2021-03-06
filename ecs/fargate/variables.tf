# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "prefix" {
  description = "A prefix used for naming resources."
}

variable "vpc_id" {
  description = "The ID of the VPC that this container will run in, needed for the Target Group"
}

variable "private_subnet_ids" {
  description = "A list of private subnets inside the VPC"
  type        = "list"
}

variable "cluster_id" {
  description = "AWS ECS Cluster id"
}

variable "task_definition_image" {
  description = "Image for the task definition (repo:tag or repo@digest)."
}

variable "lb_arn" {
  description = "Arn for the LB for which the service should be attach to."
}

variable "task_container_count" {
  description = "Number of containers to run for the task."
  default     = "2"
}

variable "task_container_port" {
  description = "Port that the container exposes."
}

variable "task_container_protocol" {
  description = "Optional: Protocol that the container exposes."
  default     = "HTTP"
}

variable "task_definition_cpu" {
  description = "Optional: Amount of CPU to reserve for the task."
  default     = "256"
}

variable "task_definition_ram" {
  description = "Optional: Amount of RAM to reserve for the task."
  default     = "512"
}

variable "task_definition_environment" {
  description = "Optional: Map of key = value pairs for the environment."
  default     = {}
}

variable "task_definition_environment_count" {
  description = "Required if task_definition_environment is used : Number of environment variables in task_definition_environment."
  default     = "0"
}

variable "log_retention_in_days" {
  description = "Optional: Number of days the logs will be retained in CloudWatch."
  default     = "30"
}

variable "health_check" {
  description = "A health block containing health check settings for the target group. Overrides the defaults."
  type        = "map"
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = "map"
  default     = {}
}
