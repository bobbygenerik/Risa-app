.class public abstract Lcom/google/android/material/timepicker/ʼˎ;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public final ʼˈ:Lˋⁱ/ʼˎ;

.field public ˊˋ:I

.field public final ˋᵔ:Lcom/google/android/material/timepicker/ᵔᵢ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f040415

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e00ee

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v1, Lˋⁱ/ʼˎ;

    invoke-direct {v1}, Lˋⁱ/ʼˎ;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ʼˎ;->ʼˈ:Lˋⁱ/ʼˎ;

    new-instance v2, Lˋⁱ/ˆʾ;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Lˋⁱ/ˆʾ;-><init>(F)V

    iget-object v3, v1, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v3, v3, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v3, v2}, Lˋⁱ/ﾞʻ;->ﹳٴ(Lˋⁱ/ˆʾ;)Lˋⁱ/ᵔʾ;

    move-result-object v2

    invoke-virtual {v1, v2}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    iget-object v1, p0, Lcom/google/android/material/timepicker/ʼˎ;->ʼˈ:Lˋⁱ/ʼˎ;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/material/timepicker/ʼˎ;->ʼˈ:Lˋⁱ/ʼˎ;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lיﹶ/ﹳٴ;->ʾᵎ:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/timepicker/ʼˎ;->ˊˋ:I

    new-instance p2, Lcom/google/android/material/timepicker/ᵔᵢ;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ᵔᵢ;-><init>(Lcom/google/android/material/timepicker/ʼˎ;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/ʼˎ;->ˋᵔ:Lcom/google/android/material/timepicker/ᵔᵢ;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/material/timepicker/ʼˎ;->ˋᵔ:Lcom/google/android/material/timepicker/ᵔᵢ;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ʼˎ;->ˉʿ()V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/timepicker/ʼˎ;->ˋᵔ:Lcom/google/android/material/timepicker/ᵔᵢ;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/ʼˎ;->ʼˈ:Lˋⁱ/ʼˎ;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public abstract ˉʿ()V
.end method
