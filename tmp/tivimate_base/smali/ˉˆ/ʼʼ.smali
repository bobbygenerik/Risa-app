.class public final Lˉˆ/ʼʼ;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Lﹳـ/ﾞʻ;


# static fields
.field public static final ˈٴ:[I


# instance fields
.field public final ʽʽ:Lˉˆ/ʾˋ;

.field public final ʾˋ:Lʻᴵ/ʼʼ;

.field public final ᴵˊ:Lˉˆ/ᴵˑ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010176

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lˉˆ/ʼʼ;->ˈٴ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    invoke-static {p1}, Lˉˆ/ﹳᵢ;->ﹳٴ(Landroid/content/Context;)V

    const v0, 0x7f04004e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    sget-object v2, Lˉˆ/ʼʼ;->ˈٴ:[I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object p1

    iget-object v2, p1, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    new-instance p1, Lʻᴵ/ʼʼ;

    invoke-direct {p1, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, v0}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lˉˆ/ᴵˑ;

    invoke-direct {p1, p0}, Lˉˆ/ᴵˑ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {p1, p2, v0}, Lˉˆ/ᴵˑ;->ﾞᴵ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    new-instance p1, Lˉˆ/ʾˋ;

    invoke-direct {p1, p0}, Lˉˆ/ʾˋ;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lˉˆ/ʼʼ;->ʽʽ:Lˉˆ/ʾˋ;

    invoke-virtual {p1, p2, v0}, Lˉˆ/ʾˋ;->ⁱˊ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p2

    instance-of v0, p2, Landroid/text/method/NumberKeyListener;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isFocusable()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isClickable()Z

    move-result v1

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->isLongClickable()Z

    move-result v2

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v3

    invoke-virtual {p1, p2}, Lˉˆ/ʾˋ;->ﹳٴ(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-virtual {p0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setLongClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

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
    iget-object v0, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

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

    iget-object v0, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˈ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˑﹳ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ʼʼ(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V

    iget-object v1, p0, Lˉˆ/ʼʼ;->ʽʽ:Lˉˆ/ʾˋ;

    invoke-virtual {v1, v0, p1}, Lˉˆ/ʾˋ;->ʽ(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Lﹶᐧ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼʼ;->ʽʽ:Lˉˆ/ʾˋ;

    invoke-virtual {v0, p1}, Lˉˆ/ʾˋ;->ˈ(Z)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼʼ;->ʽʽ:Lˉˆ/ʾˋ;

    invoke-virtual {v0, p1}, Lˉˆ/ʾˋ;->ﹳٴ(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ʼʼ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ﾞʻ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ˉʿ(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lˉˆ/ʼʼ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˉˆ/ᴵˑ;->ᵎﹶ(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
