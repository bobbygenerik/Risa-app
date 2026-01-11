.class public final Lˆᵢ/ˈ;
.super Lˉـ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ᵔﹳ:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    iput-object p1, p0, Lˆᵢ/ˈ;->ᵔﹳ:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0, p2}, Lˉـ/ⁱˊ;-><init>(Lcom/google/android/material/chip/Chip;)V

    return-void
.end method


# virtual methods
.method public final ʼᐧ(IZ)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˆᵢ/ˈ;->ᵔﹳ:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iput-boolean p2, v0, Lcom/google/android/material/chip/Chip;->ˆﾞ:Z

    :cond_0
    iget-object p1, v0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    iget-boolean p2, v0, Lcom/google/android/material/chip/Chip;->ˆﾞ:Z

    iget-object v2, p1, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [I

    const v2, 0x10100a7

    aput v2, p2, v3

    const v2, 0x101009e

    aput v2, p2, v1

    goto :goto_0

    :cond_1
    sget-object p2, Lˆᵢ/ﾞᴵ;->ˆﹳ:[I

    :goto_0
    invoke-virtual {p1, p2}, Lˆᵢ/ﾞᴵ;->ʼˈ([I)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_3
    return-void
.end method

.method public final ˉˆ(ILˊˋ/ᵔᵢ;)V
    .locals 6

    .prologue
    iget-object v0, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, ""

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lˆᵢ/ˈ;->ᵔﹳ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v3

    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v1, 0x7f130143

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->ﹳٴ(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    sget-object v1, Lˊˋ/ʽ;->ˑﹳ:Lˊˋ/ʽ;

    invoke-virtual {p2, v1}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lˊˋ/ᵔᵢ;->ˆʾ(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/google/android/material/chip/Chip;->ᴵˑ:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final ﾞʻ(Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/material/chip/Chip;->ᴵˑ:Landroid/graphics/Rect;

    iget-object v0, p0, Lˆᵢ/ˈ;->ᵔﹳ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->ʽ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lˆᵢ/ﾞᴵ;->ʾˊ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->ˉٴ:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
