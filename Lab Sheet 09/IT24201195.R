
setwd("C:/Users/LENOVO/Desktop/IT24201195")



# Generate random sample of size 25 mean 45 and standard deviation 2
set.seed(123)  
baking_times <- rnorm(25, mean = 45, sd = 2)


print("Generated Baking Times (sample of 25):")
print(baking_times)

# Part ii: Test if average baking time < 46 minutes at 5% significance

test_result <- t.test(baking_times, mu = 46, alternative = "less", conf.level = 0.95)

print(test_result)

