.class public final Lʿʼ/ᵎﹶ;
.super Lᵢʼ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public ᴵˊ:Lʻᴵ/ʻٴ;


# virtual methods
.method public final ʽ()I
    .locals 1

    iget-object v0, p0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    iget v0, v0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    return v0
.end method

.method public final ᵎﹶ([B)I
    .locals 7

    .prologue
    iget-object v0, p0, Lʿʼ/ᵎﹶ;->ᴵˊ:Lʻᴵ/ʻٴ;

    iget-object v1, v0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v2, v0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    array-length v3, p1

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    iget v3, v0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int v4, v3, v2

    array-length v5, v1

    const/4 v6, 0x0

    if-gt v4, v5, :cond_1

    invoke-static {v1, v3, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-static {v1, v3, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v3, v2, v4

    invoke-static {v1, v6, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget p1, v0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/2addr p1, v2

    array-length v1, v1

    rem-int/2addr p1, v1

    iput p1, v0, Lʻᴵ/ʻٴ;->ˈ:I

    iget p1, v0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    sub-int/2addr p1, v2

    iput p1, v0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    return v2
.end method
