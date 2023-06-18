> my_vector <- c(2, 5, 9, 12, 18)
> for (i in seq_along(my_vector)-1){
+     print(my_vector[i+1]-my_vector[i])
+ }
numeric(0)
[1] 3
[1] 4
[1] 3
[1] 6

# if you want to store the results in a different subvector then 
> my_sub_vector <- as.vector(length(my_vector))
> for (i in seq_along(my_vector)-1){
+     my_sub_vector[i] <- (my_vector[i+1]-my_vector[i])
+ }
> my_sub_vector
[1] 3 4 3 6


# if you want to implement this as a function
subfunction <- function(x){
    for (i in seq_along(x)-1){
        print(x[i+1]-x[i])
    }
}

# if you want to apply this to a dataframe then i coded this 
data <- read.csv("iris.csv", stringsAsFactors = FALSE) # reading the csv file
colnames(data) # colnames
unlist(data["sepal_length"],use.names = FALSE) # selecting the specified column and then unlisting the column dataset
data_unlist <- unlist(data["sepal_length"],use.names = FALSE) # storing in a variable
# applying the data structure
for (i in seq_along(data_unlist)-1){ 
     print(data_unlist[i+1]-data_unlist[i])
}
