.class public final Lˊʾ/ـˆ;
.super Lʼﹳ/ᵔʾ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:Lᵢʼ/ⁱˊ;

.field public final ٴᵢ:Lʼﹳ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lʼﹳ/ʽ;Lʼﹳ/ᵔᵢ;JJLᵢʼ/ⁱˊ;I)V
    .locals 9

    sget-object v3, Lʼﹳ/ﾞʻ;->ٴʼ:Lʼﹳ/ﾞʻ;

    invoke-virtual/range {p7 .. p7}, Lᵢʼ/ⁱˊ;->ʽ()I

    move-result v0

    move/from16 v1, p8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v1, 0x31

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lʼﹳ/ᵔʾ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V

    iput-object p2, p0, Lˊʾ/ـˆ;->ٴᵢ:Lʼﹳ/ᵔᵢ;

    move-object/from16 p1, p7

    iput-object p1, p0, Lˊʾ/ـˆ;->ˉٴ:Lᵢʼ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 9

    .prologue
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    check-cast v0, Lʼﹳ/ٴﹶ;

    iget v0, v0, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    const/high16 v1, 0x10000

    mul-int/2addr v0, v1

    iget v2, p0, Lʼﹳ/ᵔʾ;->ˊʻ:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v0, p0, Lˊʾ/ـˆ;->ˉٴ:Lᵢʼ/ⁱˊ;

    iget-wide v3, v0, Lᵢʼ/ⁱˊ;->ʾˋ:J

    iget-object v5, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v5, p1, v3, v4}, Lˎʿ/ʽ;->ᵔᵢ(Lˎʿ/ⁱˊ;J)V

    iget-object v3, p0, Lˊʾ/ـˆ;->ٴᵢ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {v3, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {v0}, Lᵢʼ/ⁱˊ;->ʽ()I

    move-result v5

    iget-object v6, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lˋʼ/ⁱˊ;

    check-cast v6, Lʼﹳ/ٴﹶ;

    iget v6, v6, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    mul-int/2addr v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v5, v2

    const/4 v2, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v3, v4}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lˋʼ/ⁱˊ;

    check-cast v3, Lʼﹳ/ٴﹶ;

    iget v3, v3, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    new-array v1, v1, [B

    :goto_0
    if-ge v2, v3, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Lᵢʼ/ⁱˊ;->ᵎﹶ([B)I

    move-result v4

    invoke-virtual {p1, v4, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-wide v5, v0, Lᵢʼ/ⁱˊ;->ʾˋ:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, v0, Lᵢʼ/ⁱˊ;->ʾˋ:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method
