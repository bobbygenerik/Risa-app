.class public final Lˊʾ/ˆʾ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˆﾞ:Lﾞʾ/ⁱˊ;

.field public ˉٴ:Ljava/util/UUID;

.field public ˊʻ:I

.field public ٴʼ:I

.field public ٴᵢ:Lʼﹳ/ʽ;

.field public ᵎˊ:I

.field public ᵎⁱ:J

.field public ᵔי:I


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 9

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    iget-object v1, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v2

    iput v2, p0, Lˊʾ/ˆʾ;->ˊʻ:I

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v2

    invoke-static {}, Lʼﹳ/ʽ;->values()[Lʼﹳ/ʽ;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v3, v6

    iget v8, v7, Lʼﹳ/ʽ;->ʾˋ:I

    if-ne v8, v2, :cond_4

    iput-object v7, p0, Lˊʾ/ˆʾ;->ٴᵢ:Lʼﹳ/ʽ;

    sget-object v2, Lʼﹳ/ʽ;->ˉٴ:Lʼﹳ/ʽ;

    if-ne v7, v2, :cond_0

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    :goto_1
    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v3

    const/16 v6, 0x10

    shl-long/2addr v3, v6

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v7

    int-to-long v7, v7

    or-long/2addr v3, v7

    shl-long/2addr v3, v6

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    sget-object v6, Lˎʿ/ʽ;->ˈ:Lˎʿ/ʽ;

    invoke-virtual {v6, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    move-result-wide v6

    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v3, v4, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v8, p0, Lˊʾ/ˆʾ;->ˉٴ:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v3

    iput-wide v3, p0, Lˊʾ/ˆʾ;->ᵎⁱ:J

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v3

    iput v3, p0, Lˊʾ/ˆʾ;->ٴʼ:I

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v3

    iput v3, p0, Lˊʾ/ˆʾ;->ᵎˊ:I

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v3

    iput v3, p0, Lˊʾ/ˆʾ;->ᵔי:I

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    move-result-object v3

    iput-object v3, p0, Lˊʾ/ˆʾ;->ˆﾞ:Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v3

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v4

    iget-object v6, p0, Lˊʾ/ˆʾ;->ٴᵢ:Lʼﹳ/ʽ;

    if-ne v6, v2, :cond_1

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v5

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    :goto_2
    if-lez v4, :cond_2

    iput v3, p1, Lˎʿ/ⁱˊ;->ʽ:I

    invoke-virtual {p1, v4}, Lˎʿ/ⁱˊ;->ٴﹶ(I)[B

    :cond_2
    iget-object v0, p0, Lˊʾ/ˆʾ;->ٴᵢ:Lʼﹳ/ʽ;

    if-eq v0, v2, :cond_3

    return-void

    :cond_3
    iput v5, p1, Lˎʿ/ⁱˊ;->ʽ:I

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot read NegotiateContextList yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown SMB2 Dialect: "

    invoke-static {v2, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
