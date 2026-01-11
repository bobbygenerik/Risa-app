.class public final Lˊʾ/ᵔﹳ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˊʻ:I

.field public ٴᵢ:[B


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v1

    iput v1, p0, Lˊʾ/ᵔﹳ;->ˊʻ:I

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    iput v0, p1, Lˎʿ/ⁱˊ;->ʽ:I

    iget v0, p0, Lˊʾ/ᵔﹳ;->ˊʻ:I

    new-array v1, v0, [B

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    iput-object v1, p0, Lˊʾ/ᵔﹳ;->ٴᵢ:[B

    return-void
.end method
