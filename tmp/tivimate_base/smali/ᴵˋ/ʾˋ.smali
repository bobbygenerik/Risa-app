.class public final Lᴵˋ/ʾˋ;
.super Lᴵˋ/ٴᵢ;
.source "SourceFile"


# virtual methods
.method public final ʽ()Lᴵˋ/ٴᵢ;
    .locals 0

    return-object p0
.end method

.method public final ⁱˊ()Lᴵˋ/ˉٴ;
    .locals 4

    .prologue
    iget-object v0, p0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-boolean v1, v0, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    if-nez v1, :cond_0

    new-instance v1, Lᴵˋ/ᴵˊ;

    iget-object v2, p0, Lᴵˋ/ٴᵢ;->ﹳٴ:Ljava/util/UUID;

    iget-object v3, p0, Lᴵˋ/ٴᵢ;->ʽ:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2, v0, v3}, Lᴵˋ/ˉٴ;-><init>(Ljava/util/UUID;Lˑᵎ/ﹳᐧ;Ljava/util/LinkedHashSet;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeriodicWorkRequests cannot be expedited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
