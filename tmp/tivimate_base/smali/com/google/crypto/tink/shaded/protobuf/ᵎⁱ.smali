.class public final Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;
    .locals 1

    .prologue
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ʾˋ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ⁱˊ()V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method
