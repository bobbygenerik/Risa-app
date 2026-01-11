.class public final Lʽᴵ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:Ljava/lang/Object;

.field public ⁱˊ:I

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(BI)V
    .locals 0

    iput p2, p0, Lʽᴵ/יـ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lʽᴵ/יـ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v1

    :cond_2
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lʽᴵ/יـ;->ˈ:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    return-void

    :cond_3
    const-string p1, "capacity must be <= 2^30"

    invoke-static {p1}, Lˏי/ﹳٴ;->ʽ(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p1, "capacity must be >= 1"

    invoke-static {p1}, Lˏי/ﹳٴ;->ʽ(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget v0, p0, Lʽᴵ/יـ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NegotiatedProtocol{dialect="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lʼﹳ/ʽ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxTransactSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽᴵ/יـ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxReadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽᴵ/יـ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxWriteSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽᴵ/יـ;->ˈ:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lʽᴵ/יـ;->ⁱˊ:I

    sub-int v3, v1, v2

    shl-int/lit8 v4, v1, 0x1

    if-ltz v4, :cond_0

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6, v2, v1, v0, v5}, Lﹶˈ/ʼˎ;->ˊᵔ(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v2, p0, Lʽᴵ/יـ;->ⁱˊ:I

    invoke-static {v3, v6, v2, v0, v5}, Lﹶˈ/ʼˎ;->ˊᵔ(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v5, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    iput v6, p0, Lʽᴵ/יـ;->ⁱˊ:I

    iput v1, p0, Lʽᴵ/יـ;->ʽ:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lʽᴵ/יـ;->ˈ:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˈ(I)V
    .locals 5

    .prologue
    if-gtz p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lʽᴵ/יـ;->ﾞᴵ()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget v0, p0, Lʽᴵ/יـ;->ʽ:I

    if-ge p1, v0, :cond_1

    sub-int v1, v0, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lʽᴵ/יـ;->ʽ:I

    sub-int v1, v0, v1

    sub-int/2addr p1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lʽᴵ/יـ;->ʽ:I

    if-lez p1, :cond_4

    iget-object v0, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lʽᴵ/יـ;->ʽ:I

    sub-int p1, v0, p1

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput p1, p0, Lʽᴵ/יـ;->ʽ:I

    :cond_4
    :goto_3
    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public ˑﹳ(I)V
    .locals 4

    .prologue
    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lʽᴵ/יـ;->ﾞᴵ()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lʽᴵ/יـ;->ⁱˊ:I

    sub-int v2, v0, v1

    if-ge p1, v2, :cond_1

    add-int v0, v1, p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lʽᴵ/יـ;->ⁱˊ:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr v1, v0

    iget v0, p0, Lʽᴵ/יـ;->ˈ:I

    and-int/2addr v0, v1

    iput v0, p0, Lʽᴵ/יـ;->ⁱˊ:I

    if-lez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput p1, p0, Lʽᴵ/יـ;->ⁱˊ:I

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public ⁱˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lʽᴵ/יـ;->ʽ:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lʽᴵ/יـ;->ˈ:I

    and-int/2addr p1, v1

    iput p1, p0, Lʽᴵ/יـ;->ʽ:I

    iget v0, p0, Lʽᴵ/יـ;->ⁱˊ:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lʽᴵ/יـ;->ʽ()V

    :cond_0
    return-void
.end method

.method public ﹳٴ(Lʽᴵ/ʻٴ;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    iput-object v0, p1, Lʽᴵ/ʻٴ;->ʽʽ:Lʽᴵ/ʻٴ;

    iput-object v0, p1, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object v0, p1, Lʽᴵ/ʻٴ;->ᴵˊ:Lʽᴵ/ʻٴ;

    const/4 v0, 0x1

    iput v0, p1, Lʽᴵ/ʻٴ;->ᵎⁱ:I

    iget v1, p0, Lʽᴵ/יـ;->ⁱˊ:I

    if-lez v1, :cond_0

    iget v2, p0, Lʽᴵ/יـ;->ˈ:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    iput v2, p0, Lʽᴵ/יـ;->ˈ:I

    sub-int/2addr v1, v0

    iput v1, p0, Lʽᴵ/יـ;->ⁱˊ:I

    iget v1, p0, Lʽᴵ/יـ;->ʽ:I

    add-int/2addr v1, v0

    iput v1, p0, Lʽᴵ/יـ;->ʽ:I

    :cond_0
    iget-object v1, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/ʻٴ;

    iput-object v1, p1, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object p1, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    iget p1, p0, Lʽᴵ/יـ;->ˈ:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lʽᴵ/יـ;->ˈ:I

    iget v2, p0, Lʽᴵ/יـ;->ⁱˊ:I

    const/4 v3, 0x2

    if-lez v2, :cond_1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    add-int/2addr p1, v3

    iput p1, p0, Lʽᴵ/יـ;->ˈ:I

    sub-int/2addr v2, v0

    iput v2, p0, Lʽᴵ/יـ;->ⁱˊ:I

    iget p1, p0, Lʽᴵ/יـ;->ʽ:I

    add-int/2addr p1, v0

    iput p1, p0, Lʽᴵ/יـ;->ʽ:I

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget v1, p0, Lʽᴵ/יـ;->ˈ:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lʽᴵ/יـ;->ʽ:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/ʻٴ;

    iget-object v2, v1, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iget-object v4, v2, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iget-object v5, v4, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object v5, v2, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object v2, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    iput-object v4, v2, Lʽᴵ/ʻٴ;->ᴵˊ:Lʽᴵ/ʻٴ;

    iput-object v1, v2, Lʽᴵ/ʻٴ;->ʽʽ:Lʽᴵ/ʻٴ;

    iget v5, v1, Lʽᴵ/ʻٴ;->ᵎⁱ:I

    add-int/2addr v5, v0

    iput v5, v2, Lʽᴵ/ʻٴ;->ᵎⁱ:I

    iput-object v2, v4, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object v2, v1, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/ʻٴ;

    iget-object v4, v1, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object v4, p0, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    iput-object v1, v4, Lʽᴵ/ʻٴ;->ʽʽ:Lʽᴵ/ʻٴ;

    iget v5, v1, Lʽᴵ/ʻٴ;->ᵎⁱ:I

    add-int/2addr v5, v0

    iput v5, v4, Lʽᴵ/ʻٴ;->ᵎⁱ:I

    iput-object v4, v1, Lʽᴵ/ʻٴ;->ʾˋ:Lʽᴵ/ʻٴ;

    iput v2, p0, Lʽᴵ/יـ;->ʽ:I

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    iput v2, p0, Lʽᴵ/יـ;->ʽ:I

    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method

.method public ﾞᴵ()I
    .locals 2

    iget v0, p0, Lʽᴵ/יـ;->ʽ:I

    iget v1, p0, Lʽᴵ/יـ;->ⁱˊ:I

    sub-int/2addr v0, v1

    iget v1, p0, Lʽᴵ/יـ;->ˈ:I

    and-int/2addr v0, v1

    return v0
.end method
