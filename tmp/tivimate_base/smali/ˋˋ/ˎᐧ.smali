.class public final Lˋˋ/ˎᐧ;
.super Lˋᵔ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈ:Lˋˋ/יﹳ;

.field public final ˑﹳ:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Lˋˋ/יﹳ;)V
    .locals 1

    invoke-direct {p0}, Lˋᵔ/ⁱˊ;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lˋˋ/ˎᐧ;->ˈ:Lˋˋ/יﹳ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ʼˎ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ʼˎ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 4

    .prologue
    iget-object v0, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lˋˋ/ˎᐧ;->ˈ:Lˋˋ/יﹳ;

    iget-object v2, v1, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ()Z

    move-result v2

    iget-object v3, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lˋˋ/ʻᵎ;->ᴵʼ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V

    iget-object v1, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋᵔ/ⁱˊ;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lˋᵔ/ⁱˊ;->ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V

    return-void

    :cond_0
    invoke-virtual {v3, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_1
    invoke-virtual {v3, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public final ˑﹳ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ˑﹳ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ˑﹳ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˈ:Lˋˋ/יﹳ;

    iget-object v1, v0, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lˋˋ/יﹳ;->ˈ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋᵔ/ⁱˊ;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p1

    iget-object p1, p1, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final ᵔᵢ(Landroid/view/View;I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ᵔᵢ(Landroid/view/View;I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ᵔᵢ(Landroid/view/View;I)V

    return-void
.end method

.method public final ⁱˊ(Landroid/view/View;)Landroidx/leanback/widget/ˉˆ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˋᵔ/ⁱˊ;->ⁱˊ(Landroid/view/View;)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lˋᵔ/ⁱˊ;->ⁱˊ(Landroid/view/View;)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ﹳٴ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final ﾞᴵ(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ⁱˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ﾞᴵ(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
