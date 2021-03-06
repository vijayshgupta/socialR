#####  socialR header info ##### 
require(socialR)
script <- "example.R" # Must specify the script name! 
gitopts <- list(user = "cboettig", dir = "demo", repo = "socialR") 
gitaddr <- gitcommit(script, gitopts)     # Must commmit at start and store id.

##### Optional but a good idea ##### 
tags <- "test"  ## multiple possible: space, delim, multiple items, etc.  
tweet_errors(script, gitopts, tags)  ## tweet on error

# code code code .....

# we save some plots ....
png("test.png")
  hist(rnorm(100))
dev.off()


# and here's the call to upload, link, save data, and tweet. 
# first entry can be a space-delim list of images "image1.png image2.png"
upload("test.png", script=script, gitaddr=gitaddr,
       tags="test", flickr_user="cboettig") 

# lazy upload, will still guess the essentials
upload("test.png", script=script) 

# minimal upload, will only link to the commit version
upload("test.png") 

# and create and error that will trigger the the twitter error report
hist(mydata)

