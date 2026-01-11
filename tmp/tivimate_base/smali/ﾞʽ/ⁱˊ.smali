.class public final Lﾞʽ/ⁱˊ;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lᵔﹶ/ˊʻ;


# direct methods
.method public constructor <init>(Lᵔﹶ/ˊʻ;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lﾞʽ/ⁱˊ;->ʾˋ:Lᵔﹶ/ˊʻ;

    return-void
.end method


# virtual methods
.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final ʽ(Lˎᵔ/ⁱˊ;)V
    .locals 5

    .prologue
    iget-object v0, p1, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    iget-object v1, v0, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    iget v1, v1, Lˎᵔ/ᵎﹶ;->ʾˋ:I

    iget-object v2, v0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    iget v2, v2, Lˎᵔ/ﹳٴ;->ʾˋ:I

    or-int/2addr v1, v2

    iget v0, v0, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p1, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    iget-object v1, p0, Lﾞʽ/ⁱˊ;->ʾˋ:Lᵔﹶ/ˊʻ;

    invoke-virtual {v0, v1}, Lˎᵔ/ﾞᴵ;->ˈ(Lᵔﹶ/ˊʻ;)Lʽⁱ/ᵎﹶ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lʽⁱ/ᵎﹶ;->ﹶ(Lˎᵔ/ⁱˊ;)I

    move-result v1

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    move v3, v1

    :goto_0
    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, v3, 0x8

    goto :goto_0

    :cond_1
    or-int/lit16 v3, v2, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x8

    shr-int v3, v1, v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0, p1, p0}, Lʽⁱ/ᵎﹶ;->ʻʿ(Lˎᵔ/ⁱˊ;Lﾞʽ/ⁱˊ;)V

    return-void
.end method
