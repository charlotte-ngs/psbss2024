
s_bw_bc_rp <- "https://charlotte-ngs.github.io/psbss2024/data/psb_rand_pred.csv"
df_bw_bc_rp <- read.table(s_bw_bc_rp, header = T, sep = ",")
df_bw_bc_rp

lm_bw_bc_rp <- lm(Body.Weight ~ Breast.Circumference + RandPred,
data = df_bw_bc_rp)
summary(lm_bw_bc_rp)


lm_bw_bc <- lm(Body.Weight ~ Breast.Circumference,
data = df_bw_bc_rp)
summary(lm_bw_bc)
