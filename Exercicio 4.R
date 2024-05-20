set.seed(2336)
numbers <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)


simulate_system <- function() {
  signals <- sample(numbers, 7, replace = TRUE, prob = numbers/45)
  warning_sound <- any(signals == 2)  
  system_shutdown <- any(signals == 1)
  
  if (system_shutdown) {
    return(0)
  }
  else if(warning_sound){
    return(1)
  }
  else{
    return(2)
  }
}


calls_without_shutdown <- replicate(650, simulate_system())
total <- 0
warnings <- 0

for(i in 1:650){
  if(calls_without_shutdown[i] == 2){
    total <- total + 1
  }
  else if(calls_without_shutdown[i] ==  1){
    warnings <- warnings + 1
    total <- total + 1
  }
}

proportion <- warnings / total
proportion <- round(proportion, 2)
proportion