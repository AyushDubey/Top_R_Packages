library(reshape2)
data(smiths)
View(smiths)
str(smiths)

#################### melt Function ####################################
#applying melt function to smiths data
new_smiths1 = melt(data = smiths, id.vars = c("subject","time"),measure.vars = 
                    c("age","height","weight"))
new_smiths2 = melt(data = smiths)

#creating new data for more experimentation using melt
data_new = data.frame(id = factor(1:4), A1 = c(1,2,1,2), A2 = c(2,2,1,1), B1 = c(3,3,3,3))
data_new2 = melt(data_new)

#suppose we donot want missing value in our results then
new_smiths3 = melt(data = smiths, na.rm = T)

#################### cast Function ####################################
#applying cast function to new_smiths3
smiths_cast1 = dcast(new_smiths3,subject ~ variable)
smiths_cast2 = dcast(new_smiths1,time+subject ~ variable)

###more complex use of reshape package using french_fries function#####
data(french_fries)
View(french_fries)
ff_melt = melt(data = french_fries,id.vars = 1:4,na.rm = T) #code-1
#counting total no. of values
dcast(ff_melt,.~.,length)
dcast(ff_melt,time+treatment~.,length)
dcast(ff_melt,treatment~.,sum) #code-2
dcast(ff_melt,.~treatment,sum)
dcast(ff_melt,treatment~.,mean)
dcast(ff_melt,treatment~.,var)

#using margins
dcast(ff_melt,.~.,length,margins = T)
dcast(ff_melt,time+treatment~.,length,margins = T)
dcast(ff_melt,treatment~.,sum,margins = T)

######## recast Function(melt+cast two in one)##########
recast(french_fries,treatment~.,sum,id.var = 1:4, na.rm = T) #combining code-1+code-2
#newly introduced in reshape2 so that molting and casting of data can be done in a single step
