.class public final Lˊʾ/ˏי;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˉٴ:J

.field public ˊʻ:Lʼﹳ/ʽ;

.field public ٴʼ:Ljava/util/EnumSet;

.field public ٴᵢ:B

.field public ᵎⁱ:[B


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 4

    .prologue
    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ˉʿ()V

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v1

    int-to-long v1, v1

    const-class v3, Lˊʾ/יـ;

    invoke-static {v1, v2, v3}, Lᴵʿ/ﹳٴ;->ˈ(JLjava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lˊʾ/ˏי;->ٴʼ:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v1

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v0

    if-lez v0, :cond_0

    iput v1, p1, Lˎʿ/ⁱˊ;->ʽ:I

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array v1, p1, [B

    :goto_0
    iput-object v1, p0, Lˊʾ/ˏי;->ᵎⁱ:[B

    return-void
.end method

.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 5

    .prologue
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v0, p0, Lˊʾ/ˏי;->ˊʻ:Lʼﹳ/ʽ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    iget-byte v1, p0, Lˊʾ/ˏי;->ٴᵢ:B

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    iget-wide v1, p0, Lˊʾ/ˏי;->ˉٴ:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    const/16 v1, 0x58

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v1, p0, Lˊʾ/ˏי;->ᵎⁱ:[B

    if-eqz v1, :cond_0

    array-length v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const-wide/16 v0, 0x0

    iget-object v2, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v2, p1, v0, v1}, Lˎʿ/ʽ;->ᵔᵢ(Lˎʿ/ⁱˊ;J)V

    iget-object v0, p0, Lˊʾ/ˏי;->ᵎⁱ:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    :cond_1
    return-void
.end method
