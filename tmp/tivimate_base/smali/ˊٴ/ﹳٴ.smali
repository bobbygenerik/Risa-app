.class public final Lˊٴ/ﹳٴ;
.super Lˊٴ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public ʽʽ:[B

.field public ˈٴ:I


# virtual methods
.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lˊٴ/ﹳٴ;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lˊٴ/ﹳٴ;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˊٴ/ﹳٴ;->ʽʽ:[B

    iget v1, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    rsub-int/lit8 v2, v1, 0x10

    if-lt p3, v2, :cond_1

    rsub-int/lit8 v2, v1, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1, p2}, Lˊٴ/ⁱˊ;->write([BII)V

    iget p2, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    iput v1, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    if-eqz p3, :cond_0

    rem-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_0

    add-int v3, p3, p2

    sub-int/2addr v3, v2

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    sub-int/2addr p3, v2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lˊٴ/ⁱˊ;->write([BII)V

    return-void

    :cond_1
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    add-int/2addr p1, p3

    iput p1, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    return-void
.end method

.method public final ʽ()V
    .locals 4

    .prologue
    iget v0, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lˊٴ/ﹳٴ;->ʽʽ:[B

    invoke-super {p0, v2, v1, v0}, Lˊٴ/ⁱˊ;->write([BII)V

    iput v1, p0, Lˊٴ/ﹳٴ;->ˈٴ:I

    :cond_0
    iget-object v0, p0, Lˊٴ/ⁱˊ;->ᴵˊ:Lˊⁱ/ˈ;

    check-cast v0, Lˊⁱ/ⁱˊ;

    iget-object v0, v0, Lˊⁱ/ⁱˊ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˆʾ(I)V

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    const/16 v2, 0xa

    new-array v3, v2, [B

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3, v1, v2}, Lˊٴ/ˆʾ;->write([BII)V

    invoke-super {p0}, Lˊٴ/ⁱˊ;->ʽ()V

    return-void
.end method

.method public final ᵎﹶ(Lـʽ/ﾞʻ;[CZ)Lˊⁱ/ˈ;
    .locals 1

    new-instance v0, Lˊⁱ/ⁱˊ;

    iget p1, p1, Lـʽ/ﾞʻ;->ﾞᴵ:I

    invoke-direct {v0, p2, p1, p3}, Lˊⁱ/ⁱˊ;-><init>([CIZ)V

    iget-object p1, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    iget-object p2, v0, Lˊⁱ/ⁱˊ;->ٴʼ:[B

    invoke-virtual {p1, p2}, Lˊٴ/ˆʾ;->write([B)V

    iget-object p2, v0, Lˊⁱ/ⁱˊ;->ᵎⁱ:[B

    invoke-virtual {p1, p2}, Lˊٴ/ˆʾ;->write([B)V

    return-object v0
.end method
