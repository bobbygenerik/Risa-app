.class public final Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;
    .locals 2

    .prologue
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-object v1, v0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;

    iget-boolean v1, v1, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;->ʾˋ:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;->ˉˆ(I)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
