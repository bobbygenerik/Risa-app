.class public final Lʻᵢ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʻᵢ/ʽ;
.implements Ljava/io/Serializable;


# instance fields
.field public ʾˋ:Lᴵⁱ/ﹳٴ;

.field public ᴵˊ:Ljava/lang/Object;


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lʻᵢ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    sget-object v1, Lʻᵢ/ᵔʾ;->ﹳٴ:Lʻᵢ/ᵔʾ;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lʻᵢ/ᵔﹳ;->ʾˋ:Lᴵⁱ/ﹳٴ;

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lʻᵢ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lʻᵢ/ᵔﹳ;->ʾˋ:Lᴵⁱ/ﹳٴ;

    :cond_0
    iget-object v0, p0, Lʻᵢ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lʻᵢ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    sget-object v1, Lʻᵢ/ᵔʾ;->ﹳٴ:Lʻᵢ/ᵔʾ;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lʻᵢ/ᵔﹳ;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    return-object v0
.end method
