.class public final Lᴵᵔ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    check-cast p1, Lᴵᵔ/ˆʾ;

    check-cast p2, Lᴵᵔ/ˆʾ;

    invoke-virtual {p1}, Lᴵᵔ/ˆʾ;->ﹳٴ()J

    move-result-wide v0

    invoke-virtual {p2}, Lᴵᵔ/ˆʾ;->ﹳٴ()J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget p2, p2, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    iget p1, p1, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    add-int v0, p2, p1

    if-ne v0, v5, :cond_0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    sub-int/2addr p2, p1

    return p2

    :cond_1
    const-wide/16 p1, -0x1

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p1, v0, p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sub-long/2addr v0, v2

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_4

    :goto_0
    return v5

    :cond_4
    :goto_1
    const/4 p1, -0x1

    return p1
.end method
