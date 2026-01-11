.class public final Lˏˉ/ⁱˊ;
.super Ljava/lang/Object;


# instance fields
.field public ʽ:I

.field public ˈ:[B

.field public ⁱˊ:I

.field public ﹳٴ:[B


# virtual methods
.method public final ﹳٴ([B)V
    .locals 7

    .prologue
    iput-object p1, p0, Lˏˉ/ⁱˊ;->ˈ:[B

    const/4 v0, 0x0

    iput v0, p0, Lˏˉ/ⁱˊ;->ⁱˊ:I

    iput v0, p0, Lˏˉ/ⁱˊ;->ʽ:I

    iget-object v1, p0, Lˏˉ/ⁱˊ;->ﹳٴ:[B

    const/16 v2, 0x100

    if-nez v1, :cond_0

    new-array v1, v2, [B

    iput-object v1, p0, Lˏˉ/ⁱˊ;->ﹳٴ:[B

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lˏˉ/ⁱˊ;->ﹳٴ:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lˏˉ/ⁱˊ;->ﹳٴ:[B

    aget-byte v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, v5, v3

    aput-byte v4, v5, v0

    aput-byte v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
