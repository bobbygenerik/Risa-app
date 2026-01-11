.class public final Lˋⁱ/ٴﹶ;
.super Lﹳˋ/ٴﹶ;
.source "SourceFile"


# virtual methods
.method public final ʻٴ(Lˋⁱ/ʾᵎ;FF)V
    .locals 5

    mul-float/2addr p3, p2

    const/high16 p2, 0x43340000    # 180.0f

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, p3, p2, v0}, Lˋⁱ/ʾᵎ;->ˈ(FFF)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p3, v1

    new-instance v2, Lˋⁱ/ˏי;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p3, p3}, Lˋⁱ/ˏי;-><init>(FFFF)V

    iput p2, v2, Lˋⁱ/ˏי;->ﾞᴵ:F

    iput v0, v2, Lˋⁱ/ˏי;->ᵎﹶ:F

    iget-object v0, p1, Lˋⁱ/ʾᵎ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lˋⁱ/ﹳᐧ;

    invoke-direct {v0, v2}, Lˋⁱ/ﹳᐧ;-><init>(Lˋⁱ/ˏי;)V

    invoke-virtual {p1, p2}, Lˋⁱ/ʾᵎ;->ﹳٴ(F)V

    iget-object p2, p1, Lˋⁱ/ʾᵎ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x43870000    # 270.0f

    iput p2, p1, Lˋⁱ/ʾᵎ;->ˈ:F

    add-float v0, v3, p3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    sub-float/2addr p3, v3

    div-float/2addr p3, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p2, v3

    mul-float/2addr p2, p3

    add-float/2addr p2, v0

    iput p2, p1, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float/2addr p3, p2

    add-float/2addr p3, v0

    iput p3, p1, Lˋⁱ/ʾᵎ;->ʽ:F

    return-void
.end method
