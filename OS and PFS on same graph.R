#Plotting OS and PFS together on same graph
os=survfit(Surv(OS,status_OS1)~1,data=df)
pfs=survfit(Surv(PFS,status_PFS)~1,data=df)
fit<-list(OS=os,PFS=pfs)
ggsurvplot(fit,
           combine=TRUE,
           risk.table = T,
           conf.int = T,
           conf.int.style = "step")