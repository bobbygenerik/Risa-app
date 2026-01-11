.class public final Lﹳᵢ/ˏᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʾᵎ;
.implements Lﹳᵢ/ـˆ;


# instance fields
.field public ʽʽ:Lﹳᵢ/ـˆ;

.field public final ʾˋ:Lﹳᵢ/ʾᵎ;

.field public final ᴵˊ:J


# direct methods
.method public constructor <init>(Lﹳᵢ/ʾᵎ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    iput-wide p2, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 2

    iget-wide v0, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʿᵢ;->ʻٴ(J)V

    return-void
.end method

.method public final ʼˎ(Lﹳᵢ/ـˆ;J)V
    .locals 2

    iput-object p1, p0, Lﹳᵢ/ˏᵢ;->ʽʽ:Lﹳᵢ/ـˆ;

    iget-wide v0, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    sub-long/2addr p2, v0

    iget-object p1, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {p1, p0, p2, p3}, Lﹳᵢ/ʾᵎ;->ʼˎ(Lﹳᵢ/ـˆ;J)V

    return-void
.end method

.method public final ʼᐧ()V
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ʼᐧ()V

    return-void
.end method

.method public final ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J
    .locals 11

    .prologue
    array-length v0, p3

    new-array v4, v0, [Lﹳᵢ/ˉـ;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, p3, v1

    check-cast v2, Lﹳᵢ/ᐧᴵ;

    if-eqz v2, :cond_0

    iget-object v8, v2, Lﹳᵢ/ᐧᴵ;->ʾˋ:Lﹳᵢ/ˉـ;

    :cond_0
    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    iget-wide v9, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    sub-long v6, p5, v9

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lﹳᵢ/ʾᵎ;->ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J

    move-result-wide p1

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_5

    aget-object v1, v4, v0

    if-nez v1, :cond_2

    aput-object v8, p3, v0

    goto :goto_2

    :cond_2
    aget-object v2, p3, v0

    if-eqz v2, :cond_3

    check-cast v2, Lﹳᵢ/ᐧᴵ;

    iget-object v2, v2, Lﹳᵢ/ᐧᴵ;->ʾˋ:Lﹳᵢ/ˉـ;

    if-eq v2, v1, :cond_4

    :cond_3
    new-instance v2, Lﹳᵢ/ᐧᴵ;

    invoke-direct {v2, v1, v9, v10}, Lﹳᵢ/ᐧᴵ;-><init>(Lﹳᵢ/ˉـ;J)V

    aput-object v2, p3, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-long/2addr p1, v9

    return-wide p1
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˈ()Z

    move-result v0

    return v0
.end method

.method public final ˉʿ()J
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ˉʿ()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final ˉˆ()J
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˉˆ()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final ˏי(J)V
    .locals 2

    iget-wide v0, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʾᵎ;->ˏי(J)V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 0

    iget-object p1, p0, Lﹳᵢ/ˏᵢ;->ʽʽ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ـˆ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    return-void
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 5

    new-instance v0, Lⁱי/ٴᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p1, Lⁱי/ˉٴ;->ﹳٴ:J

    iget v3, p1, Lⁱי/ˉٴ;->ⁱˊ:F

    iput v3, v0, Lⁱי/ٴᵢ;->ⁱˊ:F

    iget-wide v3, p1, Lⁱי/ˉٴ;->ʽ:J

    iput-wide v3, v0, Lⁱי/ٴᵢ;->ʽ:J

    iget-wide v3, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lⁱי/ٴᵢ;->ﹳٴ:J

    new-instance p1, Lⁱי/ˉٴ;

    invoke-direct {p1, v0}, Lⁱי/ˉٴ;-><init>(Lⁱי/ٴᵢ;)V

    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1}, Lﹳᵢ/ʿᵢ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    move-result p1

    return p1
.end method

.method public final ᵔʾ()Lﹳᵢ/ʻᵎ;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ᵔʾ()Lﹳᵢ/ʻᵎ;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 3

    iget-wide v0, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    sub-long/2addr p1, v0

    iget-object v2, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v2, p1, p2, p3}, Lﹳᵢ/ʾᵎ;->ⁱˊ(JLⁱי/ᴵʼ;)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final ﹳᐧ(J)J
    .locals 3

    iget-wide v0, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    sub-long/2addr p1, v0

    iget-object v2, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v2, p1, p2}, Lﹳᵢ/ʾᵎ;->ﹳᐧ(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final ﾞʻ()J
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˏᵢ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ﾞʻ()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lﹳᵢ/ˏᵢ;->ᴵˊ:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final ﾞᴵ(Lﹳᵢ/ʿᵢ;)V
    .locals 0

    check-cast p1, Lﹳᵢ/ʾᵎ;

    iget-object p1, p0, Lﹳᵢ/ˏᵢ;->ʽʽ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method
