.class public abstract Lʽᴵ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final ʽ()Lᵔˈ/ﹳٴ;
    .locals 1

    .prologue
    instance-of v0, p0, Lᵔˈ/ﹳٴ;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lᵔˈ/ﹳٴ;

    return-object v0

    :cond_0
    new-instance v0, Lᵔˈ/ﹳٴ;

    invoke-direct {v0, p0}, Lᵔˈ/ﹳٴ;-><init>(Lʽᴵ/ﾞʻ;)V

    return-object v0
.end method

.method public final ˈ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Lʽᴵ/ᵔﹳ;

    invoke-direct {v1, v0}, Lʽᴵ/ᵔﹳ;-><init>(Lˊᐧ/ᵎﹶ;)V

    invoke-virtual {p0, v1, p1}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ﹶᐧ()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
.end method

.method public abstract ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
.end method

.method public final ﹳٴ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ʾﾞ(Ljava/lang/String;)V

    new-instance p1, Lʽᴵ/ʼᐧ;

    invoke-direct {p1, v0}, Lʽᴵ/ʼᐧ;-><init>(Lˊᐧ/ᵔᵢ;)V

    invoke-virtual {p0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p0, Lʽᴵ/ˆʾ;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lʽᴵ/ʼᐧ;->ʿᵢ()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    const-string v0, "JSON document was not fully consumed."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
