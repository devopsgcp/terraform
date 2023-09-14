# Implement for_each with Set of Strings

resource "aws_iam_user " "iam-user" {

    for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
    name     = each.key
}
   