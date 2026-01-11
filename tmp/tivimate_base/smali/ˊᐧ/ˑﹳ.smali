.class public final Lˊᐧ/ˑﹳ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    iput-object p2, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method private final ʽ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .prologue
    iget v0, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˎʿ/ﹳٴ;

    invoke-virtual {v0}, Lˎʿ/ⁱˊ;->ﹳٴ()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ـˆ;

    iget-boolean v1, v0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v0, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ﾞᴵ;

    iget-wide v0, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    .prologue
    iget v0, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ـˆ;

    invoke-virtual {v0}, Lˊᐧ/ـˆ;->close()V

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 6

    .prologue
    iget v0, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˎʿ/ﹳٴ;

    invoke-virtual {v0}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v0
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ـˆ;

    iget-object v1, v0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-boolean v2, v0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v2, :cond_1

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v0, v0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lˊᐧ/ﾞᴵ;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ﾞᴵ;

    iget-wide v1, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([B)I
    .locals 2

    .prologue
    iget v0, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˎʿ/ﹳٴ;

    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    array-length p1, p1
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public read([BII)I
    .locals 9

    .prologue
    iget v0, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ـˆ;

    iget-object v1, v0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-boolean v2, v0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v2, :cond_1

    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Lcom/bumptech/glide/ˈ;->ᵔᵢ(JJJ)V

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v0, v0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->read([BII)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->read([BII)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skip(J)J
    .locals 2

    .prologue
    iget v0, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1

    :pswitch_0
    iget-object v0, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˎʿ/ﹳٴ;

    long-to-int v1, p1

    iput v1, v0, Lˎʿ/ⁱˊ;->ʽ:I

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˊᐧ/ـˆ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transferTo(Ljava/io/OutputStream;)J
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lˊᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p1}, Ljava/io/InputStream;->transferTo(Ljava/io/OutputStream;)J

    move-result-wide v1

    return-wide v1

    :pswitch_0
    iget-object v1, v0, Lˊᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˊᐧ/ـˆ;

    iget-object v2, v1, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-boolean v3, v1, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v3, :cond_4

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    iget-wide v7, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_1

    iget-object v7, v1, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v8, 0x2000

    invoke-interface {v7, v2, v8, v9}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    return-wide v5

    :cond_1
    :goto_1
    iget-wide v8, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    add-long/2addr v5, v8

    const-wide/16 v10, 0x0

    move-wide v12, v8

    invoke-static/range {v8 .. v13}, Lcom/bumptech/glide/ˈ;->ᵔᵢ(JJJ)V

    iget-object v7, v2, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    :goto_2
    cmp-long v10, v8, v3

    if-lez v10, :cond_3

    iget v10, v7, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v11, v7, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    iget-object v11, v7, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v12, v7, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12, v10}, Ljava/io/OutputStream;->write([BII)V

    iget v11, v7, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    add-int/2addr v11, v10

    iput v11, v7, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget-wide v14, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    int-to-long v3, v10

    sub-long/2addr v14, v3

    iput-wide v14, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    sub-long/2addr v8, v3

    iget v3, v7, Lˊᐧ/ʾᵎ;->ʽ:I

    if-ne v11, v3, :cond_2

    invoke-virtual {v7}, Lˊᐧ/ʾᵎ;->ﹳٴ()Lˊᐧ/ʾᵎ;

    move-result-object v3

    iput-object v3, v2, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    invoke-static {v7}, Lˊᐧ/ʼʼ;->ﹳٴ(Lˊᐧ/ʾᵎ;)V

    move-object v7, v3

    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v13, p1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
