.class public final Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;
.super Landroidx/datastore/preferences/protobuf/ˆʾ;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public final ʽ:[B

.field public ˈ:I

.field public ˑﹳ:I

.field public final ᵎﹶ:I

.field public ᵔᵢ:I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p4, 0x7fffffff

    iput p4, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʼˎ:I

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎﹶ:I

    return-void
.end method


# virtual methods
.method public final ʻٴ()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎˊ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ʼʼ()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈ(I)I

    move-result v0

    return v0
.end method

.method public final ʼᐧ()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎⁱ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final ʽʽ()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵔᵢ:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵔᵢ:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final ʽﹳ()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    return v0
.end method

.method public final ʾˋ()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final ʾᵎ()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎⁱ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˆʾ(I)V
    .locals 0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʼˎ:I

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˆﾞ()V

    return-void
.end method

.method public final ˆﾞ()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˑﹳ:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎﹶ:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʼˎ:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˑﹳ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˑﹳ:I

    return-void
.end method

.method public final ˈٴ()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    return v0
.end method

.method public final ˉʿ()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎˊ()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉˆ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    invoke-static {v1, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ:[B

    :goto_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;-><init>([B)V

    return-object v1

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final ˉٴ()I
    .locals 4

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final ˏי()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˉٴ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final יـ()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎⁱ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ـˆ()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˉٴ()I

    move-result v0

    return v0
.end method

.method public final ٴʼ()I
    .locals 7

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    if-ne v1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    return v4

    :cond_1
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_3

    xor-int/lit8 v0, v2, -0x80

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_1
    move v1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x5

    aget-byte v2, v3, v2

    shl-int/lit8 v5, v2, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v2, :cond_7

    add-int/lit8 v2, v0, 0x6

    aget-byte v4, v3, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x7

    aget-byte v2, v3, v2

    if-gez v2, :cond_7

    add-int/lit8 v2, v0, 0x8

    aget-byte v4, v3, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x9

    aget-byte v2, v3, v2

    if-gez v2, :cond_7

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v3, v4

    if-gez v2, :cond_6

    :goto_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵔי()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_6
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :goto_3
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    return v0
.end method

.method public final ᴵˊ()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˑﹳ([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final ᴵᵔ()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎˊ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ᵎˊ()J
    .locals 12

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    aget-byte v4, v3, v0

    if-ltz v4, :cond_1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v2

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_3

    xor-int/lit8 v0, v2, -0x80

    int-to-long v2, v0

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v2

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v2, v0, 0x4

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    :goto_0
    move-wide v10, v0

    move v1, v2

    move-wide v2, v10

    goto/16 :goto_4

    :cond_5
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    aget-byte v2, v3, v2

    int-to-long v6, v2

    const/16 v2, 0x1c

    shl-long/2addr v6, v2

    xor-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_6

    const-wide/32 v2, 0xfe03f80

    :goto_1
    xor-long/2addr v2, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v0, 0x6

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    const-wide v0, -0x7f01fc080L

    :goto_2
    xor-long/2addr v0, v4

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v0, 0x7

    aget-byte v2, v3, v2

    int-to-long v8, v2

    const/16 v2, 0x2a

    shl-long/2addr v8, v2

    xor-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_8

    const-wide v2, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v0, 0x8

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_9

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v0, 0x9

    aget-byte v2, v3, v2

    int-to-long v8, v2

    const/16 v2, 0x38

    shl-long/2addr v8, v2

    xor-long/2addr v4, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-gez v2, :cond_b

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v3, v1

    int-to-long v1, v1

    cmp-long v1, v1, v6

    if-gez v1, :cond_a

    :goto_3
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵔי()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move v1, v0

    :cond_b
    move-wide v2, v4

    :goto_4
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    return-wide v2
.end method

.method public final ᵎⁱ()J
    .locals 9

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final ᵎﹶ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔי()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˈ:I

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʽ:[B

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final ᵔﹳ()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ٴʼ()I

    move-result v0

    return v0
.end method

.method public final ᵢˏ()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎˊ()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˑﹳ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ⁱˊ(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵔᵢ:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳᐧ()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˉٴ()I

    move-result v0

    return v0
.end method

.method public final ﾞʻ(I)I
    .locals 1

    .prologue
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ()I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʼˎ:I

    if-gt v0, p1, :cond_0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ʼˎ:I

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ˆﾞ()V

    return p1

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final ﾞᴵ()I
    .locals 2

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ﾞᴵ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ᵎﹶ:I

    sub-int/2addr v0, v1

    return v0
.end method
