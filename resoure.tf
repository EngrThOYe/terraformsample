resource "local_file" "pet" {
  filename = "C:/Users/EngrThOYe/Desktop/Newfolder/test.txt"
  //content = "hello world"
  //content = var.headline_list[0]
  //content = var.headline
  //content = var.headline_map["statement1"]
  // variable will be ssupply durring terraform plan 
  //content = var.headline_empty
  // using the output of the resources random pet as our content
 content = "my pet name is ${random_pet.my-pet.id}"


}

resource "random_pet" "my-pet" {
  prefix    = "Mrs"
  separator = "."
  length    = "1"
}

output "pet_name" {
  value       = random_pet.my-pet.id
  description = "random name generated in the resource pet name"

}

resource "local_file" "cat" {
  filename = "C:/Users/EngrThOYe/Desktop/Newfolder/cat.txt"
  content  = "hello world"

  lifecycle {
    //this prevent resoures been destroye before creation (inmutable resurses)
    //creat_before_destroy = true
    //prevent resources from bn deleted in error e.g databases
    //prevent_destroy = true
    //prrevent resources from modifications like EC2
    //ignore_changes = [
    //   tags,aim
    //]
    //ignore_changes = all
  }
}

data "local_file" "dog" {
  filename = "C:/Users/EngrThOYe/Desktop/Newfolder/dog.txt"
}
    
