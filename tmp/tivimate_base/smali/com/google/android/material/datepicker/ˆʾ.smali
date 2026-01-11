.class public final Lcom/google/android/material/datepicker/ˆʾ;
.super Lˋᵔ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ˈ:I

.field public final synthetic ˑﹳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˈ:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    invoke-direct {p0}, Lˋᵔ/ⁱˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 7

    .prologue
    iget v0, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˈ:I

    const/4 v1, -0x1

    iget-object v2, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    iget-object v3, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v3, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    sget v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->ˊˋ:I

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    move v4, v0

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v5, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    const/4 v0, 0x1

    invoke-static {p1, v2, v0, v1, v0}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p2, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    return-void

    :pswitch_0
    iget-object p2, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v3, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p1, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->ˉـ:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void

    :pswitch_1
    iget-object p2, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->ᴵᵔ:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_2
    check-cast v3, Lʻᐧ/ᵢˏ;

    iget-object v0, v3, Lʻᐧ/ᵢˏ;->ᵎﹶ:Lˋˋ/ˎᐧ;

    invoke-virtual {v0, p1, p2}, Lˋˋ/ˎᐧ;->ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V

    iget-object p2, v3, Lʻᐧ/ᵢˏ;->ﾞᴵ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v1

    :cond_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object p1

    instance-of p2, p1, Lʻᐧ/ـˆ;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    check-cast p1, Lʻᐧ/ـˆ;

    invoke-virtual {p1, v1}, Lʻᐧ/ـˆ;->ʼᐧ(I)Landroidx/preference/Preference;

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v3, Lcom/google/android/material/datepicker/ﾞʻ;

    iget-object p1, v3, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱᴵ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x7f13016c

    invoke-virtual {v3, p1}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const p1, 0x7f13016a

    invoke-virtual {v3, p1}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance v0, Lˊˋ/ʽ;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p1}, Lˊˋ/ʽ;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lʻᐧ/ᵢˏ;

    iget-object v0, v0, Lʻᐧ/ᵢˏ;->ᵎﹶ:Lˋˋ/ˎᐧ;

    invoke-virtual {v0, p1, p2, p3}, Lˋˋ/ˎᐧ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
