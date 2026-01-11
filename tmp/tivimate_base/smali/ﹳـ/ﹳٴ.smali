.class public final Lﹳـ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:F

.field public ˈ:F

.field public ˑﹳ:J

.field public ᵎﹶ:J

.field public ᵔᵢ:F

.field public ⁱˊ:I

.field public ﹳٴ:I

.field public ﾞᴵ:J


# virtual methods
.method public final ﹳٴ(J)F
    .locals 8

    .prologue
    iget-wide v0, p0, Lﹳـ/ﹳٴ;->ˑﹳ:J

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Lﹳـ/ﹳٴ;->ᵎﹶ:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v2, :cond_2

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v4

    iget v0, p0, Lﹳـ/ﹳٴ;->ᵔᵢ:F

    sub-float v1, v6, v0

    long-to-float p1, p1

    iget p2, p0, Lﹳـ/ﹳٴ;->ʼˎ:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v3, v6}, Lﹳـ/ˈ;->ⁱˊ(FFF)F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lﹳـ/ﹳٴ;->ﹳٴ:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v3, v6}, Lﹳـ/ˈ;->ⁱˊ(FFF)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    return p1
.end method
