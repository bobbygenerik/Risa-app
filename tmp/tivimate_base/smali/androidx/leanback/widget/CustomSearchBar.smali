.class public final Landroidx/leanback/widget/CustomSearchBar;
.super Landroidx/leanback/widget/SearchBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    .prologue
    const v0, 0x7f0b0248

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-super {p0}, Landroidx/leanback/widget/SearchBar;->onFinishInflate()V

    return-void
.end method

.method public final ʽ()V
    .locals 0

    return-void
.end method

.method public final ˈ()V
    .locals 0

    return-void
.end method

.method public final ⁱˊ()V
    .locals 0

    return-void
.end method
