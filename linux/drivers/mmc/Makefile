#
# Makefile for the kernel mmc device drivers.
#

#*************Add by wxn 2019-11-20****************
#Function: subst
#Means: $(subst FROM, TO, TEXT) , 将TEXT中的FROM子串替换为TO
#Example: $(subst He, She, He is a pretty girl.) == She is a pertty girl.
#**********************End*************************

obj-$(CONFIG_MMC)		+= core/
obj-$(subst m,y,$(CONFIG_MMC))	+= host/
