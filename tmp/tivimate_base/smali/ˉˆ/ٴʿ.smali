.class public final Lˉˆ/ٴʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔʾ/ʽﹳ;


# instance fields
.field public final synthetic ʽʽ:Landroidx/appcompat/widget/Toolbar;

.field public ʾˋ:Lᵔʾ/ˆʾ;

.field public ᴵˊ:Lᵔʾ/ﾞʻ;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ٴʿ;->ʽʽ:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Landroid/content/Context;Lᵔʾ/ˆʾ;)V
    .locals 1

    .prologue
    iget-object p1, p0, Lˉˆ/ٴʿ;->ʾˋ:Lᵔʾ/ˆʾ;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lᵔʾ/ˆʾ;->ˈ(Lᵔʾ/ﾞʻ;)Z

    :cond_0
    iput-object p2, p0, Lˉˆ/ٴʿ;->ʾˋ:Lᵔʾ/ˆʾ;

    return-void
.end method

.method public final ʽ(Lᵔʾ/ˆʾ;Z)V
    .locals 0

    return-void
.end method

.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˉˆ/ٴʿ;->ʾˋ:Lᵔʾ/ˆʾ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lˉˆ/ٴʿ;->ʾˋ:Lᵔʾ/ˆʾ;

    invoke-virtual {v2, v1}, Lᵔʾ/ˆʾ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    invoke-virtual {p0, v0}, Lˉˆ/ٴʿ;->ٴﹶ(Lᵔʾ/ﾞʻ;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final ٴﹶ(Lᵔʾ/ﾞʻ;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lˉˆ/ٴʿ;->ʽʽ:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    instance-of v2, v1, Lˉʿ/ⁱˊ;

    if-eqz v2, :cond_0

    check-cast v1, Lˉʿ/ⁱˊ;

    check-cast v1, Lᵔʾ/ᵔʾ;

    iget-object v1, v1, Lᵔʾ/ᵔʾ;->ʾˋ:Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lᵔʾ/ﾞʻ;->ʽʽ:Z

    iget-object p1, p1, Lᵔʾ/ﾞʻ;->ᵔʾ:Lᵔʾ/ˆʾ;

    invoke-virtual {p1, v1}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ˏי()V

    return v4
.end method

.method public final ᵎﹶ(Lᵔʾ/ʾˋ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ⁱˊ(Lᵔʾ/ﾞʻ;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lˉˆ/ٴʿ;->ʽʽ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ʽ()V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lᵔʾ/ﾞʻ;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    iput-object p1, p0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v1, v0, :cond_3

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->ᵔᵢ()Lˉˆ/ﾞˏ;

    move-result-object v1

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->ᵔٴ:I

    and-int/lit8 v3, v3, 0x70

    const v4, 0x800003

    or-int/2addr v3, v4

    iput v3, v1, Lˉˆ/ﾞˏ;->ﹳٴ:I

    iput v2, v1, Lˉˆ/ﾞˏ;->ⁱˊ:I

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lˉˆ/ﾞˏ;

    iget v5, v5, Lˉˆ/ﾞˏ;->ⁱˊ:I

    if-eq v5, v2, :cond_4

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v4, v5, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-boolean v3, p1, Lᵔʾ/ﾞʻ;->ʽʽ:Z

    iget-object p1, p1, Lᵔʾ/ﾞʻ;->ᵔʾ:Lᵔʾ/ˆʾ;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    iget-object p1, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    instance-of v1, p1, Lˉʿ/ⁱˊ;

    if-eqz v1, :cond_6

    check-cast p1, Lˉʿ/ⁱˊ;

    check-cast p1, Lᵔʾ/ᵔʾ;

    iget-object p1, p1, Lᵔʾ/ᵔʾ;->ʾˋ:Landroid/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ˏי()V

    return v3
.end method
