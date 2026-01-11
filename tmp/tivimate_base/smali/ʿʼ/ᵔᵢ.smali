.class public final Lʿʼ/ᵔᵢ;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final ˈٴ:Lﾞʼ/ﹳٴ;


# instance fields
.field public ʽʽ:Lʿʼ/ᵎﹶ;

.field public ʾˋ:Lʿʼ/ٴﹶ;

.field public ᴵˊ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lʿʼ/ᵔᵢ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lʿʼ/ᵔᵢ;->ˈٴ:Lﾞʼ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʿʼ/ᵔᵢ;->ʽʽ:Lʿʼ/ᵎﹶ;

    :goto_0
    iget-object v1, v0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    if-eqz v1, :cond_1

    iget v1, v1, Lʻᴵ/ʻٴ;->ˑﹳ:I

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lʿʼ/ᵔᵢ;->ʽ()V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lʿʼ/ᵔᵢ;->ᴵˊ:Z

    iput-object v1, p0, Lʿʼ/ᵔᵢ;->ʾˋ:Lʿʼ/ٴﹶ;

    iget-wide v0, v0, Lᵢʼ/ⁱˊ;->ʾˋ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lʿʼ/ᵔᵢ;->ˈٴ:Lﾞʼ/ﹳٴ;

    const-string v2, "EOF, {} bytes written"

    invoke-interface {v1, v0, v2}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final flush()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lʿʼ/ᵔᵢ;->ᴵˊ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lʿʼ/ᵔᵢ;->ʽʽ:Lʿʼ/ᵎﹶ;

    iget-object v0, v0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    if-eqz v0, :cond_1

    iget v0, v0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lʿʼ/ᵔᵢ;->ʽ()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lʿʼ/ᵔᵢ;->ᴵˊ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lʿʼ/ᵔᵢ;->ʽʽ:Lʿʼ/ᵎﹶ;

    iget-object v1, v0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    iget v2, v1, Lʻᴵ/ʻٴ;->ˑﹳ:I

    iget-object v1, v1, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length v1, v1

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lʿʼ/ᵔᵢ;->flush()V

    :cond_0
    iget-object v0, v0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    iget v1, v0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    iget-object v2, v0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {v0, v2, v3, v1}, Lʻᴵ/ʻٴ;->ᵢˏ([BII)V

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lʿʼ/ᵔᵢ;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʿʼ/ᵔᵢ;->ʽʽ:Lʿʼ/ᵎﹶ;

    iget-boolean v1, p0, Lʿʼ/ᵔᵢ;->ᴵˊ:Z

    if-nez v1, :cond_4

    :cond_0
    iget-object v1, v0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    iget-object v1, v1, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iget-object v2, v0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    iget-object v3, v2, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length v4, v3

    if-gt v1, v4, :cond_3

    iget v4, v2, Lʻᴵ/ʻٴ;->ˑﹳ:I

    add-int v5, v4, v1

    array-length v6, v3

    if-le v5, v6, :cond_1

    invoke-virtual {p0}, Lʿʼ/ᵔᵢ;->flush()V

    goto :goto_0

    :cond_1
    array-length v3, v3

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1, p2, v1}, Lʻᴵ/ʻٴ;->ᵢˏ([BII)V

    :goto_1
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    if-gtz p3, :cond_0

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "RingBuffer of length "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cannot accomodate "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lʿʼ/ᵔᵢ;->ʾˋ:Lʿʼ/ٴﹶ;

    iget-object v9, v0, Lʿʼ/ᵔᵢ;->ʽʽ:Lʿʼ/ᵎﹶ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v2, v9, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    if-eqz v2, :cond_1

    iget v2, v2, Lʻᴵ/ʻٴ;->ˑﹳ:I

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lʿʼ/ٴﹶ;->ˈ:Lﾞʼ/ﹳٴ;

    iget-object v3, v1, Lʿʼ/ٴﹶ;->ʽ:Ljava/lang/String;

    iget-wide v4, v9, Lᵢʼ/ⁱˊ;->ʾˋ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Writing to {} from offset {}"

    invoke-interface {v2, v3, v4, v5}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v1, Lʿʼ/ٴﹶ;->ﹳٴ:Lʿʼ/ˈ;

    iget-object v4, v1, Lʿʼ/ٴﹶ;->ⁱˊ:Lʼﹳ/ᵔᵢ;

    new-instance v2, Lˊʾ/ـˆ;

    iget-object v3, v11, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-wide v5, v11, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide v7, v11, Lʿʼ/ﾞʻ;->ʽʽ:J

    iget v10, v11, Lʿʼ/ﾞʻ;->ˉٴ:I

    invoke-direct/range {v2 .. v10}, Lˊʾ/ـˆ;-><init>(Lʼﹳ/ʽ;Lʼﹳ/ᵔᵢ;JJLᵢʼ/ⁱˊ;I)V

    sget-object v14, Lʿʼ/ˉʿ;->ˉʿ:Lﹳˋ/ʼˎ;

    iget-wide v5, v11, Lʿʼ/ﾞʻ;->ᵎⁱ:J

    const-string v12, "Write"

    move-object v13, v4

    move-wide v15, v5

    move-object v10, v11

    move-object v11, v2

    invoke-virtual/range {v10 .. v16}, Lʿʼ/ﾞʻ;->ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;

    move-result-object v2

    check-cast v2, Lˊʾ/ʾᵎ;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
