.class public final Lˎﹶ/ˑﹳ;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# direct methods
.method public constructor <init>(Lˎﹶ/ʽ;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final readBoolean()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final readByte()B
    .locals 1

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->readUnsignedByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public final readChar()C
    .locals 1

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->readUnsignedShort()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 2

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2

    sget v0, Lˎﹶ/ⁱˊ;->ﹳٴ:I

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lˎﹶ/ⁱˊ;->ⁱˊ(Lˎﹶ/ˑﹳ;[BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lˎﹶ/ⁱˊ;->ⁱˊ(Lˎﹶ/ˑﹳ;[BII)V

    return-void
.end method

.method public final readInt()I
    .locals 4

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v0

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v1

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v2

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v3

    invoke-static {v3, v2, v1, v0}, Lˈˊ/ˉˆ;->ˉˆ(BBBB)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "readLine is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readLong()J
    .locals 13

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v0

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v1

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v2

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v3

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v4

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v5

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v6

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v11, 0x38

    shl-long/2addr v7, v11

    int-to-long v11, v6

    and-long/2addr v11, v9

    const/16 v6, 0x30

    shl-long/2addr v11, v6

    or-long/2addr v7, v11

    int-to-long v5, v5

    and-long/2addr v5, v9

    const/16 v11, 0x28

    shl-long/2addr v5, v11

    or-long/2addr v5, v7

    int-to-long v7, v4

    and-long/2addr v7, v9

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v5, v7

    int-to-long v3, v3

    and-long/2addr v3, v9

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    or-long/2addr v3, v5

    int-to-long v5, v2

    and-long/2addr v5, v9

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    int-to-long v1, v1

    and-long/2addr v1, v9

    const/16 v5, 0x8

    shl-long/2addr v1, v5

    or-long/2addr v1, v3

    int-to-long v3, v0

    and-long/2addr v3, v9

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final readShort()S
    .locals 1

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->readUnsignedShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 1

    .prologue
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v0

    invoke-virtual {p0}, Lˎﹶ/ˑﹳ;->ʽ()B

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v1, v0}, Lˈˊ/ˉˆ;->ˉˆ(BBBB)I

    move-result v0

    return v0
.end method

.method public final skipBytes(I)I
    .locals 3

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final ʽ()B
    .locals 2

    .prologue
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    int-to-byte v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
