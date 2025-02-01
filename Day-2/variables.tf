variable "bucket_name" {
    type = list(string)
    default = []
}

variable "common_tag" {
    type = map(string)
    default = {}
}
