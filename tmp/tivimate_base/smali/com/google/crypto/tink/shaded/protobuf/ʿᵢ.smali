.class public final Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;
.super Lcom/google/crypto/tink/shaded/protobuf/ˉـ;
.source "SourceFile"


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ʿ;
    .locals 2

    .prologue
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﾞᴵ:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    move-result-object v0

    iput-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    :cond_0
    return-object v0
.end method
