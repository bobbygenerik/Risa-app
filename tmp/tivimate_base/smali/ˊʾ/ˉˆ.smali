.class public final Lˊʾ/ˉˆ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˊʻ:[B


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v0

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v1

    iput v0, p1, Lˎʿ/ⁱˊ;->ʽ:I

    new-array v0, v1, [B

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    iput-object v0, p0, Lˊʾ/ˉˆ;->ˊʻ:[B

    return-void
.end method
