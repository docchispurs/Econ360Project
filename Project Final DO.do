reg nvalue Race
reg nvalue Race nxg
reg nvalue Race nxg nxa
reg nvalue Race nxg nxa Club
reg nvalue Race nxg nxa Club age nsca90 ntp90  Country Position
margins, at( Race=(2) age=(17(1) 35))

reg nvalue Country Position age nxa Club nxg nsca90 ntp90 i.Race##i.age



reg nvalue Country Position age nxa Club nxg nsca90 ntp90 Race
predict f, residuals
gen f2 = f^2
reg f2 nvalue Country Position age nxa Club nxg nsca90 ntp90 Race

reg nvalue Country Position age nxa Club nxg nsca90 ntp90 Race
predict yhat, xb
gen yhat2 = yhat^2
reg f2 yhat yhat2

reg nvalue i.Race##i.age Country Position Club nxa nxa nsca90 ntp90
lvr2plot

reg nvalue i.Race##i.age Country Position Club nxa nxa nsca90 ntp90
ovtest

reg nvalue i.Race, vce(hc3)
reg nvalue i.Race nxg nxa, vce(hc3)
reg nvalue i.Race nxg nxa Club, vce(hc3)
regress nvalue nxg nxa nsca90 ntp90 Club Position Country age i.Race, vce(hc3)
ovtest