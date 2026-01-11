.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lˉᵢ/ﹳٴ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "L\u02c9\u1d62/\ufe73\u0674;"
    }
.end annotation


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ⁱˊ:Z

.field public ﾞᴵ:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˑﹳ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ʼᐧ(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final synthetic ˆʾ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ˉʿ(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ˉˆ(Landroid/view/View;II)Z
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ٴﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ᵎﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ᵔʾ(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ᵔᵢ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˈ:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˈ:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ﾞᴵ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_9

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ⁱˊ:Z

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ﾞᴵ:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ﾞᴵ:Landroid/view/VelocityTracker;

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ﾞᴵ:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ⁱˊ:Z

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v3

    :cond_9
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ﾞᴵ:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ﾞᴵ:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ﾞᴵ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˑﹳ:I

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˑﹳ:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ⁱˊ:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˈ:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˑﹳ:I

    if-le p2, v2, :cond_3

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ˈ:I

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ﾞᴵ:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ʽ:I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
