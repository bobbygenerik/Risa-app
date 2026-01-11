.class public abstract Lᵔʿ/ﹳٴ;
.super Ljava/lang/Object;


# instance fields
.field public ʽ:J

.field public ⁱˊ:I

.field public final ﹳٴ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lᵔʿ/ﹳٴ;->ﹳٴ:[B

    const/4 v0, 0x0

    iput v0, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    return-void
.end method

.method public constructor <init>(Lᵔʿ/ﹳٴ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lᵔʿ/ﹳٴ;->ﹳٴ:[B

    invoke-virtual {p0, p1}, Lᵔʿ/ﹳٴ;->ⁱˊ(Lᵔʿ/ﹳٴ;)V

    return-void
.end method


# virtual methods
.method public ʼˎ()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lᵔʿ/ﹳٴ;->ʽ:J

    const/4 v0, 0x0

    iput v0, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lᵔʿ/ﹳٴ;->ﹳٴ:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract ʽ(I[B)I
.end method

.method public abstract ˆʾ(Lᵔʿ/ﹳٴ;)V
.end method

.method public final ˈ()V
    .locals 3

    .prologue
    iget-wide v0, p0, Lᵔʿ/ﹳٴ;->ʽ:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_0
    invoke-virtual {p0, v2}, Lᵔʿ/ﹳٴ;->ٴﹶ(B)V

    iget v2, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lᵔʿ/ﹳٴ;->ᵎﹶ(J)V

    invoke-virtual {p0}, Lᵔʿ/ﹳٴ;->ﾞᴵ()V

    return-void
.end method

.method public abstract ˑﹳ()I
.end method

.method public final ٴﹶ(B)V
    .locals 4

    .prologue
    iget v0, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    iget-object v2, p0, Lᵔʿ/ﹳٴ;->ﹳٴ:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lᵔʿ/ﹳٴ;->ᵔᵢ(I[B)V

    iput p1, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    :cond_0
    iget-wide v0, p0, Lᵔʿ/ﹳٴ;->ʽ:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lᵔʿ/ﹳٴ;->ʽ:J

    return-void
.end method

.method public abstract ᵎﹶ(J)V
.end method

.method public abstract ᵔᵢ(I[B)V
.end method

.method public final ⁱˊ(Lᵔʿ/ﹳٴ;)V
    .locals 4

    iget-object v0, p1, Lᵔʿ/ﹳٴ;->ﹳٴ:[B

    iget-object v1, p0, Lᵔʿ/ﹳٴ;->ﹳٴ:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    iput v0, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    iget-wide v0, p1, Lᵔʿ/ﹳٴ;->ʽ:J

    iput-wide v0, p0, Lᵔʿ/ﹳٴ;->ʽ:J

    return-void
.end method

.method public abstract ﹳٴ()Lᵔʿ/ﹳٴ;
.end method

.method public final ﾞʻ([BII)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    iget-object v2, p0, Lᵔʿ/ﹳٴ;->ﹳٴ:[B

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    iget v3, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lᵔʿ/ﹳٴ;->ᵔᵢ(I[B)V

    iput v0, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    move v0, v5

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    sub-int v1, p3, v0

    and-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v1, :cond_3

    add-int v3, p2, v0

    invoke-virtual {p0, v3, p1}, Lᵔʿ/ﹳٴ;->ᵔᵢ(I[B)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, p3, :cond_4

    iget v1, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lᵔʿ/ﹳٴ;->ⁱˊ:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_3

    :cond_4
    iget-wide p1, p0, Lᵔʿ/ﹳٴ;->ʽ:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lᵔʿ/ﹳٴ;->ʽ:J

    return-void
.end method

.method public abstract ﾞᴵ()V
.end method
