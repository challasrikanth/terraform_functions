Think of for_each as your resource multiplication machine. Instead of writing ten separate EC2 instance blocks, you can write one and let Terraform do the heavy lifting. It’s a meta-argument that allows you to create multiple instances of a resource based on a map or set of strings. Each instance gets its own unique identifier, making them independent and manageable.

The beauty of for_each lies in its simplicity and power. You provide it with a collection, and it iterates through each item, creating a separate resource instance for each one. It’s like telling Terraform, “Hey, take this blueprint and create one of these for every item in my list, but make each one unique.”


Why use for_each instead of count?
You might be wondering, “Wait, doesn’t count do something similar?” Well, yes and no. While both can create multiple resources, they work fundamentally differently, and choosing the right one can save you from future headaches.

The count meta-argument creates resources based on a number, giving them array-like indices (0, 1, 2, etc.). This sounds great until you need to remove the second item from your list. Suddenly, what was index 2 becomes index 1, and Terraform wants to destroy and recreate resources unnecessarily. It’s like removing a book from the middle of a numbered bookshelf – everything after it needs to be renumbered.

With for_each, each resource gets a unique key instead of a numeric index. Remove an item? No problem – only that specific resource gets deleted. Add one in the middle? It slides right in without affecting the others. This makes your infrastructure more predictable and reduces those nerve-wracking moments during terraform apply





===============>


for_each loop allows you to create multiple similar resources without duplicating resource block 

this is useful when you need to create several instances of a resource , such as multiple ec2 instances , subnets or security groups 

it accepts set or map

