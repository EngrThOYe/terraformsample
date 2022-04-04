variable "headline" {
  default = "testing if varible will use the text"
  //optional if not specified type = any, else type = sting, number, bool, list ["abc", "xyz"], map {"a1" = "abc", "a2" = "xyz"), object, tuple
  type        = string
  description = "content of the file"
}

variable "headline_map" {
  type = map(any)
  default = {
    "statement1" = "Testing Map statement 1"
    "statement2" = "Testing Map statement 2"
    "statement3" = "Testing Map statement 3"
  }
}

variable "headline_list" {
  type    = list(any)
  default = ["Testing list statement 1", "Testing list statement 2", "Testing list statement 3", "Testing list statement 1"]

}

variable "headline_set" {
  type = set(string)
  //we cant have dupplicate valuee in set unlike list
  default = ["Testing set statement 1", "Testing set statement 2", "Testing set statement 3", "Testing set statement 4"]
}

variable "headline_list_string" {
  type    = list(string)
  default = ["Testing list statement 1", "Testing list statement 2", "Testing list statement 3"]
}

variable "headline_object" {
  type = object({
    name     = string
    color    = string
    age      = number
    chritain = bool
  })
  default = {
    name     = "my name"
    color    = "my color"
    age      = 22
    chritain = true
  }
}

variable "headline_tuple" {
  type    = tuple([string, number, bool])
  default = ["Testing list statement 1", 2, false]

}

//variable block can be empty and be provided when running terraform apply
variable "headline_empty" {

}