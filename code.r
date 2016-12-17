data(school23)
 model.a <- lmer(math ~ structure + SES  + (1 | school.ID), data=school23)
 alt.est.a <- influence(model=model.a, group="school.ID")
 alt.est.b <- influence(model=model.a, group="school.ID", select="7472")
 alt.est.c <- influence(model=model.a, group="school.ID", select=c("7472", "62821"))
 
 data(Penicillin, package="lme4")
 model.b <- lmer(diameter ~ (1|plate) + (1|sample), Penicillin)
 alt.est.d <- influence(model=model.b, group="plate")
 alt.est.e <- influence(model=model.b, group="sample")
 alt.est.f <- influence(model=model.b, group="sample", gf="all")