rotation += 1 * (10-abs(coef))
if rotation < 0 { rotation = 359 }
if rotation >= 360 { rotation = 0 }
coef -= 0.1
if coef < -20 { coef = 20 }