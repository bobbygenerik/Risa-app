.class public final Lᴵˋ/ʽﹳ;
.super Lᴵˋ/ٴᵢ;
.source "SourceFile"


# virtual methods
.method public final ʽ()Lᴵˋ/ٴᵢ;
    .locals 0

    return-object p0
.end method

.method public final ⁱˊ()Lᴵˋ/ˉٴ;
    .locals 4

    new-instance v0, Lᴵˋ/ʻٴ;

    iget-object v1, p0, Lᴵˋ/ٴᵢ;->ﹳٴ:Ljava/util/UUID;

    iget-object v2, p0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-object v3, p0, Lᴵˋ/ٴᵢ;->ʽ:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, v2, v3}, Lᴵˋ/ˉٴ;-><init>(Ljava/util/UUID;Lˑᵎ/ﹳᐧ;Ljava/util/LinkedHashSet;)V

    return-object v0
.end method
