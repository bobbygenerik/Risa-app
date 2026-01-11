.class public final Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;
.super Landroid/support/v4/media/session/ⁱˊ;
.source "SourceFile"


# static fields
.field public static final ˉˆ:Z

.field public static final ᵔʾ:Ljava/util/logging/Logger;


# instance fields
.field public ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

.field public ˉʿ:I

.field public final ٴﹶ:[B

.field public final ﾞʻ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˑﹳ:Z

    sput-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉˆ:Z

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    sub-int/2addr v0, p1

    or-int/2addr v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object v2, v3, p2

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ʽʽ(J)I
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result p0

    return p0
.end method

.method public static ʾˋ(ILcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)I
    .locals 1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static ˈٴ(Ljava/lang/String;)I
    .locals 1

    .prologue
    :try_start_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ⁱˊ(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/ˊᵔ; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static ˊʻ(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static ٴᵢ(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static ᴵˊ(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result p0

    return p0
.end method

.method public static ᴵᵔ(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ʼˈ(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    return-void
.end method

.method public final ˆﾞ(J)V
    .locals 7

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final ˈʿ(I)V
    .locals 2

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    return-void
.end method

.method public final ˉٴ(B)V
    .locals 7

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final ˊˋ(I)V
    .locals 7

    .prologue
    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    or-int/lit16 v2, p1, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final ˋᵔ(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    return-void
.end method

.method public final ˑٴ(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    return-void
.end method

.method public final ـˏ(J)V
    .locals 10

    .prologue
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉˆ:Z

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int v0, v1, v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    :goto_0
    and-long v0, p1, v5

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    int-to-long v0, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v7, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ٴﹶ([BJB)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    int-to-long v0, v0

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-static {v7, v0, v1, v8}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ٴﹶ([BJB)V

    ushr-long/2addr p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    and-long v8, p1, v5

    cmp-long v0, v8, v3

    if-nez v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v7, v0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v2

    goto :goto_1

    :goto_2
    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final ٴʼ(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎˊ(I)V

    return-void
.end method

.method public final ᵎˊ(I)V
    .locals 7

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final ᵎⁱ([BII)V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final ᵔי(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆﾞ(J)V

    return-void
.end method

.method public final ᵔٴ(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈʿ(I)V

    return-void
.end method
