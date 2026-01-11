.class public abstract Landroidx/datastore/preferences/protobuf/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:I


# direct methods
.method public static ˈ(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static ˑﹳ(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static ᵔᵢ([BIIZ)Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;
    .locals 1

    .prologue
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞʻ(I)I
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract ʻٴ()J
.end method

.method public abstract ʼʼ()I
.end method

.method public abstract ʼˎ()I
.end method

.method public abstract ʼᐧ()D
.end method

.method public abstract ʽ([II)[I
.end method

.method public abstract ʽʽ()I
.end method

.method public abstract ʽﹳ()I
.end method

.method public abstract ʾˋ()Ljava/lang/String;
.end method

.method public abstract ʾᵎ()J
.end method

.method public abstract ˆʾ(I)V
.end method

.method public abstract ˈٴ()I
.end method

.method public abstract ˉʿ()Z
.end method

.method public abstract ˉˆ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;
.end method

.method public abstract ˊʻ(I)Z
.end method

.method public abstract ˏי()F
.end method

.method public abstract יـ()J
.end method

.method public abstract ـˆ()I
.end method

.method public ٴᵢ()V
    .locals 3

    .prologue
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˊʻ(I)Z

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ٴﹶ([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    array-length v0, p1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼˎ()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    div-int/lit8 v1, v0, 0x40

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget v4, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ(I[B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x40

    if-ne v3, v1, :cond_0

    rem-int/lit8 v5, v0, 0x40

    invoke-static {p2, p3, v4, v5}, Lcom/google/android/gms/internal/play_billing/י;->ˊʻ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    :cond_0
    invoke-static {p2, p3, v4, v5}, Lcom/google/android/gms/internal/play_billing/י;->ˊʻ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The nonce length (in bytes) must be "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼˎ()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ᴵˊ()Ljava/lang/String;
.end method

.method public abstract ᴵᵔ()J
.end method

.method public abstract ᵎﹶ()Z
.end method

.method public abstract ᵔʾ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;
.end method

.method public abstract ᵔﹳ()I
.end method

.method public abstract ᵢˏ()J
.end method

.method public abstract ⁱˊ(I)V
.end method

.method public ﹳٴ(I[B)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    invoke-static {p2}, Lיٴ/ˆʾ;->ˑﹳ([B)[I

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽ([II)[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    invoke-static {p2}, Lיٴ/ˆʾ;->ˈ([I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x40

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v0, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object p2
.end method

.method public abstract ﹳᐧ()I
.end method

.method public abstract ﾞʻ(I)I
.end method

.method public abstract ﾞᴵ()I
.end method
