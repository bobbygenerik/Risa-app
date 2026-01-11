.class public abstract Lⁱᵔ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿﹶ/ⁱˊ;


# instance fields
.field public ʽ:I

.field public ⁱˊ:I

.field public ﹳٴ:Ljava/lang/String;


# direct methods
.method public static ˈ(Ljava/lang/String;Lـʾ/ᵔﹳ;)I
    .locals 4

    .prologue
    iget-object p1, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˎﹶ/ˑﹳ;

    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p1, Ljava/rmi/UnmarshalException;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const/4 p0, 0x2

    aput-object v1, v2, p0

    const-string p0, "%s %d > %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lⁱᵔ/ⁱˊ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lⁱᵔ/ⁱˊ;

    iget-object v1, p0, Lⁱᵔ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iget-object p1, p1, Lⁱᵔ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lⁱᵔ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱᵔ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    const-string v1, "\""

    invoke-static {v1, v0, v1}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(Lـʾ/ᵔﹳ;)V
    .locals 1

    sget-object v0, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    return-void
.end method

.method public final ⁱˊ(Lـʾ/ᵔﹳ;)V
    .locals 6

    .prologue
    sget-object v0, Lʿﹶ/ﹳٴ;->ʽʽ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    iget v0, p0, Lⁱᵔ/ⁱˊ;->ⁱˊ:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    iget v0, p0, Lⁱᵔ/ⁱˊ;->ʽ:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v5, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lˎﹶ/ˑﹳ;

    invoke-virtual {v5}, Lˎﹶ/ˑﹳ;->readUnsignedShort()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lⁱᵔ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    :cond_2
    return-void
.end method

.method public final ﹳٴ(Lـʾ/ᵔﹳ;)V
    .locals 1

    sget-object v0, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    const-string v0, "Offset"

    invoke-static {v0, p1}, Lⁱᵔ/ⁱˊ;->ˈ(Ljava/lang/String;Lـʾ/ᵔﹳ;)I

    move-result v0

    iput v0, p0, Lⁱᵔ/ⁱˊ;->ⁱˊ:I

    const-string v0, "ActualCount"

    invoke-static {v0, p1}, Lⁱᵔ/ⁱˊ;->ˈ(Ljava/lang/String;Lـʾ/ᵔﹳ;)I

    move-result p1

    iput p1, p0, Lⁱᵔ/ⁱˊ;->ʽ:I

    return-void
.end method
