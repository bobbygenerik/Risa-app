.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Lʽʽ/ﹳٴ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "L\u02bd\u02bd/\ufe73\u0674;"
    }
.end annotation


# instance fields
.field public final ʻٴ:Lᵔˉ/ⁱˊ;

.field public ʼˎ:Lˉـ/ˑﹳ;

.field public ʼᐧ:Ljava/lang/ref/WeakReference;

.field public final ʽ:Landroid/content/res/ColorStateList;

.field public final ʽﹳ:Ljava/util/LinkedHashSet;

.field public ˆʾ:Z

.field public final ˈ:Lˋⁱ/ᵔʾ;

.field public ˉʿ:I

.field public ˉˆ:I

.field public ˏי:I

.field public final ˑﹳ:Lʻˑ/ﹳٴ;

.field public יـ:Landroid/view/VelocityTracker;

.field public final ٴﹶ:F

.field public final ᵎﹶ:Z

.field public ᵔʾ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:Ljava/lang/ref/WeakReference;

.field public final ⁱˊ:Lˋⁱ/ʼˎ;

.field public ﹳٴ:Lˈˆ/ﾞᴵ;

.field public final ﹳᐧ:I

.field public ﾞʻ:I

.field public final ﾞᴵ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʻˑ/ﹳٴ;

    invoke-direct {v0, p0}, Lʻˑ/ﹳٴ;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˑﹳ:Lʻˑ/ﹳٴ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵎﹶ:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ٴﹶ:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳᐧ:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽﹳ:Ljava/util/LinkedHashSet;

    new-instance v0, Lᵔˉ/ⁱˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lᵔˉ/ⁱˊ;-><init>(Lʽʽ/ﹳٴ;I)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʻٴ:Lᵔˉ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʻˑ/ﹳٴ;

    invoke-direct {v0, p0}, Lʻˑ/ﹳٴ;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˑﹳ:Lʻˑ/ﹳٴ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵎﹶ:Z

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ٴﹶ:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳᐧ:I

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽﹳ:Ljava/util/LinkedHashSet;

    new-instance v3, Lᵔˉ/ⁱˊ;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lᵔˉ/ⁱˊ;-><init>(Lʽʽ/ﹳٴ;I)V

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʻٴ:Lᵔˉ/ⁱˊ;

    sget-object v3, Lיﹶ/ﹳٴ;->ʾˋ:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v3, v4}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽ:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const v5, 0x7f1405bc

    invoke-static {p1, p2, v4, v5}, Lˋⁱ/ᵔʾ;->ᵎﹶ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋⁱ/ˉʿ;

    move-result-object p2

    invoke-virtual {p2}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˈ:Lˋⁱ/ᵔʾ;

    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳᐧ:I

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔﹳ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔﹳ:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eq p2, v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_3
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˈ:Lˋⁱ/ᵔʾ;

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Lˋⁱ/ʼˎ;

    invoke-direct {v1, p2}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ⁱˊ:Lˋⁱ/ʼˎ;

    invoke-virtual {v1, p1}, Lˋⁱ/ʼˎ;->ﾞʻ(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽ:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ⁱˊ:Lˋⁱ/ʼˎ;

    invoke-virtual {v1, p2}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_5
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ⁱˊ:Lˋⁱ/ʼˎ;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p2}, Lˋⁱ/ʼˎ;->setTint(I)V

    :goto_0
    const/4 p2, 0x2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﾞᴵ:F

    const/4 p2, 0x4

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵎﹶ:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽʽ/ˈ;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    return-void
.end method

.method public final ʽﹳ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    const/high16 v2, 0x100000

    invoke-static {v0, v2}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    sget-object v1, Lˊˋ/ʽ;->ʼˎ:Lˊˋ/ʽ;

    new-instance v3, Lᵔʻ/ـˏ;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, p0}, Lᵔʻ/ـˏ;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v3}, Lˋᵔ/ᵎˊ;->ٴﹶ(Landroid/view/View;Lˊˋ/ʽ;Lˊˋ/ﹳᐧ;)V

    :cond_2
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    sget-object v1, Lˊˋ/ʽ;->ᵔᵢ:Lˊˋ/ʽ;

    new-instance v3, Lᵔʻ/ـˏ;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, p0}, Lᵔʻ/ـˏ;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v3}, Lˋᵔ/ᵎˊ;->ٴﹶ(Landroid/view/View;Lˊˋ/ʽ;Lˊˋ/ﹳᐧ;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final ˉʿ(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    check-cast p2, Lᵔˉ/ʽ;

    iget p1, p2, Lᵔˉ/ʽ;->ʽʽ:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x5

    :cond_1
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    return-void
.end method

.method public final ˏי(ILandroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    invoke-virtual {v0}, Lˈˆ/ﾞᴵ;->ʽﹳ()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid state to get outer edge offset: "

    invoke-static {p1, p3}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    invoke-virtual {v0}, Lˈˆ/ﾞᴵ;->יـ()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    if-eqz v1, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {v1, v0, p2}, Lˉـ/ˑﹳ;->ˉˆ(II)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput-object p2, v1, Lˉـ/ˑﹳ;->ﹳᐧ:Landroid/view/View;

    const/4 p2, -0x1

    iput p2, v1, Lˉـ/ˑﹳ;->ʽ:I

    const/4 p2, 0x0

    invoke-virtual {v1, v0, p3, p2, p2}, Lˉـ/ˑﹳ;->ᵔᵢ(IIII)Z

    move-result p2

    if-nez p2, :cond_3

    iget p3, v1, Lˉـ/ˑﹳ;->ﹳٴ:I

    if-nez p3, :cond_3

    iget-object p3, v1, Lˉـ/ˑﹳ;->ﹳᐧ:Landroid/view/View;

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    iput-object p3, v1, Lˉـ/ˑﹳ;->ﹳᐧ:Landroid/view/View;

    :cond_3
    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳᐧ(I)V

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˑﹳ:Lʻˑ/ﹳٴ;

    invoke-virtual {p2, p1}, Lʻˑ/ﹳٴ;->ﹳٴ(I)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳᐧ(I)V

    return-void
.end method

.method public final ˑﹳ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    return-void
.end method

.method public final יـ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵎﹶ:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    if-ne v0, v1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵎﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 10

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ⁱˊ:Lˋⁱ/ʼˎ;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v6, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f040453

    const/16 v7, 0x12c

    invoke-static {v0, v6, v7}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    const v6, 0x7f040458

    const/16 v7, 0x96

    invoke-static {v0, v6, v7}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    const v6, 0x7f040457

    const/16 v7, 0x64

    invoke-static {v0, v6, v7}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0701ea

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    const v6, 0x7f0701e9

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    const v6, 0x7f0701eb

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, -0x40800000    # -1.0f

    iget v6, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﾞᴵ:F

    cmpl-float v0, v6, v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getElevation()F

    move-result v6

    :cond_1
    invoke-virtual {v2, v6}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    sget-object v6, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p2, v0}, Lˋᵔ/ʽʽ;->ᵎﹶ(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v0, :cond_5

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽﹳ()V

    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    invoke-static {p2}, Lˋᵔ/ᵎˊ;->ˑﹳ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f1303f5

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget v0, v0, Lʽʽ/ˈ;->ʽ:I

    invoke-static {v0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v5

    :goto_2
    iget-object v7, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lˈˆ/ﾞᴵ;->ᴵˊ()I

    move-result v7

    if-eq v7, v0, :cond_f

    :cond_9
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˈ:Lˋⁱ/ᵔʾ;

    if-nez v0, :cond_c

    new-instance v0, Lᵔˉ/ﹳٴ;

    invoke-direct {v0, p0, v1}, Lᵔˉ/ﹳٴ;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    if-eqz v8, :cond_f

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Lʽʽ/ˈ;

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lʽʽ/ˈ;

    :cond_a
    if-eqz v7, :cond_b

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-lez v0, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v8}, Lˋⁱ/ᵔʾ;->ٴﹶ()Lˋⁱ/ˉʿ;

    move-result-object v0

    new-instance v7, Lˋⁱ/ﹳٴ;

    invoke-direct {v7, v4}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v7, v0, Lˋⁱ/ˉʿ;->ﾞᴵ:Lˋⁱ/ˈ;

    new-instance v7, Lˋⁱ/ﹳٴ;

    invoke-direct {v7, v4}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v7, v0, Lˋⁱ/ˉʿ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-virtual {v0}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    if-eqz v2, :cond_f

    invoke-virtual {v2, v0}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    goto :goto_3

    :cond_c
    if-ne v0, v1, :cond_18

    new-instance v0, Lᵔˉ/ﹳٴ;

    invoke-direct {v0, p0, v5}, Lᵔˉ/ﹳٴ;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    if-eqz v8, :cond_f

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Lʽʽ/ˈ;

    if-eqz v9, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lʽʽ/ˈ;

    :cond_d
    if-eqz v7, :cond_e

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez v0, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v8}, Lˋⁱ/ᵔʾ;->ٴﹶ()Lˋⁱ/ˉʿ;

    move-result-object v0

    new-instance v7, Lˋⁱ/ﹳٴ;

    invoke-direct {v7, v4}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v7, v0, Lˋⁱ/ˉʿ;->ˑﹳ:Lˋⁱ/ˈ;

    new-instance v7, Lˋⁱ/ﹳٴ;

    invoke-direct {v7, v4}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v7, v0, Lˋⁱ/ˉʿ;->ᵔᵢ:Lˋⁱ/ˈ;

    invoke-virtual {v0}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    if-eqz v2, :cond_f

    invoke-virtual {v2, v0}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    if-nez v0, :cond_10

    new-instance v0, Lˉـ/ˑﹳ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʻٴ:Lᵔˉ/ⁱˊ;

    invoke-direct {v0, v2, p1, v4}, Lˉـ/ˑﹳ;-><init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lˈˊ/ᵔʾ;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    :cond_10
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    invoke-virtual {v0, p2}, Lˈˆ/ﾞᴵ;->ʾᵎ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔﹳ(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˉʿ:I

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    invoke-virtual {p3, p1}, Lˈˆ/ﾞᴵ;->ʼʼ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔʾ:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﾞʻ:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_11

    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    invoke-virtual {v2, p3}, Lˈˆ/ﾞᴵ;->ʽ(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p3

    goto :goto_4

    :cond_11
    move p3, v5

    :goto_4
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˉˆ:I

    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    if-eq p3, v1, :cond_13

    const/4 v2, 0x2

    if-eq p3, v2, :cond_13

    if-eq p3, v6, :cond_14

    if-ne p3, v3, :cond_12

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    invoke-virtual {p3}, Lˈˆ/ﾞᴵ;->ʽﹳ()I

    move-result v5

    goto :goto_5

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳٴ:Lˈˆ/ﾞᴵ;

    invoke-virtual {p3, p2}, Lˈˆ/ﾞᴵ;->ʾᵎ(Landroid/view/View;)I

    move-result p3

    sub-int v5, v0, p3

    :cond_14
    :goto_5
    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔﹳ:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_15

    const/4 p2, -0x1

    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳᐧ:I

    if-eq p3, p2, :cond_15

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_15

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔﹳ:Ljava/lang/ref/WeakReference;

    :cond_15
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽﹳ:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_16

    goto :goto_6

    :cond_16
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_17
    return v1

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid sheet edge position value: "

    const-string p3, ". Must be 0 or 1."

    invoke-static {v0, p2, p3}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔʾ(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    new-instance p1, Lᵔˉ/ʽ;

    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-direct {p1, p0}, Lᵔˉ/ʽ;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    return-object p1
.end method

.method public final ᵔᵢ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p3, v2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p5, p1, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->measure(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    invoke-virtual {v1, p2}, Lˉـ/ˑﹳ;->ˆʾ(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    if-nez v1, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˆʾ:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˏי:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    iget v3, v1, Lˉـ/ˑﹳ;->ⁱˊ:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lˉـ/ˑﹳ;->ⁱˊ(Landroid/view/View;I)V

    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˆʾ:Z

    xor-int/2addr p1, v2

    return p1
.end method

.method public final ﹳᐧ(I)V
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    const/4 v0, 0x3

    const/4 v1, 0x5

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼᐧ:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽﹳ:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʽﹳ()V

    return-void

    :cond_5
    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ﾞᴵ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lˋᵔ/ᵎˊ;->ˑﹳ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_7

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵎﹶ:Z

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    :cond_2
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->יـ:Landroid/view/VelocityTracker;

    invoke-virtual {p2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˆʾ:Z

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˆʾ:Z

    return v1

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˏי:I

    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˆʾ:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3}, Lˉـ/ˑﹳ;->ʼᐧ(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v1

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˆʾ:Z

    return v1
.end method
