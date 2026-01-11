.class public final Lᵔﹶ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˈ;


# virtual methods
.method public final ʽ(Ljava/nio/ByteBuffer;Lיᐧ/ﾞᴵ;)I
    .locals 1

    sget-object v0, Lʿٴ/ⁱˊ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lʿٴ/ﹳٴ;

    invoke-direct {v0, p1}, Lʿٴ/ﹳٴ;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0, p2}, Lᵔﹶ/ˏי;->ⁱˊ(Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)I

    move-result p1

    return p1
.end method

.method public final ˈ(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method public final ⁱˊ(Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)I
    .locals 0

    .prologue
    new-instance p2, Lﹳﹳ/ᵎﹶ;

    invoke-direct {p2, p1}, Lﹳﹳ/ᵎﹶ;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Orientation"

    invoke-virtual {p2, p1}, Lﹳﹳ/ᵎﹶ;->ʽ(Ljava/lang/String;)Lﹳﹳ/ʽ;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p2, Lﹳﹳ/ᵎﹶ;->ﾞᴵ:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Lﹳﹳ/ʽ;->ˑﹳ(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public final ﹳٴ(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method
