.class public final Lﹳᵢ/ˑﹳ;
.super Lﹳᵢ/ʼᐧ;
.source "SourceFile"


# instance fields
.field public final ʽ:J

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lʽⁱ/ʼˈ;JJ)V
    .locals 9

    .prologue
    invoke-direct {p0, p1}, Lﹳᵢ/ʼᐧ;-><init>(Lʽⁱ/ʼˈ;)V

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    cmp-long v1, p4, p2

    if-ltz v1, :cond_1

    :cond_0
    move-wide v4, p2

    move-wide v6, p4

    goto :goto_0

    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    const/4 v3, 0x2

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    throw v2

    :goto_0
    invoke-virtual {p1}, Lʽⁱ/ʼˈ;->ᵔᵢ()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_a

    new-instance p2, Lʽⁱ/ˊˋ;

    invoke-direct {p2}, Lʽⁱ/ˊˋ;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p3, p2, v1, v2}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p1

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-boolean p2, p1, Lʽⁱ/ˊˋ;->ٴﹶ:Z

    if-nez p2, :cond_3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lʽⁱ/ˊˋ;->ᵔᵢ:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, p4}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    iget-wide v0, p1, Lʽⁱ/ˊˋ;->ˉʿ:J

    goto :goto_2

    :cond_4
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_2
    iget-wide v5, p1, Lʽⁱ/ˊˋ;->ˉʿ:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v5, v7

    if-eqz p2, :cond_6

    cmp-long p5, v0, v5

    if-lez p5, :cond_5

    move-wide v0, v5

    :cond_5
    cmp-long p5, v3, v0

    if-lez p5, :cond_6

    move-wide v3, v0

    :cond_6
    iput-wide v3, p0, Lﹳᵢ/ˑﹳ;->ʽ:J

    iput-wide v0, p0, Lﹳᵢ/ˑﹳ;->ˈ:J

    cmp-long p5, v0, v7

    if-nez p5, :cond_7

    goto :goto_3

    :cond_7
    sub-long v7, v0, v3

    :goto_3
    iput-wide v7, p0, Lﹳᵢ/ˑﹳ;->ˑﹳ:J

    iget-boolean p1, p1, Lʽⁱ/ˊˋ;->ʼˎ:Z

    if-eqz p1, :cond_9

    if-eqz p5, :cond_8

    if-eqz p2, :cond_9

    cmp-long p1, v0, v5

    if-nez p1, :cond_9

    :cond_8
    move p3, p4

    :cond_9
    iput-boolean p3, p0, Lﹳᵢ/ˑﹳ;->ﾞᴵ:Z

    return-void

    :cond_a
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, p3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public final ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;
    .locals 6

    .prologue
    const/4 p1, 0x0

    const-wide/16 p3, 0x0

    iget-object v0, p0, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    iget-wide p3, p2, Lʽⁱ/ˊˋ;->ʼᐧ:J

    iget-wide v0, p0, Lﹳᵢ/ˑﹳ;->ʽ:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lʽⁱ/ˊˋ;->ʼᐧ:J

    iget-wide p3, p0, Lﹳᵢ/ˑﹳ;->ˑﹳ:J

    iput-wide p3, p2, Lʽⁱ/ˊˋ;->ˉʿ:J

    iget-boolean p1, p0, Lﹳᵢ/ˑﹳ;->ﾞᴵ:Z

    iput-boolean p1, p2, Lʽⁱ/ˊˋ;->ʼˎ:Z

    iget-wide p3, p2, Lʽⁱ/ˊˋ;->ﾞʻ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lʽⁱ/ˊˋ;->ﾞʻ:J

    iget-wide v4, p0, Lﹳᵢ/ˑﹳ;->ˈ:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    sub-long/2addr p3, v0

    iput-wide p3, p2, Lʽⁱ/ˊˋ;->ﾞʻ:J

    :cond_1
    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide p3

    iget-wide v0, p2, Lʽⁱ/ˊˋ;->ˑﹳ:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    iput-wide v0, p2, Lʽⁱ/ˊˋ;->ˑﹳ:J

    :cond_2
    iget-wide v0, p2, Lʽⁱ/ˊˋ;->ﾞᴵ:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    iput-wide v0, p2, Lʽⁱ/ˊˋ;->ﾞᴵ:J

    :cond_3
    return-object p2
.end method

.method public final ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;
    .locals 10

    .prologue
    iget-object v1, p0, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    iget-wide v1, p2, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    iget-wide v3, p0, Lﹳᵢ/ˑﹳ;->ʽ:J

    sub-long v6, v1, v3

    iget-wide v1, p0, Lﹳᵢ/ˑﹳ;->ˑﹳ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    :goto_0
    move-wide v4, v3

    goto :goto_1

    :cond_0
    sub-long v3, v1, v6

    goto :goto_0

    :goto_1
    iget-object v1, p2, Lʽⁱ/ˋᵔ;->ﹳٴ:Ljava/lang/Object;

    iget-object v2, p2, Lʽⁱ/ˋᵔ;->ⁱˊ:Ljava/lang/Object;

    sget-object v8, Lʽⁱ/ʽ;->ʽ:Lʽⁱ/ʽ;

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lʽⁱ/ˋᵔ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;IJJLʽⁱ/ʽ;Z)V

    return-object p2
.end method
