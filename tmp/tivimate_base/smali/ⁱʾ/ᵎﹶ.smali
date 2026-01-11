.class public final Lⁱʾ/ᵎﹶ;
.super Lʽᐧ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public ᵔי:J


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    check-cast p1, Lⁱʾ/ᵎﹶ;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v1

    invoke-virtual {p1, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide v2, p1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lⁱʾ/ᵎﹶ;->ᵔי:J

    iget-wide v4, p1, Lⁱʾ/ᵎﹶ;->ᵔי:J

    sub-long/2addr v0, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method
