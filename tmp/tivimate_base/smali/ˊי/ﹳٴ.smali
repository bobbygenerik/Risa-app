.class public final Lˊי/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ˑﹳ:J

.field public ⁱˊ:J

.field public final ﹳٴ:Lorg/tukaani/xz/CorruptedInputException;

.field public final ﾞᴵ:Lᵎᵎ/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lˊי/ﹳٴ;->ⁱˊ:J

    iput-wide v1, p0, Lˊי/ﹳٴ;->ʽ:J

    iput-wide v1, p0, Lˊי/ﹳٴ;->ˈ:J

    iput-wide v1, p0, Lˊי/ﹳٴ;->ˑﹳ:J

    iput-object v0, p0, Lˊי/ﹳٴ;->ﹳٴ:Lorg/tukaani/xz/CorruptedInputException;

    :try_start_0
    new-instance v0, Lᵎᵎ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᵎᵎ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Lˊי/ﹳٴ;->ﾞᴵ:Lᵎᵎ/ʽ;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lᵎᵎ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᵎᵎ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Lˊי/ﹳٴ;->ﾞᴵ:Lᵎᵎ/ʽ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/io/InputStream;)V
    .locals 11

    .prologue
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    new-instance v2, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v2, p1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ᵔﹳ(Ljava/io/InputStream;)J

    move-result-wide v3

    iget-wide v5, p0, Lˊי/ﹳٴ;->ˑﹳ:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_7

    new-instance p1, Lˊי/ﹳٴ;

    invoke-direct {p1}, Lˊי/ﹳٴ;-><init>()V

    const-wide/16 v3, 0x0

    :goto_0
    iget-wide v5, p0, Lˊי/ﹳٴ;->ˑﹳ:J

    cmp-long v5, v3, v5

    const-string v6, "XZ Index is corrupt"

    if-gez v5, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ᵔﹳ(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ᵔﹳ(Ljava/io/InputStream;)J

    move-result-wide v9

    :try_start_0
    invoke-virtual {p1, v7, v8, v9, v10}, Lˊי/ﹳٴ;->ﹳٴ(JJ)V
    :try_end_0
    .catch Lorg/tukaani/xz/XZIOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v7, p1, Lˊי/ﹳٴ;->ⁱˊ:J

    iget-wide v9, p0, Lˊי/ﹳٴ;->ⁱˊ:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    iget-wide v7, p1, Lˊי/ﹳٴ;->ʽ:J

    iget-wide v9, p0, Lˊי/ﹳٴ;->ʽ:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    iget-wide v7, p1, Lˊי/ﹳٴ;->ˈ:J

    iget-wide v9, p0, Lˊי/ﹳٴ;->ˈ:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v3, p1, Lˊי/ﹳٴ;->ⁱˊ:J

    iget-wide v7, p0, Lˊי/ﹳٴ;->ⁱˊ:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    iget-wide v3, p1, Lˊי/ﹳٴ;->ʽ:J

    iget-wide v7, p0, Lˊי/ﹳٴ;->ʽ:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    iget-wide v3, p1, Lˊי/ﹳٴ;->ˈ:J

    iget-wide v7, p0, Lˊי/ﹳٴ;->ˈ:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    iget-object p1, p1, Lˊי/ﹳٴ;->ﾞᴵ:Lᵎᵎ/ʽ;

    invoke-virtual {p1}, Lᵎᵎ/ʽ;->ﹳٴ()[B

    move-result-object p1

    iget-object v3, p0, Lˊי/ﹳٴ;->ﾞᴵ:Lᵎᵎ/ʽ;

    invoke-virtual {v3}, Lᵎᵎ/ʽ;->ﹳٴ()[B

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-wide v2, p0, Lˊי/ﹳٴ;->ˑﹳ:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/י;->ˏי(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    iget-wide v4, p0, Lˊי/ﹳٴ;->ˈ:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3

    and-long/2addr v2, v4

    long-to-int v2, v2

    :goto_1
    if-lez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    :goto_2
    const/4 v0, 0x4

    if-ge v1, v0, :cond_5

    mul-int/lit8 v0, v1, 0x8

    ushr-long v4, v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v4, v7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v4, v7

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    const-string v0, "XZ Block Header or the start of XZ Index is corrupt"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(JJ)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lˊי/ﹳٴ;->ⁱˊ:J

    const-wide/16 v7, 0x3

    add-long/2addr v7, v1

    const-wide/16 v9, -0x4

    and-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lˊי/ﹳٴ;->ⁱˊ:J

    iget-wide v5, v0, Lˊי/ﹳٴ;->ʽ:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lˊי/ﹳٴ;->ʽ:J

    iget-wide v5, v0, Lˊי/ﹳٴ;->ˈ:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/י;->ˏי(J)I

    move-result v7

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/י;->ˏי(J)I

    move-result v8

    add-int/2addr v8, v7

    int-to-long v7, v8

    add-long/2addr v5, v7

    iput-wide v5, v0, Lˊי/ﹳٴ;->ˈ:J

    iget-wide v5, v0, Lˊי/ﹳٴ;->ˑﹳ:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Lˊי/ﹳٴ;->ˑﹳ:J

    iget-wide v7, v0, Lˊי/ﹳٴ;->ⁱˊ:J

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-ltz v7, :cond_0

    iget-wide v7, v0, Lˊי/ﹳٴ;->ʽ:J

    cmp-long v7, v7, v11

    if-ltz v7, :cond_0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/י;->ˏי(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    iget-wide v7, v0, Lˊי/ﹳٴ;->ˈ:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x7

    add-long/2addr v5, v7

    and-long/2addr v5, v9

    const-wide v13, 0x400000000L

    cmp-long v5, v5, v13

    if-gtz v5, :cond_0

    iget-wide v5, v0, Lˊי/ﹳٴ;->ⁱˊ:J

    const-wide/16 v13, 0xc

    add-long/2addr v5, v13

    move-wide v15, v7

    iget-wide v7, v0, Lˊי/ﹳٴ;->ˑﹳ:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/י;->ˏי(J)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    move-wide/from16 v17, v9

    iget-wide v9, v0, Lˊי/ﹳٴ;->ˈ:J

    add-long/2addr v7, v9

    add-long/2addr v7, v15

    and-long v7, v7, v17

    add-long/2addr v7, v5

    add-long/2addr v7, v13

    cmp-long v5, v7, v11

    if-ltz v5, :cond_0

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, v0, Lˊי/ﹳٴ;->ﾞᴵ:Lᵎᵎ/ʽ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Lᵎᵎ/ʽ;->ˈ([BII)V

    return-void

    :cond_0
    iget-object v1, v0, Lˊי/ﹳٴ;->ﹳٴ:Lorg/tukaani/xz/CorruptedInputException;

    throw v1
.end method
