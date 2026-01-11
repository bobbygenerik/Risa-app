.class public abstract Lⁱﾞ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿﹶ/ⁱˊ;


# instance fields
.field public ﹳٴ:[Lⁱﾞ/ʽ;


# direct methods
.method public static ˈ(Lـʾ/ᵔﹳ;)I
    .locals 5

    .prologue
    iget-object p0, p0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p0, Lˎﹶ/ˑﹳ;

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/rmi/UnmarshalException;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "EntriesRead"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "%s %d > %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lⁱﾞ/ˑﹳ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    check-cast p1, Lⁱﾞ/ˑﹳ;

    iget-object p1, p1, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final ʽ(Lـʾ/ᵔﹳ;)V
    .locals 0

    return-void
.end method

.method public final ⁱˊ(Lـʾ/ᵔﹳ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    if-eqz v0, :cond_2

    sget-object v0, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lⁱﾞ/ʽ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v2

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    invoke-interface {v4, p1}, Lʿﹶ/ⁱˊ;->ﹳٴ(Lـʾ/ᵔﹳ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lʿﹶ/ⁱˊ;->ⁱˊ(Lـʾ/ᵔﹳ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final ﹳٴ(Lـʾ/ᵔﹳ;)V
    .locals 3

    .prologue
    sget-object v0, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ˑﹳ(Lʿﹶ/ﹳٴ;)V

    invoke-static {p1}, Lⁱﾞ/ˑﹳ;->ˈ(Lـʾ/ᵔﹳ;)I

    move-result v0

    iget-object p1, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˎﹶ/ˑﹳ;

    invoke-virtual {p1}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    if-ltz v0, :cond_0

    new-array p1, v0, [Lⁱﾞ/ʽ;

    iput-object p1, p0, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    return-void

    :cond_0
    new-instance p1, Ljava/rmi/UnmarshalException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Expected entriesRead >= 0, got: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lⁱﾞ/ˑﹳ;->ﹳٴ:[Lⁱﾞ/ʽ;

    return-void
.end method
