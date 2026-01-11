.class public abstract Lcom/google/crypto/tink/shaded/protobuf/ˉـ;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final ⁱˊ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    iget v0, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result p2

    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˈ(ILjava/lang/Object;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    move-result-object v0

    shl-int/2addr v1, v4

    or-int/lit8 v5, v1, 0x4

    add-int/2addr p1, v3

    const/16 v6, 0x64

    if-ge p1, v6, :cond_7

    :cond_3
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_4

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ⁱˊ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_4
    iget p1, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-ne v5, p1, :cond_6

    iget-boolean p1, v0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ:Z

    if-eqz p1, :cond_5

    iput-boolean v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ:Z

    :cond_5
    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    or-int/lit8 p1, v1, 0x3

    invoke-virtual {p3, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˈ(ILjava/lang/Object;)V

    return v3

    :cond_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string p2, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object p1

    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    shl-int/lit8 p2, v1, 0x3

    or-int/2addr p2, v5

    invoke-virtual {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˈ(ILjava/lang/Object;)V

    return v3

    :cond_9
    invoke-virtual {p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object p1, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide p1

    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˈ(ILjava/lang/Object;)V

    return v3

    :cond_a
    invoke-virtual {p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object p1, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide p1

    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    shl-int/lit8 v0, v1, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˈ(ILjava/lang/Object;)V

    return v3
.end method

.method public abstract ﹳٴ(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ʿ;
.end method
