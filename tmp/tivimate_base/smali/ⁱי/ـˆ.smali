.class public final Lⁱי/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˏ/ʽﹳ;
.implements Lˊˊ/ﹳٴ;
.implements Lⁱי/ʿ;


# instance fields
.field public ʽʽ:Lﾞˏ/ʽﹳ;

.field public ʾˋ:Lﾞˏ/ʽﹳ;

.field public ˈٴ:Lˊˊ/ﹳٴ;

.field public ᴵˊ:Lˊˊ/ﹳٴ;


# virtual methods
.method public final ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lⁱי/ـˆ;->ʽʽ:Lﾞˏ/ʽﹳ;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lﾞˏ/ʽﹳ;->ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V

    move-object v7, v6

    move-object v6, v5

    move-wide v4, v3

    move-wide v2, v1

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    :goto_0
    iget-object v1, p0, Lⁱי/ـˆ;->ʾˋ:Lﾞˏ/ʽﹳ;

    if-eqz v1, :cond_1

    invoke-interface/range {v1 .. v7}, Lﾞˏ/ʽﹳ;->ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱי/ـˆ;->ˈٴ:Lˊˊ/ﹳٴ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˊˊ/ﹳٴ;->ˈ()V

    :cond_0
    iget-object v0, p0, Lⁱי/ـˆ;->ᴵˊ:Lˊˊ/ﹳٴ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lˊˊ/ﹳٴ;->ˈ()V

    :cond_1
    return-void
.end method

.method public final ⁱˊ(ILjava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lˊˊ/ٴﹶ;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lⁱי/ـˆ;->ʽʽ:Lﾞˏ/ʽﹳ;

    iput-object p1, p0, Lⁱי/ـˆ;->ˈٴ:Lˊˊ/ﹳٴ;

    return-void

    :cond_1
    invoke-virtual {p2}, Lˊˊ/ٴﹶ;->getVideoFrameMetadataListener()Lﾞˏ/ʽﹳ;

    move-result-object p1

    iput-object p1, p0, Lⁱי/ـˆ;->ʽʽ:Lﾞˏ/ʽﹳ;

    invoke-virtual {p2}, Lˊˊ/ٴﹶ;->getCameraMotionListener()Lˊˊ/ﹳٴ;

    move-result-object p1

    iput-object p1, p0, Lⁱי/ـˆ;->ˈٴ:Lˊˊ/ﹳٴ;

    return-void

    :cond_2
    check-cast p2, Lˊˊ/ﹳٴ;

    iput-object p2, p0, Lⁱי/ـˆ;->ᴵˊ:Lˊˊ/ﹳٴ;

    return-void

    :cond_3
    check-cast p2, Lﾞˏ/ʽﹳ;

    iput-object p2, p0, Lⁱי/ـˆ;->ʾˋ:Lﾞˏ/ʽﹳ;

    return-void
.end method

.method public final ﹳٴ(J[F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱי/ـˆ;->ˈٴ:Lˊˊ/ﹳٴ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lˊˊ/ﹳٴ;->ﹳٴ(J[F)V

    :cond_0
    iget-object v0, p0, Lⁱי/ـˆ;->ᴵˊ:Lˊˊ/ﹳٴ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lˊˊ/ﹳٴ;->ﹳٴ(J[F)V

    :cond_1
    return-void
.end method
