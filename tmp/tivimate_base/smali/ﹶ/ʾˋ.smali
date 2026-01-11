.class public final Lﹶ/ʾˋ;
.super Lʼᵢ/ᵔﹳ;
.source "SourceFile"

# interfaces
.implements Lⁱי/ᵎⁱ;


# instance fields
.field public ʻʼ:J

.field public final ʽʾ:Lᵢـ/ˑﹳ;

.field public ʿʽ:Z

.field public ˆʻ:Z

.field public ˆˎ:Lʽⁱ/ﹳᐧ;

.field public final ˆˑ:Lʼᵢ/ˆʾ;

.field public ˆﹳ:Lʽⁱ/ﹳᐧ;

.field public ˉʽ:I

.field public final ˊﹳ:Lـʾ/ᵔﹳ;

.field public ˎـ:I

.field public final ˏⁱ:Landroid/content/Context;

.field public יʿ:Z

.field public ᴵٴ:J

.field public ᵢʻ:Z

.field public ᵢᐧ:Z

.field public ﾞˊ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lʼᵢ/ٴﹶ;Lʼᵢ/ʼˎ;ZLandroid/os/Handler;Lⁱי/ʻٴ;Lᵢـ/ˑﹳ;)V
    .locals 7

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Lʼᵢ/ˆʾ;

    invoke-direct {v0}, Lʼᵢ/ˆʾ;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    const v6, 0x472c4400    # 44100.0f

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lʼᵢ/ᵔﹳ;-><init>(ILʼᵢ/ٴﹶ;Lʼᵢ/ﹳᐧ;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lﹶ/ʾˋ;->ˏⁱ:Landroid/content/Context;

    iput-object p7, v1, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iput-object v0, v1, Lﹶ/ʾˋ;->ˆˑ:Lʼᵢ/ˆʾ;

    const/16 p1, -0x3e8

    iput p1, v1, Lﹶ/ʾˋ;->ˉʽ:I

    new-instance p1, Lـʾ/ᵔﹳ;

    invoke-direct {p1, p5, p6}, Lـʾ/ᵔﹳ;-><init>(Landroid/os/Handler;Lﹶ/ᵔᵢ;)V

    iput-object p1, v1, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, v1, Lﹶ/ʾˋ;->ᴵٴ:J

    new-instance p1, Lᐧﹳ/ʽ;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iget-object p2, p7, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    iput-object p1, p2, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    return-void
.end method


# virtual methods
.method public final ʼˎ()Lⁱי/ᵎⁱ;
    .locals 0

    return-object p0
.end method

.method public final ʼᐧ(ZZ)V
    .locals 3

    .prologue
    new-instance p1, Lⁱי/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᵢ/ᵔﹳ;->ᵢˋ:Lⁱי/ﾞᴵ;

    iget-object p2, p0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v0, p2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lﹶ/ᵎﹶ;

    const/4 v2, 0x5

    invoke-direct {v1, p2, p1, v2}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Lⁱי/ᐧᴵ;->ⁱˊ:Z

    iget-object p2, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lᵢـ/ˑﹳ;->ﾞᴵ()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lᵢـ/ˑﹳ;->ʼᐧ()V

    :goto_0
    iget-object p1, p0, Lⁱי/ˑﹳ;->ˊʻ:Lʻʿ/יـ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lⁱי/ˑﹳ;->ٴᵢ:Lᐧˎ/ˏי;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ʽ(Lʽⁱ/ᵎⁱ;)V
    .locals 1

    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {v0, p1}, Lᵢـ/ˑﹳ;->ʽ(Lʽⁱ/ᵎⁱ;)V

    return-void
.end method

.method public final ʽⁱ(Lʽⁱ/ﹳᐧ;)I
    .locals 1

    .prologue
    iget-object p1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    iget-boolean v0, p1, Lﹶ/ﾞᴵ;->ﹳٴ:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p1, Lﹶ/ﾞᴵ;->ⁱˊ:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x600

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    :goto_0
    iget-boolean p1, p1, Lﹶ/ﾞᴵ;->ʽ:Z

    if-eqz p1, :cond_2

    or-int/lit16 p1, v0, 0x800

    return p1

    :cond_2
    return v0
.end method

.method public final ʽﹳ()V
    .locals 1

    invoke-virtual {p0}, Lﹶ/ʾˋ;->ⁱˉ()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹶ/ʾˋ;->יʿ:Z

    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {v0}, Lᵢـ/ˑﹳ;->ˈ()V

    return-void
.end method

.method public final ʾˊ(Lʽⁱ/ﹳᐧ;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lⁱי/ᐧᴵ;->ﹳٴ:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lﹶ/ʾˋ;->ʽⁱ(Lʽⁱ/ﹳᐧ;)I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    iget-object v1, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Lⁱי/ᐧᴵ;->ﹳٴ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ᵎⁱ:I

    if-nez v0, :cond_1

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ٴʼ:I

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iget-object v0, v0, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v0, p1}, Lﹶ/ʾᵎ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result p1

    return p1
.end method

.method public final ʾﾞ(Lʼᵢ/ᵔʾ;Lʽⁱ/ﹳᐧ;)I
    .locals 1

    .prologue
    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lﹶ/ʾˋ;->ˏⁱ:Landroid/content/Context;

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ˊˋ(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Lʽⁱ/ﹳᐧ;->ˉˆ:I

    return p1
.end method

.method public final ʿ(Ljava/lang/String;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v1, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lﹶ/ᵎﹶ;

    const/4 v3, 0x4

    invoke-direct {v2, v0, p1, v3}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ʿᵢ(Lـʾ/ᵔﹳ;)Lⁱי/ᵎﹶ;
    .locals 5

    .prologue
    iget-object v0, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lﹶ/ʾˋ;->ˆﹳ:Lʽⁱ/ﹳᐧ;

    invoke-super {p0, p1}, Lʼᵢ/ᵔﹳ;->ʿᵢ(Lـʾ/ᵔﹳ;)Lⁱי/ᵎﹶ;

    move-result-object p1

    iget-object v1, p0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v2, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, Lᐧᵢ/ˉʿ;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v0, p1, v4}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lʽⁱ/ﹳᐧ;Lⁱי/ᵎﹶ;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final ˆﾞ(FLʽⁱ/ﹳᐧ;[Lʽⁱ/ﹳᐧ;)F
    .locals 4

    .prologue
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-eq v3, v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v2

    mul-float/2addr p2, p1

    return p2
.end method

.method public final ˈʿ(JJ)J
    .locals 8

    .prologue
    iget-wide v0, p0, Lﹶ/ʾˋ;->ᴵٴ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lﹶ/ʾˋ;->יʿ:Z

    const-wide/16 v4, 0x2710

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lʼᵢ/ᵔﹳ;->ˎʾ:Z

    if-eqz p1, :cond_4

    :cond_1
    const-wide/32 p1, 0xf4240

    return-wide p1

    :cond_2
    iget-object v1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iget-object v6, v1, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v6}, Lﹶ/ʾᵎ;->ٴﹶ()J

    move-result-wide v6

    if-eqz v0, :cond_4

    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lﹶ/ʾˋ;->ᴵٴ:J

    sub-long/2addr v2, p1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-float p1, p1

    iget-object p2, v1, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    iget-object p2, p2, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    iget p2, p2, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    iget-object v0, p0, Lⁱי/ˑﹳ;->ٴᵢ:Lᐧˎ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    :goto_1
    return-wide v4
.end method

.method public final ˈٴ(Lʼᵢ/ᵔʾ;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;)Lⁱי/ᵎﹶ;
    .locals 8

    .prologue
    invoke-virtual {p1, p2, p3}, Lʼᵢ/ᵔʾ;->ⁱˊ(Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;)Lⁱי/ᵎﹶ;

    move-result-object v0

    iget v1, v0, Lⁱי/ᵎﹶ;->ˑﹳ:I

    iget-object v2, p0, Lʼᵢ/ᵔﹳ;->ˊᵔ:Lⁱᴵ/ﾞᴵ;

    if-nez v2, :cond_0

    invoke-virtual {p0, p3}, Lﹶ/ʾˋ;->ʾˊ(Lʽⁱ/ﹳᐧ;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0, p1, p3}, Lﹶ/ʾˋ;->ʾﾞ(Lʼᵢ/ᵔʾ;Lʽⁱ/ﹳᐧ;)I

    move-result v2

    iget v3, p0, Lﹶ/ʾˋ;->ˎـ:I

    if-le v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    move v7, v1

    new-instance v2, Lⁱי/ᵎﹶ;

    iget-object v3, p1, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 p1, 0x0

    :goto_0
    move v6, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_1

    :cond_2
    iget p1, v0, Lⁱי/ᵎﹶ;->ˈ:I

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v7}, Lⁱי/ᵎﹶ;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;II)V

    return-object v2
.end method

.method public final ˉʿ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iget-object v0, v0, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v0}, Lﹶ/ʾᵎ;->ʼˎ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lʼᵢ/ᵔﹳ;->ˉʿ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ˉˆ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lﹶ/ʾˋ;->ﾞˊ:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lﹶ/ʾˋ;->ˆﹳ:Lʽⁱ/ﹳᐧ;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lﹶ/ʾˋ;->ᴵٴ:J

    :try_start_0
    iget-object v1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {v1}, Lᵢـ/ˑﹳ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lʼᵢ/ᵔﹳ;->ˉˆ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lʼᵢ/ᵔﹳ;->ᵢˋ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v1}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lʼᵢ/ᵔﹳ;->ᵢˋ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v2}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-super {p0}, Lʼᵢ/ᵔﹳ;->ˉˆ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, Lʼᵢ/ᵔﹳ;->ᵢˋ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v2}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    throw v1

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lʼᵢ/ᵔﹳ;->ᵢˋ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v2}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    throw v1
.end method

.method public final ˉـ(JJLjava/lang/String;)V
    .locals 8

    .prologue
    iget-object v1, p0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v0, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/os/Handler;

    if-eqz v7, :cond_0

    new-instance v0, Lﹶ/ᵎﹶ;

    move-wide v3, p1

    move-wide v5, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ˊᵔ(JJLʼᵢ/ﾞʻ;Ljava/nio/ByteBuffer;IIIJZZLʽⁱ/ﹳᐧ;)Z
    .locals 0

    .prologue
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹶ/ʾˋ;->ᴵٴ:J

    iget-object p1, p0, Lﹶ/ʾˋ;->ˆˎ:Lʽⁱ/ﹳᐧ;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5, p7}, Lʼᵢ/ﾞʻ;->ﾞᴵ(I)V

    return p2

    :cond_0
    iget-object p1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7}, Lʼᵢ/ﾞʻ;->ﾞᴵ(I)V

    :cond_1
    iget-object p3, p0, Lʼᵢ/ᵔﹳ;->ᵢˋ:Lⁱי/ﾞᴵ;

    iget p4, p3, Lⁱי/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr p4, p9

    iput p4, p3, Lⁱי/ﾞᴵ;->ﾞᴵ:I

    invoke-virtual {p1}, Lᵢـ/ˑﹳ;->ـˆ()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p1, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {p1, p6, p10, p11, p9}, Lﹶ/ʾᵎ;->ᵔʾ(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7}, Lʼᵢ/ﾞʻ;->ﾞᴵ(I)V

    :cond_3
    iget-object p1, p0, Lʼᵢ/ᵔﹳ;->ᵢˋ:Lⁱי/ﾞᴵ;

    iget p3, p1, Lⁱי/ﾞᴵ;->ˑﹳ:I

    add-int/2addr p3, p9

    iput p3, p1, Lⁱי/ﾞᴵ;->ˑﹳ:I

    return p2

    :cond_4
    iput-wide p10, p0, Lﹶ/ʾˋ;->ᴵٴ:J

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    iget-boolean p2, p0, Lʼᵢ/ᵔﹳ;->ⁱי:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Lⁱי/ᐧᴵ;->ﹳٴ:I

    if-eqz p2, :cond_5

    const/16 p2, 0x138b

    goto :goto_1

    :cond_5
    const/16 p2, 0x138a

    :goto_1
    iget-boolean p3, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ᴵˊ:Z

    invoke-virtual {p0, p1, p14, p3, p2}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_2
    iget-object p2, p0, Lﹶ/ʾˋ;->ˆﹳ:Lʽⁱ/ﹳᐧ;

    iget-boolean p3, p0, Lʼᵢ/ᵔﹳ;->ⁱי:Z

    if-eqz p3, :cond_6

    iget-object p3, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p3, Lⁱי/ᐧᴵ;->ﹳٴ:I

    if-eqz p3, :cond_6

    const/16 p3, 0x138c

    goto :goto_3

    :cond_6
    const/16 p3, 0x1389

    :goto_3
    iget-boolean p4, p1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ᴵˊ:Z

    invoke-virtual {p0, p1, p2, p4, p3}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final ˋᵔ(Lﹳⁱ/ˑﹳ;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lﹳⁱ/ˑﹳ;->ʽʽ:Lʽⁱ/ﹳᐧ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lʼᵢ/ᵔﹳ;->ⁱי:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lﹳⁱ/ˑﹳ;->ˉٴ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lﹳⁱ/ˑﹳ;->ʽʽ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    iget-object p1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final ˏי()V
    .locals 1

    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {v0}, Lᵢـ/ˑﹳ;->ˉʿ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶ/ʾˋ;->יʿ:Z

    return-void
.end method

.method public final ˏᵢ()V
    .locals 1

    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {v0}, Lᵢـ/ˑﹳ;->ـˆ()V

    return-void
.end method

.method public final ˑ(Lʼᵢ/ﹳᐧ;Lʽⁱ/ﹳᐧ;)I
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result v4

    iget-object v5, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v6, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v3, v3, v3}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result v1

    return v1

    :cond_0
    iget v5, v1, Lʽⁱ/ﹳᐧ;->ˈʿ:I

    if-eqz v5, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    const/4 v8, 0x2

    if-eqz v5, :cond_3

    if-ne v5, v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    :goto_2
    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v11, "audio/raw"

    const/16 v12, 0x8

    const/4 v13, 0x4

    iget-object v14, v0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    if-eqz v5, :cond_6

    if-eqz v7, :cond_5

    invoke-static {v11, v3, v3}, Lʼᵢ/ـˆ;->ˈ(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v7, v10

    goto :goto_3

    :cond_4
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʼᵢ/ᵔʾ;

    :goto_3
    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {v0, v1}, Lﹶ/ʾˋ;->ʽⁱ(Lʽⁱ/ﹳᐧ;)I

    move-result v7

    iget-object v15, v14, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v15, v1}, Lﹶ/ʾᵎ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {v13, v12, v9, v7}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result v1

    return v1

    :cond_6
    move v7, v3

    :cond_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v14, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v15, v1}, Lﹶ/ʾᵎ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_6

    :cond_8
    iget v15, v1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    iget v2, v1, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    invoke-static {v8, v15, v2}, Lᐧˎ/ʼʼ;->ᴵᵔ(III)Lʽⁱ/ﹳᐧ;

    move-result-object v2

    iget-object v15, v14, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v15, v2}, Lﹶ/ʾᵎ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    if-nez v6, :cond_a

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    goto :goto_5

    :cond_a
    iget-object v2, v14, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v2, v1}, Lﹶ/ʾᵎ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v11, v3, v3}, Lʼᵢ/ـˆ;->ˈ(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lʼᵢ/ᵔʾ;

    :goto_4
    if-eqz v10, :cond_c

    invoke-static {v10}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object/from16 v2, p1

    invoke-static {v2, v1, v3, v3}, Lʼᵢ/ـˆ;->ﾞᴵ(Lʼᵢ/ﹳᐧ;Lʽⁱ/ﹳᐧ;ZZ)Lʼʻ/ʿᵢ;

    move-result-object v2

    :goto_5
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    :goto_6
    return v4

    :cond_d
    if-nez v5, :cond_e

    invoke-static {v8, v3, v3, v3}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result v1

    return v1

    :cond_e
    invoke-virtual {v2, v3}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʼᵢ/ᵔʾ;

    invoke-virtual {v4, v1}, Lʼᵢ/ᵔʾ;->ˑﹳ(Lʽⁱ/ﹳᐧ;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v6, 0x1

    :goto_7
    iget v8, v2, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v6, v8, :cond_10

    invoke-virtual {v2, v6}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʼᵢ/ᵔʾ;

    invoke-virtual {v8, v1}, Lʼᵢ/ᵔʾ;->ˑﹳ(Lʽⁱ/ﹳᐧ;)Z

    move-result v10

    if-eqz v10, :cond_f

    move/from16 v16, v3

    move-object v4, v8

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    move v2, v5

    const/16 v16, 0x1

    :goto_8
    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    const/4 v13, 0x3

    :goto_9
    if-eqz v2, :cond_12

    invoke-virtual {v4, v1}, Lʼᵢ/ᵔʾ;->ﾞᴵ(Lʽⁱ/ﹳᐧ;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v12, 0x10

    :cond_12
    iget-boolean v1, v4, Lʼᵢ/ᵔʾ;->ᵎﹶ:Z

    if-eqz v1, :cond_13

    const/16 v1, 0x40

    goto :goto_a

    :cond_13
    move v1, v3

    :goto_a
    if-eqz v16, :cond_14

    const/16 v3, 0x80

    :cond_14
    or-int v2, v13, v12

    or-int/2addr v2, v9

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    or-int/2addr v1, v7

    return v1
.end method

.method public final ˑٴ(Lʼᵢ/ᵔʾ;Lʽⁱ/ﹳᐧ;Landroid/media/MediaCrypto;F)Lﹳʽ/ᴵᵔ;
    .locals 12

    .prologue
    move/from16 v0, p4

    iget-object v2, p0, Lⁱי/ˑﹳ;->ٴʼ:[Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p2}, Lﹶ/ʾˋ;->ʾﾞ(Lʼᵢ/ᵔʾ;Lʽⁱ/ﹳᐧ;)I

    move-result v4

    iget-object v5, p1, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    array-length v6, v2

    move v9, v7

    :goto_0
    if-ge v9, v6, :cond_2

    aget-object v10, v2, v9

    invoke-virtual {p1, p2, v10}, Lʼᵢ/ᵔʾ;->ⁱˊ(Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;)Lⁱי/ᵎﹶ;

    move-result-object v11

    iget v11, v11, Lⁱי/ᵎﹶ;->ˈ:I

    if-eqz v11, :cond_1

    invoke-virtual {p0, p1, v10}, Lﹶ/ʾˋ;->ʾﾞ(Lʼᵢ/ᵔʾ;Lʽⁱ/ﹳᐧ;)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v4, p0, Lﹶ/ʾˋ;->ˎـ:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_4

    const-string v6, "OMX.SEC.aac.dec"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "samsung"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v9, "zeroflte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "herolte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "heroqlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lﹶ/ʾˋ;->ᵢʻ:Z

    const-string v6, "OMX.google.opus.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "c2.android.opus.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "OMX.google.vorbis.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "c2.android.vorbis.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v8

    :goto_4
    iput-boolean v5, p0, Lﹶ/ʾˋ;->ʿʽ:Z

    iget-object v5, p1, Lʼᵢ/ᵔʾ;->ʽ:Ljava/lang/String;

    iget v6, p0, Lﹶ/ʾˋ;->ˎـ:I

    new-instance v9, Landroid/media/MediaFormat;

    invoke-direct {v9}, Landroid/media/MediaFormat;-><init>()V

    const-string v10, "mime"

    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p2, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    iget-object v10, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v11, "channel-count"

    invoke-virtual {v9, v11, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v5, p2, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    const-string v11, "sample-rate"

    invoke-virtual {v9, v11, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v11, p2, Lʽⁱ/ﹳᐧ;->ᵔﹳ:Ljava/util/List;

    invoke-static {v9, v11}, Lᐧˎ/ﹳٴ;->ʽʽ(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v11, "max-input-size"

    invoke-static {v9, v11, v6}, Lᐧˎ/ﹳٴ;->ʼʼ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v6, "priority"

    invoke-virtual {v9, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_8

    const/16 v6, 0x17

    if-ne v2, v6, :cond_7

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "ZTE B2017G"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "AXON 7 mini"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    const-string v6, "operating-rate"

    invoke-virtual {v9, v6, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    :goto_5
    const-string v0, "audio/ac4"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p2}, Lᐧˎ/ʽ;->ʽ(Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v11, "profile"

    invoke-static {v9, v11, v6}, Lᐧˎ/ﹳٴ;->ʼʼ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "level"

    invoke-static {v9, v6, v0}, Lᐧˎ/ﹳٴ;->ʼʼ(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_9
    const/16 v0, 0x1c

    if-gt v2, v0, :cond_a

    const-string v0, "ac4-is-sync"

    invoke-virtual {v9, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    if-lt v2, v4, :cond_b

    iget v0, p2, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    const/4 v4, 0x4

    invoke-static {v4, v0, v5}, Lᐧˎ/ʼʼ;->ᴵᵔ(III)Lʽⁱ/ﹳᐧ;

    move-result-object v0

    iget-object v5, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iget-object v5, v5, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v5, v0}, Lﹶ/ʾᵎ;->יـ(Lʽⁱ/ﹳᐧ;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_b

    const-string v0, "pcm-encoding"

    invoke-virtual {v9, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/16 v0, 0x20

    if-lt v2, v0, :cond_c

    const-string v0, "max-output-channel-count"

    const/16 v4, 0x63

    invoke-virtual {v9, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    const/16 v0, 0x23

    if-lt v2, v0, :cond_d

    iget v0, p0, Lﹶ/ʾˋ;->ˉʽ:I

    neg-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "importance"

    invoke-virtual {v9, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_d
    iget-object v0, p1, Lʼᵢ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, p2

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lﹶ/ʾˋ;->ˆˎ:Lʽⁱ/ﹳᐧ;

    new-instance v0, Lﹳʽ/ᴵᵔ;

    const/4 v4, 0x0

    iget-object v6, p0, Lﹶ/ʾˋ;->ˆˑ:Lʼᵢ/ˆʾ;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Lﹳʽ/ᴵᵔ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final ˑﹳ()Lʽⁱ/ᵎⁱ;
    .locals 1

    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iget-object v0, v0, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    iget-object v0, v0, Lﹶ/ʾᵎ;->ˈٴ:Lʽⁱ/ᵎⁱ;

    return-object v0
.end method

.method public final יـ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lﹶ/ʾˋ;->ˆʻ:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lﹶ/ʾˋ;->ᴵٴ:J

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lʼᵢ/ᵔﹳ;->ⁱי:Z

    invoke-virtual {p0}, Lʼᵢ/ᵔﹳ;->ﹳﹳ()V

    invoke-virtual {p0}, Lʼᵢ/ᵔﹳ;->ˈˏ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lʼᵢ/ᵔﹳ;->ˊᵔ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v3, v2}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v2, p0, Lʼᵢ/ᵔﹳ;->ˊᵔ:Lⁱᴵ/ﾞᴵ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v2, p0, Lﹶ/ʾˋ;->ﾞˊ:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lﹶ/ʾˋ;->ﾞˊ:Z

    invoke-virtual {v0}, Lᵢـ/ˑﹳ;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lʼᵢ/ᵔﹳ;->ˊᵔ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v4, v2}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v2, p0, Lʼᵢ/ᵔﹳ;->ˊᵔ:Lⁱᴵ/ﾞᴵ;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-boolean v3, p0, Lﹶ/ʾˋ;->ﾞˊ:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lﹶ/ʾˋ;->ﾞˊ:Z

    invoke-virtual {v0}, Lᵢـ/ˑﹳ;->reset()V

    :cond_1
    throw v2
.end method

.method public final ᐧﾞ(J)V
    .locals 0

    iget-object p1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ᴵˑ(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lﹶ/ʾˋ;->ˊﹳ:Lـʾ/ᵔﹳ;

    iget-object v1, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lﹶ/ᵎﹶ;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ᵎᵔ(Lʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lﹶ/ʾˋ;->ˆˎ:Lʽⁱ/ﹳᐧ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lʼᵢ/ᵔﹳ;->ˑʼ:Lʼᵢ/ﾞʻ;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget v3, p1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    const-string v4, "audio/raw"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v6}, Lᐧˎ/ʼʼ;->ˈٴ(ILjava/nio/ByteOrder;)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v5

    :goto_0
    new-instance v6, Lʽⁱ/ᵔﹳ;

    invoke-direct {v6}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-static {v4}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v0, v6, Lʽⁱ/ᵔﹳ;->ٴᵢ:I

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ᵎⁱ:I

    iput v0, v6, Lʽⁱ/ᵔﹳ;->ˉٴ:I

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ٴʼ:I

    iput v0, v6, Lʽⁱ/ᵔﹳ;->ᵎⁱ:I

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    iput-object v0, v6, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v0, v6, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ⁱˊ:Ljava/lang/String;

    iput-object v0, v6, Lʽⁱ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ʽ:Lʼʻ/ᵎⁱ;

    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    iput-object v0, v6, Lʽⁱ/ᵔﹳ;->ʽ:Lʼʻ/ᵎⁱ;

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iput-object v0, v6, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ˑﹳ:I

    iput v0, v6, Lʽⁱ/ᵔﹳ;->ˑﹳ:I

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    iput p1, v6, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, v6, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, v6, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v6}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-boolean p2, p0, Lﹶ/ʾˋ;->ᵢʻ:Z

    const/4 v0, 0x6

    iget v4, p1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-eqz p2, :cond_5

    if-ne v4, v0, :cond_5

    if-ge v3, v0, :cond_5

    new-array v2, v3, [I

    move p2, v1

    :goto_1
    if-ge p2, v3, :cond_b

    aput p2, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p2, p0, Lﹶ/ʾˋ;->ʿʽ:Z

    if-eqz p2, :cond_b

    const/4 p2, 0x3

    const/4 v3, 0x1

    if-eq v4, p2, :cond_a

    const/4 v6, 0x5

    if-eq v4, v6, :cond_9

    if-eq v4, v0, :cond_8

    const/4 p2, 0x7

    if-eq v4, p2, :cond_7

    const/16 p2, 0x8

    if-eq v4, p2, :cond_6

    goto :goto_2

    :cond_6
    new-array v2, p2, [I

    fill-array-data v2, :array_0

    goto :goto_2

    :cond_7
    new-array v2, p2, [I

    fill-array-data v2, :array_1

    goto :goto_2

    :cond_8
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    goto :goto_2

    :cond_9
    const/4 v0, 0x4

    filled-new-array {v1, v5, v3, p2, v0}, [I

    move-result-object v2

    goto :goto_2

    :cond_a
    filled-new-array {v1, v5, v3}, [I

    move-result-object v2

    :cond_b
    :goto_2
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1d

    iget-object v3, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    if-lt p2, v0, :cond_d

    :try_start_1
    iget-boolean p2, p0, Lʼᵢ/ᵔﹳ;->ⁱי:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Lⁱי/ᐧᴵ;->ﹳٴ:I

    if-eqz p2, :cond_c

    iget-object p2, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    :goto_3
    invoke-virtual {v3, p1, v2}, Lᵢـ/ˑﹳ;->ʻٴ(Lʽⁱ/ﹳᐧ;[I)V
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_4
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->ʾˋ:Lʽⁱ/ﹳᐧ;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v1, v0}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public final ᵎﹶ()J
    .locals 2

    .prologue
    iget v0, p0, Lⁱי/ˑﹳ;->ˉٴ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lﹶ/ʾˋ;->ⁱˉ()V

    :cond_0
    iget-wide v0, p0, Lﹶ/ʾˋ;->ʻʼ:J

    return-wide v0
.end method

.method public final ᵔٴ(Lʼᵢ/ﹳᐧ;Lʽⁱ/ﹳᐧ;Z)Ljava/util/ArrayList;
    .locals 3

    .prologue
    iget-object v0, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iget-object v0, v0, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v0, p2}, Lﹶ/ʾᵎ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "audio/raw"

    invoke-static {v0, v1, v1}, Lʼᵢ/ـˆ;->ˈ(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼᵢ/ᵔʾ;

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, p3, v1}, Lʼᵢ/ـˆ;->ﾞᴵ(Lʼᵢ/ﹳᐧ;Lʽⁱ/ﹳᐧ;ZZ)Lʼʻ/ʿᵢ;

    move-result-object p1

    :goto_1
    sget-object p3, Lʼᵢ/ـˆ;->ﹳٴ:Ljava/util/HashMap;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lʻʿ/ˈ;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p2}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lʼᵢ/יـ;

    invoke-direct {p2, v1, p1}, Lʼᵢ/יـ;-><init>(ILjava/lang/Object;)V

    invoke-static {p3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method

.method public final ᵔﹳ(ZJ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lʼᵢ/ᵔﹳ;->ᵔﹳ(ZJ)V

    iget-object p1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {p1}, Lᵢـ/ˑﹳ;->flush()V

    iput-wide p2, p0, Lﹶ/ʾˋ;->ʻʼ:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹶ/ʾˋ;->ᴵٴ:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lﹶ/ʾˋ;->ˆʻ:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹶ/ʾˋ;->ᵢᐧ:Z

    return-void
.end method

.method public final ⁱˉ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {p0}, Lﹶ/ʾˋ;->ﾞʻ()Z

    move-result v1

    invoke-virtual {v0, v1}, Lᵢـ/ˑﹳ;->ˉˆ(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lﹶ/ʾˋ;->ᵢᐧ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lﹶ/ʾˋ;->ʻʼ:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lﹶ/ʾˋ;->ʻʼ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹶ/ʾˋ;->ᵢᐧ:Z

    :cond_1
    return-void
.end method

.method public final ⁱˊ(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    iget-object v1, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    const/16 v2, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    check-cast p2, Lⁱי/ʾˋ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lʼᵢ/ᵔﹳ;->ـﹶ:Lⁱי/ʾˋ;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lᵢـ/ˑﹳ;->ˆʾ(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_4

    iget-object p2, p0, Lﹶ/ʾˋ;->ˆˑ:Lʼᵢ/ˆʾ;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lʼᵢ/ˆʾ;->ˈ(I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Lᵢـ/ˑﹳ;->ʽﹳ(Z)V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lﹶ/ʾˋ;->ˉʽ:I

    iget-object p1, p0, Lʼᵢ/ᵔﹳ;->ˑʼ:Lʼᵢ/ﾞʻ;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lﹶ/ʾˋ;->ˉʽ:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Lʼᵢ/ﾞʻ;->ʽ(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    check-cast p2, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_6
    check-cast p2, Lʽⁱ/ﾞᴵ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p2}, Lᵢـ/ˑﹳ;->ˏי(Lʽⁱ/ﾞᴵ;)V

    return-void

    :cond_7
    check-cast p2, Lʽⁱ/ˑﹳ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p2}, Lᵢـ/ˑﹳ;->ᵎﹶ(Lʽⁱ/ˑﹳ;)V

    return-void

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Lᵢـ/ˑﹳ;->ʾᵎ(F)V

    return-void
.end method

.method public final ﹳᐧ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lﹶ/ʾˋ;->ˆˑ:Lʼᵢ/ˆʾ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʼᵢ/ˆʾ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final ﹶᐧ()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    invoke-virtual {v0}, Lᵢـ/ˑﹳ;->ᵔᵢ()V

    iget-wide v0, p0, Lʼᵢ/ᵔﹳ;->ﾞˋ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lﹶ/ʾˋ;->ᴵٴ:J
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-boolean v1, p0, Lʼᵢ/ᵔﹳ;->ⁱי:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x138b

    goto :goto_1

    :cond_1
    const/16 v1, 0x138a

    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ʽʽ:Lʽⁱ/ﹳᐧ;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ᴵˊ:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final ﾞʻ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʼᵢ/ᵔﹳ;->ˎʾ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lﹶ/ʾˋ;->ʽʾ:Lᵢـ/ˑﹳ;

    iget-object v0, v0, Lᵢـ/ˑﹳ;->ﹳٴ:Lﹶ/ʾᵎ;

    invoke-virtual {v0}, Lﹶ/ʾᵎ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞᴵ()Z
    .locals 2

    iget-boolean v0, p0, Lﹶ/ʾˋ;->ˆʻ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lﹶ/ʾˋ;->ˆʻ:Z

    return v0
.end method
