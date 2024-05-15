s_bw_bc_rp <- "https://charlotte-ngs.github.io/psbss2024/data/psb_rand_pred.csv"
df_bw_bc_rp <- read.table(s_bw_bc_rp, header = T, sep = ",")
df_bw_bc_rp

lm_bw_bc_rp <- lm(Body.Weight ~ Breast.Circumference + RandPred,
data = df_bw_bc_rp)
smry_bw_bc_rp <- summary(lm_bw_bc_rp)
smry_bw_bc_rp

n_sse_m <- sum(residuals(lm_bw_bc_rp)^2)
n_sigma_hat2 <- smry_bw_bc_rp$sigma^2
n_nr_obs <- nrow(df_bw_bc_rp)
n_card_M <- 2

(n_cp <- n_sse_m / n_sigma_hat2 - n_nr_obs + 2 * n_card_M)
