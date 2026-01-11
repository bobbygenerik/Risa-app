.class public final Landroidx/leanback/widget/ˆﾞ;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ˆﾞ;->ﹳٴ:I

    iput-object p2, p0, Landroidx/leanback/widget/ˆﾞ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ˆﾞ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Landroidx/leanback/widget/ˆﾞ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ˈʿ;

    iget-object p1, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ˆﾞ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Landroidx/leanback/widget/ˆﾞ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lʽˊ/יـ;

    iget-object p1, p1, Lʽˊ/יـ;->ᵔᵢ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Landroidx/leanback/widget/ˆﾞ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ˈʿ;

    iget-object v0, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, v0, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-object p1, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ()Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
