.class public Landroidx/leanback/widget/NonOverlappingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Ljava/util/ArrayList;

.field public ʾˋ:Z

.field public ᴵˊ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ʾˋ:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ʽʽ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ᴵˊ:Z

    if-eqz v0, :cond_3

    move-object v0, p1

    :goto_0
    const/4 v1, -0x1

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    .prologue
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ʽʽ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ʾˋ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_7

    :cond_0
    move v0, v2

    :goto_0
    :try_start_2
    iput-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ᴵˊ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v0, v4, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_2
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    :try_start_4
    invoke-super/range {v3 .. v8}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean p1, v3, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ᴵˊ:Z

    if-eqz p1, :cond_4

    move p1, v2

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    move p2, v2

    :goto_4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-super {p0, p3}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_5
    move-object p1, v0

    goto :goto_7

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    iget-boolean p1, v3, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ᴵˊ:Z

    if-eqz p1, :cond_5

    iput-boolean v2, v3, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ᴵˊ:Z

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    return-void

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_5

    :goto_7
    iget-boolean p2, v3, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ᴵˊ:Z

    if-eqz p2, :cond_6

    iput-boolean v2, v3, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ᴵˊ:Z

    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_6
    throw p1
.end method

.method public setFocusableViewAvailableFixEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->ʾˋ:Z

    return-void
.end method
