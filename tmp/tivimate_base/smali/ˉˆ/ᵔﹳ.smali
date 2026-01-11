.class public Lˉˆ/ᵔﹳ;
.super Landroid/widget/CheckBox;
.source "SourceFile"

# interfaces
.implements Lﹳـ/ٴﹶ;
.implements Lﹳـ/ﾞʻ;


# instance fields
.field public final ʽʽ:Lˉˆ/ᴵˑ;

.field public final ʾˋ:Lˉˆ/יـ;

.field public ˈٴ:Lˉˆ/ـˆ;

.field public final ᴵˊ:Lʻᴵ/ʼʼ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lˉˆ/ﹳᵢ;->ﹳٴ(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lˉˆ/יـ;

    invoke-direct {p1, p0}, Lˉˆ/יـ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ᵔﹳ;->ʾˋ:Lˉˆ/יـ;

    invoke-virtual {p1, p2, p3}, Lˉˆ/יـ;->ʽ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lʻᴵ/ʼʼ;

    invoke-direct {p1, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, p3}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lˉˆ/ᴵˑ;

    invoke-direct {p1, p0}, Lˉˆ/ᴵˑ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {p1, p2, p3}, Lˉˆ/ᴵˑ;->ﾞᴵ(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lˉˆ/ᵔﹳ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lˉˆ/ـˆ;->ⁱˊ(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lˉˆ/ـˆ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ˈٴ:Lˉˆ/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ـˆ;

    invoke-direct {v0, p0}, Lˉˆ/ـˆ;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lˉˆ/ᵔﹳ;->ˈٴ:Lˉˆ/ـˆ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ˈٴ:Lˉˆ/ـˆ;

    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

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
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ٴﹶ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˆ/יـ;->ﹳٴ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˆ/יـ;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˈ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˑﹳ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setAllCaps(Z)V

    invoke-direct {p0}, Lˉˆ/ᵔﹳ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ʽ(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˉˆ/ᵔﹳ;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᵔﹳ;->ʾˋ:Lˉˆ/יـ;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lˉˆ/יـ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˉˆ/יـ;->ˑﹳ:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lˉˆ/יـ;->ˑﹳ:Z

    invoke-virtual {p1}, Lˉˆ/יـ;->ﹳٴ()V

    :cond_1
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lˉˆ/ᵔﹳ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ˈ(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lˉˆ/ᵔﹳ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ﹳٴ([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ᴵˊ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lˉˆ/יـ;->ﹳٴ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lˉˆ/יـ;->ʽ:Z

    invoke-virtual {v0}, Lˉˆ/יـ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʾˋ:Lˉˆ/יـ;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lˉˆ/יـ;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lˉˆ/יـ;->ˈ:Z

    invoke-virtual {v0}, Lˉˆ/יـ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ﾞʻ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ᵔﹳ;->ʽʽ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ˉʿ(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method
