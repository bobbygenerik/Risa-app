.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lˉᵢ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v0, Lיﹶ/ﹳٴ;->ʼʼ:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->ⁱˊ:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static יـ(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ˈ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lʽʽ/ˈ;

    iget-object p1, p1, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    instance-of p1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->ⁱˊ:I

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v0, p3}, Lᴵˋ/ˊʻ;->ˑﹳ(III)I

    move-result p3

    :goto_0
    sub-int/2addr p1, p3

    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    return v0
.end method

.method public final ᵔᵢ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_0

    const/4 p4, -0x2

    if-ne p3, p4, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆʾ(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->יـ(Ljava/util/ArrayList;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ⁱˊ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final ﹳᐧ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆʾ(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->יـ(Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔﹳ(Landroid/view/View;I)V

    return-void
.end method

.method public final ﾞʻ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆʾ(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->יـ(Ljava/util/ArrayList;)V

    return-void
.end method
