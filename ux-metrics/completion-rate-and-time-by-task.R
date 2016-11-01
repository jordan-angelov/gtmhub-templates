# Get the data from the data source
tests <- entity("uxmetrics")
tests <- collect(metrics)

# Aggregate the test results by task
aggdata <-aggregate(tests, by=list(tests$task),
  FUN=mean, na.rm=TRUE)

# Remove the first header row of the excel file
aggdata <- tail(aggdata, -1)

# Output the findings
out(aggdata = aggdata)
