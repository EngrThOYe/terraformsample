resource "local_file" "pet"{
    filename = "C:/Users/EngrThOYe/Desktop/Newfolder/test.txt"
    content = var.headline
}

resource "random_pet" "my-pet"{
    prefix = "Mrs"
    separator = "."
    length = "1"
}