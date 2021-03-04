## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----demo2, eval=FALSE--------------------------------------------------------
#  library(slackr)
#  slackr_setup(
#    channel="#channel",
#    incoming_webhook_url="https://hooks.slack.com/services/XXXXX/XXXXX/XXXXX",
#    bot_user_oauth_token='token'
#  )
#  
#  slackr(str(iris))
#  
#  # send images
#  library(ggplot2)
#  qplot(mpg, wt, data=mtcars)
#  slackr_dev("#results")
#  
#  barplot(VADeaths)
#  slackr_dev("@jayjacobs")
#  
#  ggslackr(qplot(mpg, wt, data=mtcars))
#  

