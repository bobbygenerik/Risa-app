.class public final Lˊʾ/ﾞᴵ;
.super Lʼﹳ/ᵔʾ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:Lʼﹳ/ᵔᵢ;

.field public final ٴʼ:Z

.field public final ٴᵢ:J

.field public final ᵎˊ:J

.field public final ᵎⁱ:Lᵢʼ/ⁱˊ;


# direct methods
.method public constructor <init>(Lʼﹳ/ʽ;JJJLʼﹳ/ᵔᵢ;Lᵢʼ/ⁱˊ;I)V
    .locals 10

    move/from16 v0, p10

    sget-object v4, Lʼﹳ/ﾞʻ;->ᵎˊ:Lʼﹳ/ﾞʻ;

    invoke-virtual/range {p9 .. p9}, Lᵢʼ/ⁱˊ;->ʽ()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v2, 0x39

    move-object v1, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v1 .. v9}, Lʼﹳ/ᵔʾ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V

    move-wide/from16 p1, p6

    iput-wide p1, p0, Lˊʾ/ﾞᴵ;->ٴᵢ:J

    move-object/from16 p1, p8

    iput-object p1, p0, Lˊʾ/ﾞᴵ;->ˉٴ:Lʼﹳ/ᵔᵢ;

    move-object/from16 p1, p9

    iput-object p1, p0, Lˊʾ/ﾞᴵ;->ᵎⁱ:Lᵢʼ/ⁱˊ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˊʾ/ﾞᴵ;->ٴʼ:Z

    int-to-long p1, v0

    iput-wide p1, p0, Lˊʾ/ﾞᴵ;->ᵎˊ:J

    return-void
.end method


# virtual methods
.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 6

    .prologue
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    iget-wide v0, p0, Lˊʾ/ﾞᴵ;->ٴᵢ:J

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v0, p0, Lˊʾ/ﾞᴵ;->ˉٴ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {v0, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    iget-object v0, p0, Lˊʾ/ﾞᴵ;->ᵎⁱ:Lᵢʼ/ⁱˊ;

    invoke-virtual {v0}, Lᵢʼ/ⁱˊ;->ʽ()I

    move-result v1

    const-wide/16 v2, 0x0

    if-lez v1, :cond_0

    const/16 v4, 0x78

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    :goto_0
    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-wide v4, p0, Lˊʾ/ﾞᴵ;->ᵎˊ:J

    invoke-virtual {p1, v4, v5}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-boolean v1, p0, Lˊʾ/ﾞᴵ;->ٴʼ:Z

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x1

    :cond_1
    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    :goto_1
    invoke-virtual {v0}, Lᵢʼ/ⁱˊ;->ʽ()I

    move-result v1

    if-lez v1, :cond_2

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    :try_start_0
    invoke-virtual {v0, v1}, Lᵢʼ/ⁱˊ;->ᵎﹶ([B)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-wide v3, v0, Lᵢʼ/ⁱˊ;->ʾˋ:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lᵢʼ/ⁱˊ;->ʾˋ:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-void
.end method
