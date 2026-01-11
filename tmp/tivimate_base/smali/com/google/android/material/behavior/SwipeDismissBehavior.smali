.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
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
.field public ʽ:Z

.field public ˈ:I

.field public ˑﹳ:F

.field public final ᵎﹶ:Lʽᵢ/ʽ;

.field public ⁱˊ:Z

.field public ﹳٴ:Lˉـ/ˑﹳ;

.field public ﾞᴵ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ˈ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ˑﹳ:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﾞᴵ:F

    new-instance v0, Lʽᵢ/ʽ;

    invoke-direct {v0, p0}, Lʽᵢ/ʽ;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ᵎﹶ:Lʽᵢ/ʽ;

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/high16 p1, 0x100000

    invoke-static {p2, p1}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {p2, p3}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﹳᐧ(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lˊˋ/ʽ;->ʼˎ:Lˊˋ/ʽ;

    new-instance v0, Lﹳי/ʽ;

    invoke-direct {v0, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, p1, v0}, Lˋᵔ/ᵎˊ;->ٴﹶ(Landroid/view/View;Lˊˋ/ʽ;Lˊˋ/ﹳᐧ;)V

    :cond_0
    return p3
.end method

.method public final ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﹳٴ:Lˉـ/ˑﹳ;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ʽ:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﹳٴ:Lˉـ/ˑﹳ;

    invoke-virtual {p1, p2}, Lˉـ/ˑﹳ;->ˆʾ(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public ﹳᐧ(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public ﾞᴵ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ⁱˊ:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ⁱˊ:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉˆ(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ⁱˊ:Z

    :goto_0
    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﹳٴ:Lˉـ/ˑﹳ;

    if-nez p2, :cond_2

    new-instance p2, Lˉـ/ˑﹳ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ᵎﹶ:Lʽᵢ/ʽ;

    invoke-direct {p2, v0, p1, v1}, Lˉـ/ˑﹳ;-><init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lˈˊ/ᵔʾ;)V

    iput-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﹳٴ:Lˉـ/ˑﹳ;

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ʽ:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﹳٴ:Lˉـ/ˑﹳ;

    invoke-virtual {p1, p3}, Lˉـ/ˑﹳ;->ʼᐧ(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v3
.end method
