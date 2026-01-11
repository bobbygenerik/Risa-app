.class public final Lˑʿ/ᵔٴ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lˑʿ/יـ;


# instance fields
.field public final ʽ:Landroid/view/ViewGroup;

.field public final ˈ:Z

.field public ˑﹳ:Z

.field public final ⁱˊ:I

.field public final ﹳٴ:Landroid/view/View;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʿ/ᵔٴ;->ﾞᴵ:Z

    iput-object p1, p0, Lˑʿ/ᵔٴ;->ﹳٴ:Landroid/view/View;

    iput p2, p0, Lˑʿ/ᵔٴ;->ⁱˊ:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lˑʿ/ᵔٴ;->ʽ:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʿ/ᵔٴ;->ˈ:Z

    invoke-virtual {p0, p1}, Lˑʿ/ᵔٴ;->ᵔᵢ(Z)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʿ/ᵔٴ;->ﾞᴵ:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    iget-boolean p1, p0, Lˑʿ/ᵔٴ;->ﾞᴵ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lˑʿ/ᵔٴ;->ﹳٴ:Landroid/view/View;

    iget v0, p0, Lˑʿ/ᵔٴ;->ⁱˊ:I

    invoke-static {p1, v0}, Lˑʿ/ٴᵢ;->ⁱˊ(Landroid/view/View;I)V

    iget-object p1, p0, Lˑʿ/ᵔٴ;->ʽ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lˑʿ/ᵔٴ;->ᵔᵢ(Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .prologue
    if-nez p2, :cond_1

    iget-boolean p1, p0, Lˑʿ/ᵔٴ;->ﾞᴵ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lˑʿ/ᵔٴ;->ﹳٴ:Landroid/view/View;

    iget p2, p0, Lˑʿ/ᵔٴ;->ⁱˊ:I

    invoke-static {p1, p2}, Lˑʿ/ٴᵢ;->ⁱˊ(Landroid/view/View;I)V

    iget-object p1, p0, Lˑʿ/ᵔٴ;->ʽ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lˑʿ/ᵔٴ;->ᵔᵢ(Z)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .prologue
    if-eqz p2, :cond_0

    iget-object p1, p0, Lˑʿ/ᵔٴ;->ﹳٴ:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lˑʿ/ٴᵢ;->ⁱˊ(Landroid/view/View;I)V

    iget-object p1, p0, Lˑʿ/ᵔٴ;->ʽ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final ʽ(Lˑʿ/ʻٴ;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final ˈ(Lˑʿ/ʻٴ;)V
    .locals 0

    return-void
.end method

.method public final ˑﹳ(Lˑʿ/ʻٴ;)V
    .locals 0

    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    return-void
.end method

.method public final ᵎﹶ(Lˑʿ/ʻٴ;)V
    .locals 0

    return-void
.end method

.method public final ᵔᵢ(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˑʿ/ᵔٴ;->ˈ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lˑʿ/ᵔٴ;->ˑﹳ:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lˑʿ/ᵔٴ;->ʽ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lˑʿ/ᵔٴ;->ˑﹳ:Z

    invoke-static {v0, p1}, Lˈˆ/ﾞᴵ;->ᴵˑ(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lˑʿ/ᵔٴ;->ᵔᵢ(Z)V

    iget-boolean v0, p0, Lˑʿ/ᵔٴ;->ﾞᴵ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˑʿ/ᵔٴ;->ﹳٴ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lˑʿ/ٴᵢ;->ⁱˊ(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lˑʿ/ᵔٴ;->ᵔᵢ(Z)V

    iget-boolean v0, p0, Lˑʿ/ᵔٴ;->ﾞᴵ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˑʿ/ᵔٴ;->ﹳٴ:Landroid/view/View;

    iget v1, p0, Lˑʿ/ᵔٴ;->ⁱˊ:I

    invoke-static {v0, v1}, Lˑʿ/ٴᵢ;->ⁱˊ(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(Lˑʿ/ʻٴ;)V
    .locals 0

    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    return-void
.end method
