.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Lˋˋ/ʻᵎ;
.source "SourceFile"

# interfaces
.implements Lˋˋ/ʽᵔ;


# instance fields
.field public final ʼᐧ:Lˊᵔ/ﾞᴵ;

.field public ᵔﹳ:Lʻᴵ/ﾞᴵ;

.field public final ﹳᐧ:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lˊᵔ/ﾞᴵ;

    invoke-direct {v0}, Lˊᵔ/ﾞᴵ;-><init>()V

    invoke-direct {p0}, Lˋˋ/ʻᵎ;-><init>()V

    new-instance v1, Lﹶˏ/ﹳٴ;

    invoke-direct {v1}, Lﹶˏ/ﹳٴ;-><init>()V

    new-instance v1, Lᐧⁱ/ᵔᵢ;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lᐧⁱ/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ﹳᐧ:Landroid/view/View$OnLayoutChangeListener;

    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ʼᐧ:Lˊᵔ/ﾞᴵ;

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ﹳᵢ(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lˋˋ/ʻᵎ;-><init>()V

    new-instance p3, Lﹶˏ/ﹳٴ;

    invoke-direct {p3}, Lﹶˏ/ﹳٴ;-><init>()V

    new-instance p3, Lᐧⁱ/ᵔᵢ;

    const/4 p4, 0x4

    invoke-direct {p3, p4, p0}, Lᐧⁱ/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ﹳᐧ:Landroid/view/View$OnLayoutChangeListener;

    new-instance p3, Lˊᵔ/ﾞᴵ;

    invoke-direct {p3}, Lˊᵔ/ﾞᴵ;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ʼᐧ:Lˊᵔ/ﾞᴵ;

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    if-eqz p2, :cond_0

    sget-object p3, Lיﹶ/ﹳٴ;->ⁱˊ:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ﹳᵢ(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ʻᴵ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ʼᐧ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ʿـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˑˆ()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p3

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lˋˋ/ʻˋ;->ˈ(I)Landroid/view/View;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final ʿᵢ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ʼᐧ:Lˊᵔ/ﾞᴵ;

    iget v2, v1, Lˊᵔ/ﾞᴵ;->ﹳٴ:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07022d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_0
    iput v2, v1, Lˊᵔ/ﾞᴵ;->ﹳٴ:F

    iget v2, v1, Lˊᵔ/ﾞᴵ;->ⁱˊ:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1
    iput v2, v1, Lˊᵔ/ﾞᴵ;->ⁱˊ:F

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ﹳᐧ:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final ˈˏ()V
    .locals 0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    return-void
.end method

.method public final ˉʿ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ˉˆ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ˊˋ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˎʾ(FF)F
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˎˉ()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-float/2addr p1, p2

    return p1

    :cond_0
    add-float/2addr p1, p2

    return p1
.end method

.method public final ˎˉ()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˑˆ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˏי()Lˋˋ/ˊᵔ;
    .locals 2

    new-instance v0, Lˋˋ/ˊᵔ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lˋˋ/ˊᵔ;-><init>(II)V

    return-object v0
.end method

.method public final ˑˆ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ᵔﹳ:Lʻᴵ/ﾞᴵ;

    iget v0, v0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹳ()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˑˆ()Z

    move-result v0

    return v0
.end method

.method public final יˉ(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    new-instance v0, Lˋˋ/ˊˋ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lˋˋ/ˊˋ;-><init>(ILandroid/content/Context;Ljava/lang/Object;)V

    iput p2, v0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ﾞˋ(Lˋˋ/ˆﾞ;)V

    return-void
.end method

.method public final ـﹶ(II)V
    .locals 0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    return-void
.end method

.method public final ٴﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V
    .locals 1

    .prologue
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˑˆ()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    :goto_0
    int-to-float p2, p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˎˉ()Z

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lˋˋ/ʻˋ;->ˈ(I)Landroid/view/View;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ˎᐧ(Lˋˋ/ʻˋ;)V

    return-void
.end method

.method public final ٴﹶ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    const/4 p1, 0x0

    return p1
.end method

.method public final ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final ᐧﾞ(Landroid/view/View;ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)Landroid/view/View;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ᵔﹳ:Lʻᴵ/ﾞᴵ;

    iget p3, p3, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const/high16 p4, -0x80000000

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/16 v2, 0x11

    if-eq p2, v2, :cond_7

    const/16 v2, 0x21

    if-eq p2, v2, :cond_6

    const/16 v2, 0x42

    if-eq p2, v2, :cond_4

    const/16 v2, 0x82

    if-eq p2, v2, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Unknown focus request:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CarouselLayoutManager"

    nop

    :cond_1
    move p2, p4

    goto :goto_2

    :cond_2
    if-ne p3, v1, :cond_1

    :cond_3
    :goto_0
    move p2, v1

    goto :goto_2

    :cond_4
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˎˉ()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_5
    :goto_1
    move p2, v0

    goto :goto_2

    :cond_6
    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_7
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˎˉ()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :goto_2
    if-ne p2, p4, :cond_8

    goto :goto_4

    :cond_8
    const/4 p3, 0x0

    if-ne p2, v0, :cond_d

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, p3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v1

    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result p2

    if-lt p1, p2, :cond_a

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ᵔﹳ:Lʻᴵ/ﾞᴵ;

    invoke-virtual {p1}, Lʻᴵ/ﾞᴵ;->ˆʾ()I

    const/4 p1, 0x0

    throw p1

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˎˉ()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p1

    add-int/lit8 p3, p1, -0x1

    :cond_c
    invoke-virtual {p0, p3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_e

    :goto_4
    const/4 p1, 0x0

    return-object p1

    :cond_e
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    if-ltz p1, :cond_10

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result p2

    if-lt p1, p2, :cond_f

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ᵔﹳ:Lʻᴵ/ﾞᴵ;

    invoke-virtual {p1}, Lʻᴵ/ﾞᴵ;->ˆʾ()I

    const/4 p1, 0x0

    throw p1

    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˎˉ()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p1

    add-int/lit8 p3, p1, -0x1

    :goto_6
    invoke-virtual {p0, p3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2}, Lˋˋ/ʻᵎ;->ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˑˆ()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final ᵎʻ(Lˋˋ/ᐧﹶ;)V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    return-void
.end method

.method public final ᵎᵔ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ﹳᐧ:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final ᵔʾ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    const/4 p1, 0x0

    return p1
.end method

.method public final ⁱי(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ﾞᴵ()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p3

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lˋˋ/ʻˋ;->ˈ(I)Landroid/view/View;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final ﹳٴ(I)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ﹳᵢ(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation:"

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ʽ(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ᵔﹳ:Lʻᴵ/ﾞᴵ;

    if-eqz v1, :cond_3

    iget v1, v1, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    if-ne p1, v0, :cond_4

    new-instance p1, Lﹶˏ/ⁱˊ;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lﹶˏ/ⁱˊ;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lﹶˏ/ⁱˊ;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lﹶˏ/ⁱˊ;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V

    :goto_2
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->ᵔﹳ:Lʻᴵ/ﾞᴵ;

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public final ﹳⁱ(I)V
    .locals 0

    return-void
.end method

.method public final ﹳﹳ(II)V
    .locals 0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    return-void
.end method

.method public final ﾞʻ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ﾞᴵ()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˑˆ()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
