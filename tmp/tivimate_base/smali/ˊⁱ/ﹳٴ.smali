.class public final Lˊⁱ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊⁱ/ʽ;


# instance fields
.field public ʽʽ:I

.field public ʾˋ:Lﹶᵎ/ﹳٴ;

.field public ˈٴ:[B

.field public ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ᴵᵔ:[B


# virtual methods
.method public final ᵔʾ([BII)I
    .locals 9

    .prologue
    iget-object v0, p0, Lˊⁱ/ﹳٴ;->ᴵᵔ:[B

    iget-object v1, p0, Lˊⁱ/ﹳٴ;->ˈٴ:[B

    move v2, p2

    :goto_0
    add-int v3, p2, p3

    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v2, 0x10

    if-gt v4, v3, :cond_0

    const/16 v3, 0x10

    goto :goto_1

    :cond_0
    sub-int/2addr v3, v2

    :goto_1
    iget-object v5, p0, Lˊⁱ/ﹳٴ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v5, p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵᵔ([BII)V

    iget v5, p0, Lˊⁱ/ﹳٴ;->ʽʽ:I

    invoke-static {v5, v1}, Lʼ/ᵎﹶ;->ᴵˊ(I[B)V

    iget-object v5, p0, Lˊⁱ/ﹳٴ;->ʾˋ:Lﹶᵎ/ﹳٴ;

    invoke-virtual {v5, v1, v0}, Lﹶᵎ/ﹳٴ;->ﹳٴ([B[B)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_1

    add-int v6, v2, v5

    aget-byte v7, p1, v6

    aget-byte v8, v0, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget v2, p0, Lˊⁱ/ﹳٴ;->ʽʽ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lˊⁱ/ﹳٴ;->ʽʽ:I

    move v2, v4

    goto :goto_0

    :cond_2
    return p3
.end method
