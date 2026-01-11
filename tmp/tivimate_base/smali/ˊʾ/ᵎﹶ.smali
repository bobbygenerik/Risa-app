.class public final Lˊʾ/ᵎﹶ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˊʻ:[B


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 5

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v0

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v1

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v2

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1, v4}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    if-lez v1, :cond_0

    iput v0, p1, Lˎʿ/ⁱˊ;->ʽ:I

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ٴﹶ(I)[B

    :cond_0
    if-lez v3, :cond_1

    iput v2, p1, Lˎʿ/ⁱˊ;->ʽ:I

    new-array v0, v3, [B

    invoke-virtual {p1, v3, v0}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    iput-object v0, p0, Lˊʾ/ᵎﹶ;->ˊʻ:[B

    :cond_1
    return-void
.end method
