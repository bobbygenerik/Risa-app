.class public final Lˋˋ/ˋᵔ;
.super Lʼﾞ/ᵎⁱ;
.source "SourceFile"


# instance fields
.field public final synthetic ˈ:I


# direct methods
.method public synthetic constructor <init>(Lˋˋ/ʻᵎ;I)V
    .locals 0

    iput p2, p0, Lˋˋ/ˋᵔ;->ˈ:I

    invoke-direct {p0, p1}, Lʼﾞ/ᵎⁱ;-><init>(Lˋˋ/ʻᵎ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ()I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v1, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v1, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ʼᐧ(Landroid/view/View;)I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lˋˋ/ʻᵎ;->ˑٴ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->top:I

    return p1

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lˋˋ/ʻᵎ;->ˑٴ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->left:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˆʾ()I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Landroid/view/View;)I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1, p1}, Lˋˋ/ʻᵎ;->ʾˋ(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1, p1}, Lˋˋ/ʻᵎ;->ˊʻ(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉʿ()I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Landroid/view/View;)I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lˋˋ/ʻᵎ;->ˑٴ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    return p1

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lˋˋ/ʻᵎ;->ˑٴ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->right:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˑﹳ(Landroid/view/View;)I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˈٴ(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ᴵᵔ(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ٴﹶ()I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v0, v0, Lˋˋ/ʻᵎ;->ˉʿ:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v0, v0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ(Landroid/view/View;)I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1, p1}, Lˋˋ/ʻᵎ;->ٴᵢ(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    sub-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1, p1}, Lˋˋ/ʻᵎ;->ʽʽ(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔʾ()I
    .locals 3

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v1, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v1, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔᵢ()I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v0, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v0, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(I)V
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    invoke-virtual {v0, p1}, Lˋˋ/ʻᵎ;->ᴵˑ(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    invoke-virtual {v0, p1}, Lˋˋ/ʻᵎ;->ˈⁱ(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞʻ()I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v0, v0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    iget v0, v0, Lˋˋ/ʻᵎ;->ˉʿ:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Landroid/view/View;)I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ˋᵔ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ᴵᵔ(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˈٴ(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
