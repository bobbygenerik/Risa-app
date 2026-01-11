.class public final Lˎʿ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˎʿ/ʽ;

.field public static final ˈ:Lˎʿ/ʽ;

.field public static final ⁱˊ:[B


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lˎʿ/ʽ;->ⁱˊ:[B

    new-instance v0, Lˎʿ/ʽ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˎʿ/ʽ;-><init>(I)V

    sput-object v0, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    new-instance v0, Lˎʿ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˎʿ/ʽ;-><init>(I)V

    sput-object v0, Lˎʿ/ʽ;->ˈ:Lˎʿ/ʽ;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˎʿ/ʽ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˑﹳ(Lˎʿ/ⁱˊ;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    new-array v0, p1, [B

    invoke-virtual {p0, p1, v0}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "little endian"

    return-object v0

    :pswitch_0
    const-string v0, "big endian"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ʼˎ(Lˎʿ/ⁱˊ;Ljava/lang/String;)V
    .locals 1

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p2

    invoke-virtual {p1, v0, p2}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    :pswitch_0
    sget-object v0, Lᴵʿ/ⁱˊ;->ⁱˊ:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p2

    invoke-virtual {p1, v0, p2}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ʽ(Lˎʿ/ⁱˊ;)J
    .locals 8

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    const/4 p1, 0x0

    aget-byte p1, v1, p1

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/4 p1, 0x1

    aget-byte p1, v1, p1

    shl-int/lit8 p1, p1, 0x8

    int-to-long v4, p1

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 p1, 0x2

    aget-byte p1, v1, p1

    shl-int/lit8 p1, p1, 0x10

    int-to-long v4, p1

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 p1, 0x3

    aget-byte p1, v1, p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    const-wide v4, 0xff000000L

    :goto_0
    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    const/4 p1, 0x0

    aget-byte p1, v1, p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v2, p1

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    const/4 p1, 0x1

    aget-byte p1, v1, p1

    shl-int/lit8 p1, p1, 0x10

    int-to-long v4, p1

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 p1, 0x2

    aget-byte p1, v1, p1

    shl-int/lit8 p1, p1, 0x8

    int-to-long v4, p1

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 p1, 0x3

    aget-byte p1, v1, p1

    int-to-long v0, p1

    const-wide/16 v4, 0xff

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Lˎʿ/ⁱˊ;)J
    .locals 6

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v2

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    return-wide v0

    :cond_0
    new-instance p1, Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException;

    const-string v0, "Cannot handle values > 9223372036854775807"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    return-wide v0

    :cond_1
    new-instance p1, Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException;

    const-string v0, "Cannot handle values > 9223372036854775807"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ(Lˎʿ/ⁱˊ;I)V
    .locals 6

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    const-string v1, "Invalid uint16 value: "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0xffff

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    if-ltz p2, :cond_0

    if-gt p2, v4, :cond_0

    int-to-byte v0, p2

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    new-array v1, v5, [B

    aput-byte v0, v1, v3

    aput-byte p2, v1, v2

    invoke-virtual {p1, v5, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-ltz p2, :cond_1

    if-gt p2, v4, :cond_1

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    int-to-byte p2, p2

    new-array v1, v5, [B

    aput-byte v0, v1, v3

    aput-byte p2, v1, v2

    invoke-virtual {p1, v5, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔᵢ(Lˎʿ/ⁱˊ;J)V
    .locals 2

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid uint64 value: "

    invoke-static {v0, p2, p3}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid uint64 value: "

    invoke-static {v0, p2, p3}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Lˎʿ/ⁱˊ;)I
    .locals 2

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    const/4 p1, 0x0

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    :goto_0
    or-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    const/4 p1, 0x0

    aget-byte p1, v1, p1

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Lˎʿ/ⁱˊ;)J
    .locals 6

    .prologue
    iget v0, p0, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    const-wide/16 v2, 0x0

    const/4 p1, 0x7

    :goto_0
    if-ltz p1, :cond_0

    shl-long/2addr v2, v0

    aget-byte v4, v1, p1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-wide v2

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    shl-long/2addr v2, v0

    aget-byte v4, v1, p1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lˎʿ/ⁱˊ;J)V
    .locals 24

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget v4, v1, Lˎʿ/ʽ;->ﹳٴ:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x38

    const/16 v14, 0x30

    const/16 v15, 0x28

    const/16 v16, 0x20

    const/16 v17, 0x18

    const/16 v18, 0x10

    const/16 v19, 0x7

    const/16 v5, 0x8

    packed-switch v4, :pswitch_data_0

    long-to-int v4, v2

    int-to-byte v4, v4

    const/16 v20, 0x6

    const/16 v21, 0x5

    shr-long v6, v2, v5

    long-to-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x4

    const/16 v22, 0x3

    shr-long v8, v2, v18

    long-to-int v8, v8

    int-to-byte v8, v8

    move v9, v7

    move/from16 v18, v8

    shr-long v7, v2, v17

    long-to-int v7, v7

    int-to-byte v7, v7

    move/from16 v23, v9

    const/4 v8, 0x2

    shr-long v9, v2, v16

    long-to-int v9, v9

    int-to-byte v9, v9

    move v10, v8

    move/from16 v16, v9

    shr-long v8, v2, v15

    long-to-int v8, v8

    int-to-byte v8, v8

    shr-long v14, v2, v14

    long-to-int v9, v14

    int-to-byte v9, v9

    shr-long/2addr v2, v13

    long-to-int v2, v2

    int-to-byte v2, v2

    new-array v3, v5, [B

    aput-byte v4, v3, v12

    aput-byte v6, v3, v11

    aput-byte v18, v3, v10

    aput-byte v7, v3, v22

    aput-byte v16, v3, v23

    aput-byte v8, v3, v21

    aput-byte v9, v3, v20

    aput-byte v2, v3, v19

    invoke-virtual {v0, v5, v3}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    :pswitch_0
    const/4 v10, 0x2

    const/16 v20, 0x6

    const/16 v21, 0x5

    const/16 v22, 0x3

    const/16 v23, 0x4

    shr-long v6, v2, v13

    long-to-int v4, v6

    int-to-byte v4, v4

    shr-long v6, v2, v14

    long-to-int v6, v6

    int-to-byte v6, v6

    shr-long v7, v2, v15

    long-to-int v7, v7

    int-to-byte v7, v7

    shr-long v8, v2, v16

    long-to-int v8, v8

    int-to-byte v8, v8

    shr-long v13, v2, v17

    long-to-int v9, v13

    int-to-byte v9, v9

    shr-long v13, v2, v18

    long-to-int v13, v13

    int-to-byte v13, v13

    shr-long v14, v2, v5

    long-to-int v14, v14

    int-to-byte v14, v14

    long-to-int v2, v2

    int-to-byte v2, v2

    new-array v3, v5, [B

    aput-byte v4, v3, v12

    aput-byte v6, v3, v11

    aput-byte v7, v3, v10

    aput-byte v8, v3, v22

    aput-byte v9, v3, v23

    aput-byte v13, v3, v21

    aput-byte v14, v3, v20

    aput-byte v2, v3, v19

    invoke-virtual {v0, v5, v3}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
