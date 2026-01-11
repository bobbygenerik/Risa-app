.class public abstract Lˎʿ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public final ⁱˊ:Lˎʿ/ʽ;

.field public ﹳٴ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lˎʿ/ⁱˊ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x100

    invoke-static {v0}, Lˎʿ/ⁱˊ;->ʽ(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-object v2, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    invoke-direct {p0, v0, v1, v2}, Lˎʿ/ⁱˊ;-><init>([BZLˎʿ/ʽ;)V

    return-void
.end method

.method public constructor <init>([BZLˎʿ/ʽ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iput-object p3, p0, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    const/4 p3, 0x0

    iput p3, p0, Lˎʿ/ⁱˊ;->ʽ:I

    if-eqz p2, :cond_0

    array-length p3, p1

    :cond_0
    iput p3, p0, Lˎʿ/ⁱˊ;->ˈ:I

    return-void
.end method

.method public static ʽ(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_1

    shl-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get next power of 2; "

    const-string v2, " is too large"

    invoke-static {p0, v1, v2}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Buffer [rpos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lˎʿ/ⁱˊ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wpos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˎʿ/ⁱˊ;->ˈ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    array-length v1, v1

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ()B
    .locals 3

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lˎʿ/ⁱˊ;->ﹳٴ()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget v1, p0, Lˎʿ/ⁱˊ;->ʽ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lˎʿ/ⁱˊ;->ʽ:I

    aget-byte v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException;

    const-string v1, "Underflow"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˆʾ(I[B)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˎʿ/ⁱˊ;->ﹳٴ()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget v1, p0, Lˎʿ/ⁱˊ;->ʽ:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lˎʿ/ⁱˊ;->ʽ:I

    add-int/2addr p2, p1

    iput p2, p0, Lˎʿ/ⁱˊ;->ʽ:I

    return-void

    :cond_0
    new-instance p1, Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException;

    const-string p2, "Underflow"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ˈ(B)Lˎʿ/ⁱˊ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    array-length v0, v0

    iget v1, p0, Lˎʿ/ⁱˊ;->ˈ:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    add-int/2addr v1, v2

    invoke-static {v1}, Lˎʿ/ⁱˊ;->ʽ(I)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    :cond_0
    iget-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget v1, p0, Lˎʿ/ⁱˊ;->ˈ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lˎʿ/ⁱˊ;->ˈ:I

    aput-byte p1, v0, v1

    return-object p0
.end method

.method public final ˉʿ()V
    .locals 1

    iget-object v0, p0, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p0}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    return-void
.end method

.method public final ˉˆ(I)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˎʿ/ⁱˊ;->ﹳٴ()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget v0, p0, Lˎʿ/ⁱˊ;->ʽ:I

    add-int/2addr v0, p1

    iput v0, p0, Lˎʿ/ⁱˊ;->ʽ:I

    return-void

    :cond_0
    new-instance p1, Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException;

    const-string v0, "Underflow"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ˑﹳ(I[B)Lˎʿ/ⁱˊ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    array-length v0, v0

    iget v1, p0, Lˎʿ/ⁱˊ;->ˈ:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge v0, p1, :cond_0

    add-int/2addr v1, p1

    invoke-static {v1}, Lˎʿ/ⁱˊ;->ʽ(I)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    :cond_0
    iget-object v0, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget v1, p0, Lˎʿ/ⁱˊ;->ˈ:I

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lˎʿ/ⁱˊ;->ˈ:I

    add-int/2addr p2, p1

    iput p2, p0, Lˎʿ/ⁱˊ;->ˈ:I

    return-object p0
.end method

.method public final ٴﹶ(I)[B
    .locals 1

    new-array v0, p1, [B

    invoke-virtual {p0, p1, v0}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    return-object v0
.end method

.method public final ᵎﹶ(I)V
    .locals 1

    iget-object v0, p0, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p0, p1}, Lˎʿ/ʽ;->ᵎﹶ(Lˎʿ/ⁱˊ;I)V

    return-void
.end method

.method public final ᵔʾ()I
    .locals 2

    iget-object v0, p0, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p0}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final ᵔᵢ(J)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    iget v3, v3, Lˎʿ/ʽ;->ﹳٴ:I

    const-string v4, "Invalid uint32 value: "

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/16 v10, 0x10

    const/16 v11, 0x8

    const-wide v12, 0xffffffffL

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/4 v5, 0x4

    packed-switch v3, :pswitch_data_0

    cmp-long v3, v1, v14

    if-ltz v3, :cond_0

    cmp-long v3, v1, v12

    if-gtz v3, :cond_0

    long-to-int v3, v1

    int-to-byte v3, v3

    shr-long v11, v1, v11

    long-to-int v4, v11

    int-to-byte v4, v4

    shr-long v10, v1, v10

    long-to-int v10, v10

    int-to-byte v10, v10

    shr-long/2addr v1, v9

    long-to-int v1, v1

    int-to-byte v1, v1

    new-array v2, v5, [B

    aput-byte v3, v2, v8

    aput-byte v4, v2, v7

    aput-byte v10, v2, v6

    aput-byte v1, v2, v16

    invoke-virtual {v0, v5, v2}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v1, v2}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    cmp-long v3, v1, v14

    if-ltz v3, :cond_1

    cmp-long v3, v1, v12

    if-gtz v3, :cond_1

    shr-long v3, v1, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    shr-long v9, v1, v10

    long-to-int v4, v9

    int-to-byte v4, v4

    shr-long v9, v1, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    long-to-int v1, v1

    int-to-byte v1, v1

    new-array v2, v5, [B

    aput-byte v3, v2, v8

    aput-byte v4, v2, v7

    aput-byte v9, v2, v6

    aput-byte v1, v2, v16

    invoke-virtual {v0, v5, v2}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v1, v2}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()[B
    .locals 5

    .prologue
    invoke-virtual {p0}, Lˎʿ/ⁱˊ;->ﹳٴ()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    new-array v2, v0, [B

    iget-object v3, p0, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget v4, p0, Lˎʿ/ⁱˊ;->ʽ:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    new-array v0, v1, [B

    return-object v0
.end method

.method public final ﹳٴ()I
    .locals 2

    iget v0, p0, Lˎʿ/ⁱˊ;->ˈ:I

    iget v1, p0, Lˎʿ/ⁱˊ;->ʽ:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "UTF-16BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p2, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Lˎʿ/ʽ;->ˑﹳ(Lˎʿ/ⁱˊ;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    sget-object p2, Lᴵʿ/ⁱˊ;->ⁱˊ:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Lˎʿ/ʽ;->ˑﹳ(Lˎʿ/ⁱˊ;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    new-array v1, p1, [B

    invoke-virtual {p0, p1, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :pswitch_3
    iget-object p2, p0, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    iget p2, p2, Lˎʿ/ʽ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_1

    sget-object p2, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Lˎʿ/ʽ;->ˑﹳ(Lˎʿ/ⁱˊ;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    sget-object p2, Lᴵʿ/ⁱˊ;->ⁱˊ:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Lˎʿ/ʽ;->ˑﹳ(Lˎʿ/ⁱˊ;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_3
        0x4d50972 -> :sswitch_2
        0x5353cdae -> :sswitch_1
        0x5353cee4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public final ﾞᴵ(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 3

    .prologue
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "UTF-16BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p2, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    invoke-virtual {p2, p0, p1}, Lˎʿ/ʽ;->ʼˎ(Lˎʿ/ⁱˊ;Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object p2, Lˎʿ/ʽ;->ˈ:Lˎʿ/ʽ;

    invoke-virtual {p2, p0, p1}, Lˎʿ/ʽ;->ʼˎ(Lˎʿ/ⁱˊ;Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p0, p2, p1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    :pswitch_3
    iget-object p2, p0, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {p2, p0, p1}, Lˎʿ/ʽ;->ʼˎ(Lˎʿ/ⁱˊ;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_3
        0x4d50972 -> :sswitch_2
        0x5353cdae -> :sswitch_1
        0x5353cee4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
