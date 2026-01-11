.class public Lˉˆ/ʼᐧ;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Lﹳـ/ﾞʻ;


# instance fields
.field public ʽʽ:Lˉˆ/ـˆ;

.field public final ʾˋ:Lʻᴵ/ʼʼ;

.field public final ᴵˊ:Lˉˆ/ᴵˑ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lˉˆ/ﹳᵢ;->ﹳٴ(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lʻᴵ/ʼʼ;

    invoke-direct {p1, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, p3}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lˉˆ/ᴵˑ;

    invoke-direct {p1, p0}, Lˉˆ/ᴵˑ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {p1, p2, p3}, Lˉˆ/ᴵˑ;->ﾞᴵ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    invoke-direct {p0}, Lˉˆ/ʼᐧ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lˉˆ/ـˆ;->ⁱˊ(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lˉˆ/ـˆ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʽʽ:Lˉˆ/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ـˆ;

    invoke-direct {v0, p0}, Lˉˆ/ـˆ;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lˉˆ/ʼᐧ;->ʽʽ:Lˉˆ/ـˆ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʽʽ:Lˉˆ/ـˆ;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ˑﹳ:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ˈ:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ʽ:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget-object v0, v0, Lˉˆ/ˊᵔ;->ﾞᴵ:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ﹳٴ:I

    return v0

    :cond_2
    return v1
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Lﹳٴ/ﹳٴ;->ᴵˑ(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ˆʾ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ٴﹶ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˈ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˑﹳ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object p2, p1, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p2, :cond_0

    sget-boolean p3, Lˉˆ/ˆˎ;->ʽ:Z

    if-nez p3, :cond_0

    iget-object p2, p2, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    invoke-virtual {p2}, Lˉˆ/ˊᵔ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    sget-boolean p2, Lˉˆ/ˆˎ;->ʽ:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lˉˆ/ˊᵔ;->ﾞᴵ()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lˉˆ/ˊᵔ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-direct {p0}, Lˉˆ/ʼᐧ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ʽ(Z)V

    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lˉˆ/ᴵˑ;->ʼˎ(IIII)V

    :cond_1
    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lˉˆ/ᴵˑ;->ˆʾ([II)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ٴﹶ(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p1, p0}, Lﹳٴ/ﹳٴ;->ˉـ(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lˉˆ/ʼᐧ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ˈ(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lˉˆ/ʼᐧ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ﹳٴ([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ﹳٴ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼᐧ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ﾞʻ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ˉʿ(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˉˆ/ᴵˑ;->ᵎﹶ(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    return-void

    :cond_0
    iget-object v1, p0, Lˉˆ/ʼᐧ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lˉˆ/ˊᵔ;->ﾞᴵ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1, p2}, Lˉˆ/ˊᵔ;->ᵎﹶ(IF)V

    :cond_1
    return-void
.end method
