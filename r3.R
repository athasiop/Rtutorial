Class = c(1, 1, 0, 0, 1, 1, 0, 0, 1, 0)
P_M1 = c(0.73, 0.69, 0.44, 0.55, 0.67, 0.47, 0.08, 0.15, 0.45, 0.35)
P_M2 = c(0.61, 0.03, 0.68, 0.31, 0.45, 0.09, 0.38, 0.05, 0.01, 0.04)
data = data.frame(Class, P_M1, P_M2)

pred_M1 = prediction(P_M1,Class,label.ordering = c("0","1"))
roc_m1 = performance(pred_M1,"TPR","FPR")
pred_M2 = prediction(P_M2,Class,label.ordering = c("0","1"))
roc_m2 = performance(pred_M2,"TPR","FPR")
plot(roc_m1,col="blue")
plot(roc_m2,col="red",add=TRUE)
performance(pred_m1,"auc")@y.values
performance(pred_m2,"auc")@y.values
round(P_M1)

