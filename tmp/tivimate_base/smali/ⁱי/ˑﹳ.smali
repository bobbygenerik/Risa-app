.class public abstract Lⁱי/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱי/ʿ;


# instance fields
.field public final ʽʽ:Lـʾ/ᵔﹳ;

.field public final ʾˋ:Ljava/lang/Object;

.field public ˆﾞ:J

.field public ˈʿ:Z

.field public ˈٴ:Lⁱי/ᐧᴵ;

.field public ˉٴ:I

.field public ˊʻ:Lʻʿ/יـ;

.field public ˊˋ:Lﹶʽ/ﹳᐧ;

.field public ˋᵔ:Lﹳᵢ/ᵢˏ;

.field public ˑٴ:Lʽⁱ/ʼˈ;

.field public ٴʼ:[Lʽⁱ/ﹳᐧ;

.field public ٴᵢ:Lᐧˎ/ˏי;

.field public final ᴵˊ:I

.field public ᴵᵔ:I

.field public ᵎˊ:J

.field public ᵎⁱ:Lﹳᵢ/ˉـ;

.field public ᵔי:J

.field public ᵔٴ:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lⁱי/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    iput p1, p0, Lⁱי/ˑﹳ;->ᴵˊ:I

    new-instance p1, Lـʾ/ᵔﹳ;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, Lـʾ/ᵔﹳ;-><init>(I)V

    iput-object p1, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lⁱי/ˑﹳ;->ˆﾞ:J

    sget-object p1, Lʽⁱ/ʼˈ;->ﹳٴ:Lʽⁱ/ˑٴ;

    iput-object p1, p0, Lⁱי/ˑﹳ;->ˑٴ:Lʽⁱ/ʼˈ;

    return-void
.end method


# virtual methods
.method public ʻٴ([Lʽⁱ/ﹳᐧ;JJLﹳᵢ/ᵢˏ;)V
    .locals 0

    return-void
.end method

.method public final ʼʼ([Lʽⁱ/ﹳᐧ;Lﹳᵢ/ˉـ;JJLﹳᵢ/ᵢˏ;)V
    .locals 7

    .prologue
    iget-boolean v0, p0, Lⁱי/ˑﹳ;->ᵔٴ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object p2, p0, Lⁱי/ˑﹳ;->ᵎⁱ:Lﹳᵢ/ˉـ;

    iput-object p7, p0, Lⁱי/ˑﹳ;->ˋᵔ:Lﹳᵢ/ᵢˏ;

    iget-wide v0, p0, Lⁱי/ˑﹳ;->ˆﾞ:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lⁱי/ˑﹳ;->ˆﾞ:J

    :cond_0
    iput-object p1, p0, Lⁱי/ˑﹳ;->ٴʼ:[Lʽⁱ/ﹳᐧ;

    iput-wide p5, p0, Lⁱי/ˑﹳ;->ᵎˊ:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lⁱי/ˑﹳ;->ʻٴ([Lʽⁱ/ﹳᐧ;JJLﹳᵢ/ᵢˏ;)V

    return-void
.end method

.method public ʼˎ()Lⁱי/ᵎⁱ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ʼᐧ(ZZ)V
    .locals 0

    return-void
.end method

.method public ʽﹳ()V
    .locals 0

    return-void
.end method

.method public abstract ʾˋ(Lʽⁱ/ﹳᐧ;)I
.end method

.method public abstract ʾᵎ(JJ)V
.end method

.method public abstract ˆʾ()Ljava/lang/String;
.end method

.method public ˈ()V
    .locals 0

    return-void
.end method

.method public abstract ˉʿ()Z
.end method

.method public abstract ˉˆ()V
.end method

.method public ˏי()V
    .locals 0

    return-void
.end method

.method public יـ()V
    .locals 0

    return-void
.end method

.method public final ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱי/ˑﹳ;->ᵎⁱ:Lﹳᵢ/ˉـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lﹳᵢ/ˉـ;->ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lⁱי/ˑﹳ;->ˆﾞ:J

    iget-boolean p1, p0, Lⁱי/ˑﹳ;->ᵔٴ:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide v2, p0, Lⁱי/ˑﹳ;->ᵎˊ:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide p1, p0, Lⁱי/ˑﹳ;->ˆﾞ:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lⁱי/ˑﹳ;->ˆﾞ:J

    return p3

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lʽⁱ/ﹳᐧ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, Lʽⁱ/ﹳᐧ;->יـ:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object p2

    iget-wide v2, p0, Lⁱי/ˑﹳ;->ᵎˊ:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lʽⁱ/ᵔﹳ;->ﹳᐧ:J

    new-instance v0, Lʽⁱ/ﹳᐧ;

    invoke-direct {v0, p2}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object v0, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    :cond_3
    return p3
.end method

.method public final ٴﹶ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lⁱי/ˑﹳ;->ˆﾞ:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᴵˊ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔʾ()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lⁱי/ˑﹳ;->ᵔٴ:Z

    return v0

    :cond_0
    iget-object v0, p0, Lⁱי/ˑﹳ;->ᵎⁱ:Lﹳᵢ/ˉـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lﹳᵢ/ˉـ;->ﹳٴ()Z

    move-result v0

    return v0
.end method

.method public ᵔᵢ(JJ)J
    .locals 0

    .prologue
    iget p1, p0, Lⁱי/ˑﹳ;->ˉٴ:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ˉʿ()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ﾞʻ()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-wide/32 p1, 0xf4240

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x2710

    return-wide p1
.end method

.method public abstract ᵔﹳ(ZJ)V
.end method

.method public ᵢˏ(FF)V
    .locals 0

    return-void
.end method

.method public ⁱˊ(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 11

    .prologue
    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lⁱי/ˑﹳ;->ˈʿ:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lⁱי/ˑﹳ;->ˈʿ:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lⁱי/ˑﹳ;->ʾˋ(Lʽⁱ/ﹳᐧ;)I

    move-result v2
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x7

    iput-boolean v1, p0, Lⁱי/ˑﹳ;->ˈʿ:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lⁱי/ˑﹳ;->ˈʿ:Z

    throw v0

    :catch_0
    iput-boolean v1, p0, Lⁱי/ˑﹳ;->ˈʿ:Z

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ˆʾ()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lⁱי/ˑﹳ;->ᴵᵔ:I

    iget-object v9, p0, Lⁱי/ˑﹳ;->ˋᵔ:Lﹳᵢ/ᵢˏ;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez p2, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    const/4 v2, 0x1

    move-object v3, p1

    move-object v7, p2

    move v10, p3

    move v4, p4

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;ILjava/lang/String;ILʽⁱ/ﹳᐧ;ILﹳᵢ/ᵢˏ;Z)V

    return-object v1
.end method

.method public ﹳᐧ()V
    .locals 0

    return-void
.end method

.method public abstract ﾞʻ()Z
.end method
