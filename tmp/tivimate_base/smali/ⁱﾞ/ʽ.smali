.class public final Lⁱﾞ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿﹶ/ⁱˊ;


# instance fields
.field public ʽ:Lⁱᵔ/ﹳٴ;

.field public ⁱˊ:I

.field public ﹳٴ:Lⁱᵔ/ﹳٴ;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lⁱﾞ/ʽ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lⁱﾞ/ʽ;

    invoke-virtual {p0, p1}, Lⁱﾞ/ʽ;->ˈ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lⁱﾞ/ʽ;->ⁱˊ:I

    iget v3, v1, Lⁱﾞ/ʽ;->ⁱˊ:I

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lⁱﾞ/ʽ;->ʽ:Lⁱᵔ/ﹳٴ;

    iget-object v1, v1, Lⁱﾞ/ʽ;->ʽ:Lⁱᵔ/ﹳٴ;

    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    invoke-virtual {p0}, Lⁱﾞ/ʽ;->ˑﹳ()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lⁱﾞ/ʽ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lⁱﾞ/ʽ;->ʽ:Lⁱᵔ/ﹳٴ;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lⁱﾞ/ʽ;->ﹳٴ:Lⁱᵔ/ﹳٴ;

    iget v1, p0, Lⁱﾞ/ʽ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lⁱﾞ/ʽ;->ʽ:Lⁱᵔ/ﹳٴ;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "SHARE_INFO_1{shi1_netname: %s, shi1_type: %d, shi1_remark: %s}"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(Lـʾ/ᵔﹳ;)V
    .locals 0

    return-void
.end method

.method public final ˈ(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lⁱﾞ/ʽ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lⁱﾞ/ʽ;

    iget-object v0, p0, Lⁱﾞ/ʽ;->ﹳٴ:Lⁱᵔ/ﹳٴ;

    iget-object p1, p1, Lⁱﾞ/ʽ;->ﹳٴ:Lⁱᵔ/ﹳٴ;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ˑﹳ()I
    .locals 3

    iget-object v0, p0, Lⁱﾞ/ʽ;->ﹳٴ:Lⁱᵔ/ﹳٴ;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final ⁱˊ(Lـʾ/ᵔﹳ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱﾞ/ʽ;->ﹳٴ:Lⁱᵔ/ﹳٴ;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ʻٴ(Lʿﹶ/ⁱˊ;)V

    :cond_0
    iget-object v0, p0, Lⁱﾞ/ʽ;->ʽ:Lⁱᵔ/ﹳٴ;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ʻٴ(Lʿﹶ/ⁱˊ;)V

    :cond_1
    return-void
.end method

.method public final ﹳٴ(Lـʾ/ᵔﹳ;)V
    .locals 6

    .prologue
    sget-object v0, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    iget-object p1, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˎﹶ/ˑﹳ;

    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lⁱᵔ/ﹳٴ;

    invoke-direct {v0}, Lⁱᵔ/ﹳٴ;-><init>()V

    iput-object v0, p0, Lⁱﾞ/ʽ;->ﹳٴ:Lⁱᵔ/ﹳٴ;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lⁱﾞ/ʽ;->ﹳٴ:Lⁱᵔ/ﹳٴ;

    :goto_0
    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lⁱﾞ/ʽ;->ⁱˊ:I

    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lⁱᵔ/ﹳٴ;

    invoke-direct {p1}, Lⁱᵔ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lⁱﾞ/ʽ;->ʽ:Lⁱᵔ/ﹳٴ;

    return-void

    :cond_1
    iput-object v1, p0, Lⁱﾞ/ʽ;->ʽ:Lⁱᵔ/ﹳٴ;

    return-void
.end method
