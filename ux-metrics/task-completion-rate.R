# Getting the records from the data source
tests <- entity("uxmetrics")
tests <- collect(tests)

# Count the total amount of tests
count <- summarise(tests,
    count = n()
)
testsCount <- count$count

# Count the total number of completed tests
completedTests <- filter(tests, completion == "1")
completedTests <- sum(completedTests$completion)

# Calculate the completion rate
overallCompletionRate <- (completedTests/testsCount)*100

# Output the findings
out(
testsCount = testsCount,
completedTests = completedTests,
overallCompletionRate = overallCompletionRate)
