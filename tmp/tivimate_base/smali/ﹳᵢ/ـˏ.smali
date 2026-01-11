.class public final Lﹳᵢ/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ˈ:Lʻˆ/ʽ;

.field public ˑﹳ:Lʻˆ/ʽ;

.field public ᵎﹶ:J

.field public final ⁱˊ:I

.field public final ﹳٴ:Lᵔⁱ/ˑﹳ;

.field public ﾞᴵ:Lʻˆ/ʽ;


# direct methods
.method public constructor <init>(Lᵔⁱ/ˑﹳ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ـˏ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    iget p1, p1, Lᵔⁱ/ˑﹳ;->ⁱˊ:I

    iput p1, p0, Lﹳᵢ/ـˏ;->ⁱˊ:I

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lﹳᵢ/ـˏ;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lʻˆ/ʽ;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lʻˆ/ʽ;-><init>(IJ)V

    iput-object v0, p0, Lﹳᵢ/ـˏ;->ˈ:Lʻˆ/ʽ;

    iput-object v0, p0, Lﹳᵢ/ـˏ;->ˑﹳ:Lʻˆ/ʽ;

    iput-object v0, p0, Lﹳᵢ/ـˏ;->ﾞᴵ:Lʻˆ/ʽ;

    return-void
.end method

.method public static ˈ(Lʻˆ/ʽ;JLjava/nio/ByteBuffer;I)Lʻˆ/ʽ;
    .locals 5

    .prologue
    :goto_0
    iget-wide v0, p0, Lʻˆ/ʽ;->ᴵˊ:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Lʻˆ/ʽ;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    iget-wide v0, p0, Lʻˆ/ʽ;->ᴵˊ:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᵔⁱ/ﹳٴ;

    iget-object v2, v1, Lᵔⁱ/ﹳٴ;->ﹳٴ:[B

    iget-wide v3, p0, Lʻˆ/ʽ;->ʾˋ:J

    sub-long v3, p1, v3

    long-to-int v3, v3

    iget v1, v1, Lᵔⁱ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v3, v1

    invoke-virtual {p3, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lʻˆ/ʽ;->ᴵˊ:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Lʻˆ/ʽ;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static ˑﹳ(Lʻˆ/ʽ;J[BI)Lʻˆ/ʽ;
    .locals 6

    .prologue
    :goto_0
    iget-wide v0, p0, Lʻˆ/ʽ;->ᴵˊ:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Lʻˆ/ʽ;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    iget-wide v1, p0, Lʻˆ/ʽ;->ᴵˊ:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᵔⁱ/ﹳٴ;

    iget-object v3, v2, Lᵔⁱ/ﹳٴ;->ﹳٴ:[B

    iget-wide v4, p0, Lʻˆ/ʽ;->ʾˋ:J

    sub-long v4, p1, v4

    long-to-int v4, v4

    iget v2, v2, Lᵔⁱ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v4, v2

    sub-int v2, p4, v0

    invoke-static {v3, v4, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lʻˆ/ʽ;->ᴵˊ:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Lʻˆ/ʽ;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static ﾞᴵ(Lʻˆ/ʽ;Lﹳⁱ/ˑﹳ;Lˈـ/ـˆ;Lᐧˎ/ﹳᐧ;)Lʻˆ/ʽ;
    .locals 12

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p2, Lˈـ/ـˆ;->ⁱˊ:J

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, p3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {p0, v0, v1, v3, v2}, Lﹳᵢ/ـˏ;->ˑﹳ(Lʻˆ/ʽ;J[BI)Lʻˆ/ʽ;

    move-result-object p0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iget-object v3, p3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    and-int/lit8 v3, v3, 0x7f

    iget-object v6, p1, Lﹳⁱ/ˑﹳ;->ˈٴ:Lﹳⁱ/ʽ;

    iget-object v7, v6, Lﹳⁱ/ʽ;->ﹳٴ:[B

    if-nez v7, :cond_1

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v6, Lﹳⁱ/ʽ;->ﹳٴ:[B

    goto :goto_1

    :cond_1
    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    iget-object v7, v6, Lﹳⁱ/ʽ;->ﹳٴ:[B

    invoke-static {p0, v0, v1, v7, v3}, Lﹳᵢ/ـˏ;->ˑﹳ(Lʻˆ/ʽ;J[BI)Lʻˆ/ʽ;

    move-result-object p0

    int-to-long v7, v3

    add-long/2addr v0, v7

    if-eqz v5, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, p3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {p0, v0, v1, v3, v2}, Lﹳᵢ/ـˏ;->ˑﹳ(Lʻˆ/ʽ;J[BI)Lʻˆ/ʽ;

    move-result-object p0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p3}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v2

    :cond_2
    iget-object v3, v6, Lﹳⁱ/ʽ;->ˈ:[I

    if-eqz v3, :cond_3

    array-length v7, v3

    if-ge v7, v2, :cond_4

    :cond_3
    new-array v3, v2, [I

    :cond_4
    iget-object v7, v6, Lﹳⁱ/ʽ;->ˑﹳ:[I

    if-eqz v7, :cond_5

    array-length v8, v7

    if-ge v8, v2, :cond_6

    :cond_5
    new-array v7, v2, [I

    :cond_6
    if-eqz v5, :cond_7

    mul-int/lit8 v5, v2, 0x6

    invoke-virtual {p3, v5}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v8, p3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {p0, v0, v1, v8, v5}, Lﹳᵢ/ـˏ;->ˑﹳ(Lʻˆ/ʽ;J[BI)Lʻˆ/ʽ;

    move-result-object p0

    int-to-long v8, v5

    add-long/2addr v0, v8

    invoke-virtual {p3, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_2
    if-ge v4, v2, :cond_8

    invoke-virtual {p3}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {p3}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v5

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    aput v4, v3, v4

    iget v5, p2, Lˈـ/ـˆ;->ﹳٴ:I

    iget-wide v8, p2, Lˈـ/ـˆ;->ⁱˊ:J

    sub-long v8, v0, v8

    long-to-int v8, v8

    sub-int/2addr v5, v8

    aput v5, v7, v4

    :cond_8
    iget-object v4, p2, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v4, Lˊﾞ/ˊʻ;

    sget-object v5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-object v5, v4, Lˊﾞ/ˊʻ;->ⁱˊ:[B

    iget-object v8, v6, Lﹳⁱ/ʽ;->ﹳٴ:[B

    iget v9, v4, Lˊﾞ/ˊʻ;->ﹳٴ:I

    iget v10, v4, Lˊﾞ/ˊʻ;->ʽ:I

    iget v4, v4, Lˊﾞ/ˊʻ;->ˈ:I

    iput v2, v6, Lﹳⁱ/ʽ;->ﾞᴵ:I

    iput-object v3, v6, Lﹳⁱ/ʽ;->ˈ:[I

    iput-object v7, v6, Lﹳⁱ/ʽ;->ˑﹳ:[I

    iput-object v5, v6, Lﹳⁱ/ʽ;->ⁱˊ:[B

    iput-object v8, v6, Lﹳⁱ/ʽ;->ﹳٴ:[B

    iput v9, v6, Lﹳⁱ/ʽ;->ʽ:I

    iput v10, v6, Lﹳⁱ/ʽ;->ᵎﹶ:I

    iput v4, v6, Lﹳⁱ/ʽ;->ᵔᵢ:I

    iget-object v11, v6, Lﹳⁱ/ʽ;->ʼˎ:Landroid/media/MediaCodec$CryptoInfo;

    iput v2, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object v3, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object v7, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v5, v11, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object v8, v11, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput v9, v11, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    iget-object v2, v6, Lﹳⁱ/ʽ;->ˆʾ:Lﹳⁱ/ⁱˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v10, v4}, Lﹳⁱ/ⁱˊ;->ﹳٴ(Lﹳⁱ/ⁱˊ;II)V

    :cond_9
    iget-wide v2, p2, Lˈـ/ـˆ;->ⁱˊ:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lˈـ/ـˆ;->ⁱˊ:J

    iget v1, p2, Lˈـ/ـˆ;->ﹳٴ:I

    sub-int/2addr v1, v0

    iput v1, p2, Lˈـ/ـˆ;->ﹳٴ:I

    :cond_a
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-wide v1, p2, Lˈـ/ـˆ;->ⁱˊ:J

    iget-object v3, p3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {p0, v1, v2, v3, v0}, Lﹳᵢ/ـˏ;->ˑﹳ(Lʻˆ/ʽ;J[BI)Lʻˆ/ʽ;

    move-result-object p0

    invoke-virtual {p3}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result p3

    iget-wide v1, p2, Lˈـ/ـˆ;->ⁱˊ:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lˈـ/ـˆ;->ⁱˊ:J

    iget v1, p2, Lˈـ/ـˆ;->ﹳٴ:I

    sub-int/2addr v1, v0

    iput v1, p2, Lˈـ/ـˆ;->ﹳٴ:I

    invoke-virtual {p1, p3}, Lﹳⁱ/ˑﹳ;->ʻٴ(I)V

    iget-wide v0, p2, Lˈـ/ـˆ;->ⁱˊ:J

    iget-object v2, p1, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lﹳᵢ/ـˏ;->ˈ(Lʻˆ/ʽ;JLjava/nio/ByteBuffer;I)Lʻˆ/ʽ;

    move-result-object p0

    iget-wide v0, p2, Lˈـ/ـˆ;->ⁱˊ:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lˈـ/ـˆ;->ⁱˊ:J

    iget v0, p2, Lˈـ/ـˆ;->ﹳٴ:I

    sub-int/2addr v0, p3

    iput v0, p2, Lˈـ/ـˆ;->ﹳٴ:I

    iget-object p3, p1, Lﹳⁱ/ˑﹳ;->ˉٴ:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    if-ge p3, v0, :cond_b

    goto :goto_3

    :cond_b
    iget-object p3, p1, Lﹳⁱ/ˑﹳ;->ˉٴ:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4

    :cond_c
    :goto_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p1, Lﹳⁱ/ˑﹳ;->ˉٴ:Ljava/nio/ByteBuffer;

    :goto_4
    iget-wide v0, p2, Lˈـ/ـˆ;->ⁱˊ:J

    iget-object p1, p1, Lﹳⁱ/ˑﹳ;->ˉٴ:Ljava/nio/ByteBuffer;

    iget p2, p2, Lˈـ/ـˆ;->ﹳٴ:I

    invoke-static {p0, v0, v1, p1, p2}, Lﹳᵢ/ـˏ;->ˈ(Lʻˆ/ʽ;JLjava/nio/ByteBuffer;I)Lʻˆ/ʽ;

    move-result-object p0

    return-object p0

    :cond_d
    iget p3, p2, Lˈـ/ـˆ;->ﹳٴ:I

    invoke-virtual {p1, p3}, Lﹳⁱ/ˑﹳ;->ʻٴ(I)V

    iget-wide v0, p2, Lˈـ/ـˆ;->ⁱˊ:J

    iget-object p1, p1, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    iget p2, p2, Lˈـ/ـˆ;->ﹳٴ:I

    invoke-static {p0, v0, v1, p1, p2}, Lﹳᵢ/ـˏ;->ˈ(Lʻˆ/ʽ;JLjava/nio/ByteBuffer;I)Lʻˆ/ʽ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ʽ(I)I
    .locals 6

    .prologue
    iget-object v0, p0, Lﹳᵢ/ـˏ;->ﾞᴵ:Lʻˆ/ʽ;

    iget-object v1, v0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᵔⁱ/ﹳٴ;

    if-nez v1, :cond_2

    iget-object v1, p0, Lﹳᵢ/ـˏ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    monitor-enter v1

    :try_start_0
    iget v2, v1, Lᵔⁱ/ˑﹳ;->ˈ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lᵔⁱ/ˑﹳ;->ˈ:I

    iget v3, v1, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    if-lez v3, :cond_0

    iget-object v2, v1, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;

    iget v4, v1, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v3, Lᵔⁱ/ﹳٴ;

    iget v4, v1, Lᵔⁱ/ˑﹳ;->ⁱˊ:I

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lᵔⁱ/ﹳٴ;-><init>(I[B)V

    iget-object v4, v1, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;

    array-length v5, v4

    if-le v2, v5, :cond_1

    array-length v2, v4

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lᵔⁱ/ﹳٴ;

    iput-object v2, v1, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v2, v3

    :goto_0
    monitor-exit v1

    new-instance v1, Lʻˆ/ʽ;

    iget-object v3, p0, Lﹳᵢ/ـˏ;->ﾞᴵ:Lʻˆ/ʽ;

    iget-wide v3, v3, Lʻˆ/ʽ;->ᴵˊ:J

    iget v5, p0, Lﹳᵢ/ـˏ;->ⁱˊ:I

    invoke-direct {v1, v5, v3, v4}, Lʻˆ/ʽ;-><init>(IJ)V

    iput-object v2, v0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_2
    iget-object v0, p0, Lﹳᵢ/ـˏ;->ﾞᴵ:Lʻˆ/ʽ;

    iget-wide v0, v0, Lʻˆ/ʽ;->ᴵˊ:J

    iget-wide v2, p0, Lﹳᵢ/ـˏ;->ᵎﹶ:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final ⁱˊ(J)V
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lﹳᵢ/ـˏ;->ˈ:Lʻˆ/ʽ;

    iget-wide v1, v0, Lʻˆ/ʽ;->ᴵˊ:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lﹳᵢ/ـˏ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    iget-object v0, v0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔⁱ/ﹳٴ;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;

    iget v3, v1, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    aput-object v0, v2, v3

    iget v0, v1, Lᵔⁱ/ˑﹳ;->ˈ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lᵔⁱ/ˑﹳ;->ˈ:I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lﹳᵢ/ـˏ;->ˈ:Lʻˆ/ʽ;

    const/4 v1, 0x0

    iput-object v1, v0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    iget-object v2, v0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lʻˆ/ʽ;

    iput-object v1, v0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    iput-object v2, p0, Lﹳᵢ/ـˏ;->ˈ:Lʻˆ/ʽ;

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-object p1, p0, Lﹳᵢ/ـˏ;->ˑﹳ:Lʻˆ/ʽ;

    iget-wide p1, p1, Lʻˆ/ʽ;->ʾˋ:J

    iget-wide v1, v0, Lʻˆ/ʽ;->ʾˋ:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iput-object v0, p0, Lﹳᵢ/ـˏ;->ˑﹳ:Lʻˆ/ʽ;

    :cond_2
    :goto_1
    return-void
.end method

.method public final ﹳٴ(Lʻˆ/ʽ;)V
    .locals 6

    .prologue
    iget-object v0, p1, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔⁱ/ﹳٴ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lﹳᵢ/ـˏ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    monitor-enter v0

    move-object v1, p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v3, v0, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;

    iget v4, v0, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    iget-object v5, v1, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lᵔⁱ/ﹳٴ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v5, v3, v4

    iget v3, v0, Lᵔⁱ/ˑﹳ;->ˈ:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lᵔⁱ/ˑﹳ;->ˈ:I

    iget-object v1, v1, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʻˆ/ʽ;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lᵔⁱ/ﹳٴ;

    if-nez v3, :cond_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput-object v2, p1, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v2, p1, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
