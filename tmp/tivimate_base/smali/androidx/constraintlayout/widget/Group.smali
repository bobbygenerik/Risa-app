.class public Landroidx/constraintlayout/widget/Group;
.super Lʾˋ/ⁱˊ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lʾˋ/ⁱˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lʾˋ/ⁱˊ;->onAttachedToWindow()V

    invoke-virtual {p0}, Lʾˋ/ⁱˊ;->ˈ()V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Lʾˋ/ⁱˊ;->ˈ()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lʾˋ/ⁱˊ;->ˈ()V

    return-void
.end method

.method public final ˆʾ()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʾˋ/ˈ;

    iget-object v1, v0, Lʾˋ/ˈ;->ـᵎ:Lʾᵎ/ˈ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lʾᵎ/ˈ;->ˈʿ(I)V

    iget-object v0, v0, Lʾˋ/ˈ;->ـᵎ:Lʾᵎ/ˈ;

    invoke-virtual {v0, v2}, Lʾᵎ/ˈ;->ᵔי(I)V

    return-void
.end method

.method public final ﾞᴵ(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Lʾˋ/ⁱˊ;->ˑﹳ(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
