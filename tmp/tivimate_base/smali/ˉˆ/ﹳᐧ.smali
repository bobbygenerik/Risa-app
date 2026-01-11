.class public final Lˉˆ/ﹳᐧ;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"

# interfaces
.implements Lﹳـ/ﾞʻ;


# instance fields
.field public final ʽʽ:Lˉˆ/ᴵˑ;

.field public final ʾˋ:Lˉˆ/יـ;

.field public ˈٴ:Lˉˆ/ـˆ;

.field public final ᴵˊ:Lʻᴵ/ʼʼ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    invoke-static {p1}, Lˉˆ/ﹳᵢ;->ﹳٴ(Landroid/content/Context;)V

    const v6, 0x7f0400f1

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lˉˆ/ᴵˑ;

    invoke-direct {p1, p0}, Lˉˆ/ᴵˑ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {p1, p2, v6}, Lˉˆ/ᴵˑ;->ﾞᴵ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    new-instance p1, Lʻᴵ/ʼʼ;

    invoke-direct {p1, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, v6}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lˉˆ/יـ;

    invoke-direct {p1, p0}, Lˉˆ/יـ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ﹳᐧ;->ʾˋ:Lˉˆ/יـ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v3, Lᵎﹶ/ﹳٴ;->ﾞʻ:[I

    invoke-static {v6, v0, p1, p2, v3}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object p1

    iget-object v1, p1, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/content/res/TypedArray;

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {v7, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lˉˆ/ﹳᐧ;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lˉˆ/ﹳᐧ;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/4 p2, 0x2

    invoke-virtual {v7, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p2, 0x3

    invoke-virtual {v7, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {v7, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lˉˆ/ٴﹳ;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    invoke-direct {p0}, Lˉˆ/ﹳᐧ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object p1

    invoke-virtual {p1, v4, v6}, Lˉˆ/ـˆ;->ⁱˊ(Landroid/util/AttributeSet;I)V

    return-void

    :goto_1
    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    throw p2
.end method

.method private getEmojiTextViewHelper()Lˉˆ/ـˆ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ˈٴ:Lˉˆ/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ـˆ;

    invoke-direct {v0, p0}, Lˉˆ/ـˆ;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lˉˆ/ﹳᐧ;->ˈٴ:Lˉˆ/ـˆ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ˈٴ:Lˉˆ/ـˆ;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_1
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lˉˆ/יـ;->ⁱˊ()V

    :cond_2
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckedTextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Lﹳٴ/ﹳٴ;->ᴵˑ(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

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
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ٴﹶ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˆ/יـ;->ﹳٴ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˆ/יـ;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˈ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˑﹳ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ʼʼ(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lˉˆ/ﹳᐧ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ʽ(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˉˆ/ﹳᐧ;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ﹳᐧ;->ʾˋ:Lˉˆ/יـ;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lˉˆ/יـ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˉˆ/יـ;->ˑﹳ:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lˉˆ/יـ;->ˑﹳ:Z

    invoke-virtual {p1}, Lˉˆ/יـ;->ⁱˊ()V

    :cond_1
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p1, p0}, Lﹳٴ/ﹳٴ;->ˉـ(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lˉˆ/ﹳᐧ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ˈ(Z)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lˉˆ/יـ;->ﹳٴ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lˉˆ/יـ;->ʽ:Z

    invoke-virtual {v0}, Lˉˆ/יـ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lˉˆ/יـ;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lˉˆ/יـ;->ˈ:Z

    invoke-virtual {v0}, Lˉˆ/יـ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ﾞʻ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ˉʿ(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lˉˆ/ﹳᐧ;->ʽʽ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˉˆ/ᴵˑ;->ᵎﹶ(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
