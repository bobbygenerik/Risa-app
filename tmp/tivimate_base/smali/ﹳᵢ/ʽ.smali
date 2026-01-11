.class public final Lﹳᵢ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʾᵎ;
.implements Lﹳᵢ/ـˆ;


# instance fields
.field public ʽʽ:[Lﹳᵢ/ⁱˊ;

.field public final ʾˋ:Lﹳᵢ/ʾᵎ;

.field public ˈٴ:J

.field public ˊʻ:J

.field public ٴᵢ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public ᴵˊ:Lﹳᵢ/ـˆ;

.field public ᴵᵔ:J


# direct methods
.method public constructor <init>(Lﹳᵢ/ʾᵎ;ZJJ)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    const/4 p1, 0x0

    new-array p1, p1, [Lﹳᵢ/ⁱˊ;

    iput-object p1, p0, Lﹳᵢ/ʽ;->ʽʽ:[Lﹳᵢ/ⁱˊ;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lﹳᵢ/ʽ;->ˈٴ:J

    iput-wide p3, p0, Lﹳᵢ/ʽ;->ᴵᵔ:J

    iput-wide p5, p0, Lﹳᵢ/ʽ;->ˊʻ:J

    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʿᵢ;->ʻٴ(J)V

    return-void
.end method

.method public final ʼˎ(Lﹳᵢ/ـˆ;J)V
    .locals 0

    iput-object p1, p0, Lﹳᵢ/ʽ;->ᴵˊ:Lﹳᵢ/ـˆ;

    iget-object p1, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {p1, p0, p2, p3}, Lﹳᵢ/ʾᵎ;->ʼˎ(Lﹳᵢ/ـˆ;J)V

    return-void
.end method

.method public final ʼᐧ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʽ;->ٴᵢ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ʼᐧ()V

    return-void

    :cond_0
    throw v0
.end method

.method public final ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v8, p3

    array-length v1, v8

    new-array v1, v1, [Lﹳᵢ/ⁱˊ;

    iput-object v1, v0, Lﹳᵢ/ʽ;->ʽʽ:[Lﹳᵢ/ⁱˊ;

    array-length v1, v8

    new-array v4, v1, [Lﹳᵢ/ˉـ;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v8

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lﹳᵢ/ʽ;->ʽʽ:[Lﹳᵢ/ⁱˊ;

    aget-object v3, v8, v1

    check-cast v3, Lﹳᵢ/ⁱˊ;

    aput-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v10, v3, Lﹳᵢ/ⁱˊ;->ʾˋ:Lﹳᵢ/ˉـ;

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    aput-object v10, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lﹳᵢ/ʾᵎ;->ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J

    move-result-wide v11

    iget-wide v13, v0, Lﹳᵢ/ʽ;->ˊʻ:J

    const/4 v3, 0x0

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v5, v13, v15

    if-eqz v5, :cond_2

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_2
    invoke-virtual {v0}, Lﹳᵢ/ʽ;->ﹳٴ()Z

    move-result v5

    if-eqz v5, :cond_5

    cmp-long v5, v11, v6

    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    if-eqz v5, :cond_5

    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v2, v6

    if-eqz v7, :cond_4

    invoke-interface {v7}, Lﹶʽ/ˏי;->ﾞʻ()Lʽⁱ/ﹳᐧ;

    move-result-object v7

    iget-object v11, v7, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v7, v7, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v11, v7}, Lʽⁱ/ˉٴ;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_3
    move-wide v5, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    iput-wide v5, v0, Lﹳᵢ/ʽ;->ˈٴ:J

    const/4 v1, 0x0

    :goto_5
    array-length v2, v8

    if-ge v1, v2, :cond_9

    aget-object v2, v4, v1

    if-nez v2, :cond_6

    iget-object v2, v0, Lﹳᵢ/ʽ;->ʽʽ:[Lﹳᵢ/ⁱˊ;

    aput-object v3, v2, v1

    goto :goto_6

    :cond_6
    iget-object v5, v0, Lﹳᵢ/ʽ;->ʽʽ:[Lﹳᵢ/ⁱˊ;

    aget-object v6, v5, v1

    if-eqz v6, :cond_7

    iget-object v6, v6, Lﹳᵢ/ⁱˊ;->ʾˋ:Lﹳᵢ/ˉـ;

    if-eq v6, v2, :cond_8

    :cond_7
    new-instance v6, Lﹳᵢ/ⁱˊ;

    invoke-direct {v6, v0, v2}, Lﹳᵢ/ⁱˊ;-><init>(Lﹳᵢ/ʽ;Lﹳᵢ/ˉـ;)V

    aput-object v6, v5, v1

    :cond_8
    :goto_6
    iget-object v2, v0, Lﹳᵢ/ʽ;->ʽʽ:[Lﹳᵢ/ⁱˊ;

    aget-object v2, v2, v1

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-wide v9
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˈ()Z

    move-result v0

    return v0
.end method

.method public final ˉʿ()J
    .locals 7

    .prologue
    invoke-virtual {p0}, Lﹳᵢ/ʽ;->ﹳٴ()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lﹳᵢ/ʽ;->ˈٴ:J

    iput-wide v1, p0, Lﹳᵢ/ʽ;->ˈٴ:J

    invoke-virtual {p0}, Lﹳᵢ/ʽ;->ˉʿ()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ˉʿ()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iget-wide v0, p0, Lﹳᵢ/ʽ;->ᴵᵔ:J

    iget-wide v5, p0, Lﹳᵢ/ʽ;->ˊʻ:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3
    return-wide v0
.end method

.method public final ˉˆ()J
    .locals 7

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˉˆ()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lﹳᵢ/ʽ;->ˊʻ:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final ˏי(J)V
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʾᵎ;->ˏי(J)V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 0

    .prologue
    iget-object p1, p0, Lﹳᵢ/ʽ;->ٴᵢ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lﹳᵢ/ʽ;->ᴵˊ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ـˆ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    return-void
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1}, Lﹳᵢ/ʿᵢ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    move-result p1

    return p1
.end method

.method public final ᵔʾ()Lﹳᵢ/ʻᵎ;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ᵔʾ()Lﹳᵢ/ʻᵎ;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 9

    .prologue
    iget-wide v0, p0, Lﹳᵢ/ʽ;->ᴵᵔ:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v3, p3, Lⁱי/ᴵʼ;->ﹳٴ:J

    const-wide/16 v5, 0x0

    sub-long v7, p1, v0

    invoke-static/range {v3 .. v8}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide v0

    iget-wide v2, p3, Lⁱי/ᴵʼ;->ⁱˊ:J

    iget-wide v4, p0, Lﹳᵢ/ʽ;->ˊʻ:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    move-wide v6, v4

    goto :goto_1

    :cond_1
    sub-long/2addr v4, p1

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide v2

    iget-wide v4, p3, Lⁱי/ᴵʼ;->ﹳٴ:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    iget-wide v4, p3, Lⁱי/ᴵʼ;->ⁱˊ:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p3, Lⁱי/ᴵʼ;

    invoke-direct {p3, v0, v1, v2, v3}, Lⁱי/ᴵʼ;-><init>(JJ)V

    :goto_2
    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1, p2, p3}, Lﹳᵢ/ʾᵎ;->ⁱˊ(JLⁱי/ᴵʼ;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ﹳٴ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lﹳᵢ/ʽ;->ˈٴ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳᐧ(J)J
    .locals 5

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lﹳᵢ/ʽ;->ˈٴ:J

    iget-object v0, p0, Lﹳᵢ/ʽ;->ʽʽ:[Lﹳᵢ/ⁱˊ;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-boolean v2, v4, Lﹳᵢ/ⁱˊ;->ᴵˊ:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ʾᵎ;->ﹳᐧ(J)J

    move-result-wide p1

    iget-wide v0, p0, Lﹳᵢ/ʽ;->ᴵᵔ:J

    iget-wide v2, p0, Lﹳᵢ/ʽ;->ˊʻ:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method public final ﾞʻ()J
    .locals 7

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ﾞʻ()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lﹳᵢ/ʽ;->ˊʻ:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final ﾞᴵ(Lﹳᵢ/ʿᵢ;)V
    .locals 0

    check-cast p1, Lﹳᵢ/ʾᵎ;

    iget-object p1, p0, Lﹳᵢ/ʽ;->ᴵˊ:Lﹳᵢ/ـˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method
