.class public abstract Lᴵי/ˑٴ;
.super Lᴵי/ˏי;
.source "SourceFile"


# instance fields
.field public ʽʽ:Z

.field public ˈٴ:Lﹶˈ/ᵔᵢ;

.field public ᴵˊ:J


# virtual methods
.method public abstract shutdown()V
.end method

.method public abstract ʼـ()Ljava/lang/Thread;
.end method

.method public final ʽⁱ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lᴵי/ˑٴ;->ˈٴ:Lﹶˈ/ᵔᵢ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lᴵי/ᴵᵔ;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lᴵי/ᴵᵔ;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final ʾˊ(Z)V
    .locals 4

    .prologue
    iget-wide v0, p0, Lᴵי/ˑٴ;->ᴵˊ:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lᴵי/ˑٴ;->ᴵˊ:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lᴵי/ˑٴ;->ʽʽ:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lᴵי/ˑٴ;->shutdown()V

    :cond_2
    :goto_1
    return-void
.end method

.method public ʾﾞ(JLᴵי/ˆﾞ;)V
    .locals 1

    sget-object v0, Lᴵי/ʼʼ;->ˉٴ:Lᴵי/ʼʼ;

    invoke-virtual {v0, p1, p2, p3}, Lᴵי/ˈʿ;->ᵎʿ(JLᴵי/ˆﾞ;)V

    return-void
.end method

.method public final ˎᐧ(Z)V
    .locals 4

    .prologue
    iget-wide v0, p0, Lᴵי/ˑٴ;->ᴵˊ:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lᴵי/ˑٴ;->ᴵˊ:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lᴵי/ˑٴ;->ʽʽ:Z

    :cond_1
    return-void
.end method

.method public final ˑ(Lᴵי/ᴵᵔ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵי/ˑٴ;->ˈٴ:Lﹶˈ/ᵔᵢ;

    if-nez v0, :cond_0

    new-instance v0, Lﹶˈ/ᵔᵢ;

    invoke-direct {v0}, Lﹶˈ/ᵔᵢ;-><init>()V

    iput-object v0, p0, Lᴵי/ˑٴ;->ˈٴ:Lﹶˈ/ᵔᵢ;

    :cond_0
    invoke-virtual {v0, p1}, Lﹶˈ/ᵔᵢ;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract יﹳ()J
.end method
