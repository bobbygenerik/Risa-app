.class public final Lˋˋ/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Z

.field public ˑﹳ:I

.field public ⁱˊ:I

.field public final synthetic ﹳٴ:I

.field public ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ˉٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lˋˋ/ˉٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    const/16 p1, 0x83

    new-array p1, p1, [B

    iput-object p1, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-byte v1, p1, v0

    return-void
.end method

.method public constructor <init>(Lⁱי/ᴵˑ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˋˋ/ˉٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget v0, p0, Lˋˋ/ˉٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˋˋ/ˉٴ;->ʽ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˋˋ/ˉٴ;->ˈ:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ᵔʾ(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ(Landroid/view/View;I)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    const/high16 v1, -0x80000000

    iget v2, v0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v1

    iget v0, v0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    sub-int v0, v1, v0

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    :goto_1
    iput p2, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    return-void
.end method

.method public ˈ(Landroid/view/View;I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    const/high16 v1, -0x80000000

    iget v2, v0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v1

    iget v0, v0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lˋˋ/ˉٴ;->ʽ(Landroid/view/View;I)V

    return-void

    :cond_1
    iput p2, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    iget-boolean p2, p0, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p2, Lʼﾞ/ᵎⁱ;

    invoke-virtual {p2}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result p2

    sub-int/2addr p2, v1

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    if-lez p2, :cond_3

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    iget-object v2, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, p1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr v1, p1

    if-gez v1, :cond_3

    iget p1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    neg-int v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    return-void

    :cond_2
    iget-object p2, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p2, Lʼﾞ/ᵎⁱ;

    invoke-virtual {p2, p1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    sub-int v0, p2, v0

    iput p2, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    if-lez v0, :cond_3

    iget-object v2, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, p1}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, p2

    iget-object p2, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p2, Lʼﾞ/ᵎⁱ;

    invoke-virtual {p2}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result p2

    sub-int/2addr p2, v1

    iget-object v1, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1, p1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p1, Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result p1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v2

    if-gez p1, :cond_3

    iget p2, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    neg-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    :cond_3
    return-void
.end method

.method public ˑﹳ(I)Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    sub-int/2addr v0, p1

    iput v0, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    iput-boolean v1, p0, Lˋˋ/ˉٴ;->ʽ:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˋˋ/ˉٴ;->ˈ:Z

    return p1
.end method

.method public ᵎﹶ()V
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˉٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    iput-boolean v0, p0, Lˋˋ/ˉٴ;->ˈ:Z

    return-void

    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    iput-boolean v0, p0, Lˋˋ/ˉٴ;->ˈ:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ᵔᵢ(I)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v0, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    iput-boolean v2, p0, Lˋˋ/ˉٴ;->ˈ:Z

    :cond_1
    return-void
.end method

.method public ⁱˊ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    :goto_0
    iput v0, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    return-void
.end method

.method public ﹳٴ([BII)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    iget v2, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    add-int/2addr p1, p3

    iput p1, p0, Lˋˋ/ˉٴ;->ˑﹳ:I

    return-void
.end method

.method public ﾞᴵ(I)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lˋˋ/ˉٴ;->ʽ:Z

    iget v0, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    add-int/2addr v0, p1

    iput v0, p0, Lˋˋ/ˉٴ;->ⁱˊ:I

    return-void
.end method
