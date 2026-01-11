.class public Landroidx/core/view/insets/ProtectionLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final ʽʽ:Ljava/lang/Object;


# instance fields
.field public final ʾˋ:Ljava/util/ArrayList;

.field public ᴵˊ:Lـˏ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/view/insets/ProtectionLayout;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout;->ʾˋ:Ljava/util/ArrayList;

    return-void
.end method

.method private getOrInstallSystemBarStateMonitor()Lـˏ/ˈ;
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b038f

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lـˏ/ˈ;

    if-eqz v3, :cond_0

    check-cast v2, Lـˏ/ˈ;

    return-object v2

    :cond_0
    new-instance v2, Lـˏ/ˈ;

    invoke-direct {v2, v0}, Lـˏ/ˈ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/core/view/insets/ProtectionLayout;->ʽʽ:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_1

    if-gez p2, :cond_2

    :cond_1
    move p2, v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/insets/ProtectionLayout;->ⁱˊ()V

    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/insets/ProtectionLayout;->ﹳٴ()V

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 6

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/core/view/insets/ProtectionLayout;->ⁱˊ()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b038f

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lـˏ/ˈ;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Lـˏ/ˈ;

    iget-object v3, v2, Lـˏ/ˈ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, v2, Lـˏ/ˈ;->ﹳٴ:Lـˏ/ⁱˊ;

    new-instance v4, Landroidx/lifecycle/ᵎⁱ;

    const/16 v5, 0x1c

    invoke-direct {v4, v5, v2}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setProtections(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/insets/ProtectionLayout;->ⁱˊ()V

    invoke-virtual {p0}, Landroidx/core/view/insets/ProtectionLayout;->ﹳٴ()V

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method public final ⁱˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    iget-object v1, v1, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    iget-object v1, v1, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    iget-object v0, v0, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    iget-object v1, v0, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    iget-boolean v2, v0, Lـˏ/ﹳٴ;->ˈ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lـˏ/ﹳٴ;->ˈ:Z

    iget-object v3, v0, Lـˏ/ﹳٴ;->ⁱˊ:Lـˏ/ˈ;

    iget-object v3, v3, Lـˏ/ˈ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-gez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    return-void

    :cond_1
    invoke-static {v0, v1}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    const/4 v1, 0x0

    iget-object v0, v0, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_3
    return-void
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->getOrInstallSystemBarStateMonitor()Lـˏ/ˈ;

    move-result-object v1

    new-instance v2, Lـˏ/ﹳٴ;

    invoke-direct {v2, v1, v0}, Lـˏ/ﹳٴ;-><init>(Lـˏ/ˈ;Ljava/util/ArrayList;)V

    iput-object v2, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    iget-object v0, v0, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->ᴵˊ:Lـˏ/ﹳٴ;

    const/4 v1, 0x0

    iget-object v0, v0, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v0, 0x0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method
