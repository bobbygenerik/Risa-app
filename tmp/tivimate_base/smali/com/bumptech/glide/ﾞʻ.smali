.class public final Lcom/bumptech/glide/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾˎ/ˑﹳ;


# instance fields
.field public final ʾˋ:Lʾˎ/ʽ;

.field public final ᴵˊ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bumptech/glide/ﾞʻ;->ᴵˊ:Landroid/view/View;

    new-instance v0, Lʾˎ/ʽ;

    invoke-direct {v0, p1}, Lʾˎ/ʽ;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/ﾞʻ;->ʾˋ:Lʾˎ/ʽ;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/ﾞʻ;->ᴵˊ:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    iget-object p1, p0, Lcom/bumptech/glide/ﾞʻ;->ʾˋ:Lʾˎ/ʽ;

    iget-object v0, p1, Lʾˎ/ʽ;->ﹳٴ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lʾˎ/ʽ;->ʽ:Lʾˎ/ⁱˊ;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lʾˎ/ʽ;->ʽ:Lʾˎ/ⁱˊ;

    iget-object p1, p1, Lʾˎ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final ʽ()V
    .locals 0

    return-void
.end method

.method public final ˆʾ()V
    .locals 0

    return-void
.end method

.method public final ˈ(Lⁱⁱ/ᵎﹶ;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/ﾞʻ;->ʾˋ:Lʾˎ/ʽ;

    iget-object v0, v0, Lʾˎ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ˑﹳ(Lⁱⁱ/ᵎﹶ;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ﾞʻ;->ʾˋ:Lʾˎ/ʽ;

    iget-object v1, v0, Lʾˎ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    iget-object v2, v0, Lʾˎ/ʽ;->ﹳٴ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6, v3, v4}, Lʾˎ/ʽ;->ﹳٴ(III)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4, v5, v6}, Lʾˎ/ʽ;->ﹳٴ(III)I

    move-result v4

    const/high16 v5, -0x80000000

    if-gtz v3, :cond_2

    if-ne v3, v5, :cond_3

    :cond_2
    if-gtz v4, :cond_6

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, v0, Lʾˎ/ʽ;->ʽ:Lʾˎ/ⁱˊ;

    if-nez p1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lʾˎ/ⁱˊ;

    invoke-direct {v1, v0}, Lʾˎ/ⁱˊ;-><init>(Lʾˎ/ʽ;)V

    iput-object v1, v0, Lʾˎ/ʽ;->ʽ:Lʾˎ/ⁱˊ;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    invoke-virtual {p1, v3, v4}, Lⁱⁱ/ᵎﹶ;->ˉʿ(II)V

    return-void
.end method

.method public final ٴﹶ()V
    .locals 0

    return-void
.end method

.method public final ᵎﹶ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final ᵔᵢ()Lⁱⁱ/ʽ;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ﾞʻ;->ᴵˊ:Landroid/view/View;

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lⁱⁱ/ʽ;

    if-eqz v1, :cond_0

    check-cast v0, Lⁱⁱ/ʽ;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ⁱˊ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final ﹳٴ(Lⁱⁱ/ʽ;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/ﾞʻ;->ᴵˊ:Landroid/view/View;

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ(Ljava/lang/Object;Lˈʼ/ʽ;)V
    .locals 0

    return-void
.end method
