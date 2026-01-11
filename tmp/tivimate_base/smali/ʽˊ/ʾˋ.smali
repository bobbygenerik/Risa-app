.class public final Lʽˊ/ʾˋ;
.super Lˋᵔ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈ:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0}, Lˋᵔ/ⁱˊ;-><init>()V

    iput-object p1, p0, Lʽˊ/ʾˋ;->ˈ:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public final ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, v0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v3, v0, Lʽˊ/ʾˋ;->ˈ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    iget-boolean v12, v3, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v14, 0x1

    :goto_2
    if-nez v11, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const-string v5, ""

    :goto_3
    iget-object v11, v3, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v15, v11, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v2, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    invoke-virtual {v2, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    iget-object v11, v11, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :goto_4
    const-string v11, ", "

    if-nez v10, :cond_5

    invoke-virtual {v1, v4}, Lˊˋ/ᵔᵢ;->יـ(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v1, v5}, Lˊˋ/ᵔᵢ;->יـ(Ljava/lang/CharSequence;)V

    if-nez v12, :cond_7

    if-eqz v7, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lˊˋ/ᵔᵢ;->יـ(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v1, v7}, Lˊˋ/ᵔᵢ;->יـ(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v7, v12, :cond_8

    invoke-virtual {v1, v5}, Lˊˋ/ᵔᵢ;->ᵔʾ(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    if-nez v10, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    invoke-virtual {v1, v5}, Lˊˋ/ᵔᵢ;->יـ(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-virtual {v1, v10}, Lˊˋ/ᵔᵢ;->ﹳᐧ(Z)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v8, :cond_b

    goto :goto_7

    :cond_b
    const/4 v8, -0x1

    :goto_7
    invoke-virtual {v2, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    if-eqz v14, :cond_d

    if-nez v13, :cond_c

    goto :goto_8

    :cond_c
    move-object v6, v9

    :goto_8
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v4, v4, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    if-eqz v4, :cond_e

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    :cond_e
    iget-object v2, v3, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v2}, Lʽˊ/ʼᐧ;->ⁱˊ()Lʽˊ/ᵔﹳ;

    move-result-object v2

    invoke-virtual {v2, v1}, Lʽˊ/ᵔﹳ;->ˉʿ(Lˊˋ/ᵔᵢ;)V

    return-void
.end method

.method public final ˑﹳ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lˋᵔ/ⁱˊ;->ˑﹳ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lʽˊ/ʾˋ;->ˈ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {p1}, Lʽˊ/ʼᐧ;->ⁱˊ()Lʽˊ/ᵔﹳ;

    move-result-object p1

    invoke-virtual {p1, p2}, Lʽˊ/ᵔﹳ;->ᵔʾ(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
