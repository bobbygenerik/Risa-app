.class public Lˋˋ/יﹳ;
.super Lˋᵔ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈ:Landroidx/recyclerview/widget/RecyclerView;

.field public final ˑﹳ:Lˋˋ/ˎᐧ;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lˋᵔ/ⁱˊ;-><init>()V

    iput-object p1, p0, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lˋˋ/יﹳ;->ˆʾ()Lˋᵔ/ⁱˊ;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lˋˋ/ˎᐧ;

    if-eqz v0, :cond_0

    check-cast p1, Lˋˋ/ˎᐧ;

    iput-object p1, p0, Lˋˋ/יﹳ;->ˑﹳ:Lˋˋ/ˎᐧ;

    return-void

    :cond_0
    new-instance p1, Lˋˋ/ˎᐧ;

    invoke-direct {p1, p0}, Lˋˋ/ˎᐧ;-><init>(Lˋˋ/יﹳ;)V

    iput-object p1, p0, Lˋˋ/יﹳ;->ˑﹳ:Lˋˋ/ˎᐧ;

    return-void
.end method


# virtual methods
.method public final ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p1

    invoke-virtual {p1, p2}, Lˋˋ/ʻᵎ;->ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public ˆʾ()Lˋᵔ/ⁱˊ;
    .locals 1

    iget-object v0, p0, Lˋˋ/יﹳ;->ˑﹳ:Lˋˋ/ˎᐧ;

    return-object v0
.end method

.method public final ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p1

    iget-object v0, p1, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p1, v1, v0, p2}, Lˋˋ/ʻᵎ;->ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V

    :cond_0
    return-void
.end method

.method public final ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    invoke-super {p0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lˋˋ/ʻᵎ;->ˑ(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
