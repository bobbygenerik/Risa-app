.class public abstract Lˉᵢ/ﹳٴ;
.super Lʽʽ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ﹳٴ:Landroidx/leanback/widget/יﹳ;


# virtual methods
.method public ᵎﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lˉᵢ/ﹳٴ;->ﹳᐧ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lˉᵢ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/יﹳ;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/leanback/widget/יﹳ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, p0, Lˉᵢ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/יﹳ;

    :cond_0
    iget-object p1, p0, Lˉᵢ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/יﹳ;

    iget-object p2, p1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/יﹳ;->ᴵˊ:I

    iget-object p1, p0, Lˉᵢ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/יﹳ;

    iget-object p2, p1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iget v0, p1, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    sub-int/2addr p3, v0

    rsub-int/lit8 p3, p3, 0x0

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget p1, p1, Landroidx/leanback/widget/יﹳ;->ᴵˊ:I

    sub-int/2addr p3, p1

    rsub-int/lit8 p1, p3, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public ﹳᐧ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔﹳ(Landroid/view/View;I)V

    return-void
.end method
