.class public final Lˉˆ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Z

.field public ˑﹳ:Z

.field public ⁱˊ:Landroid/graphics/PorterDuff$Mode;

.field public ﹳٴ:Landroid/content/res/ColorStateList;

.field public final ﾞᴵ:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lˉˆ/יـ;->ﹳٴ:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lˉˆ/יـ;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˉˆ/יـ;->ʽ:Z

    iput-boolean v0, p0, Lˉˆ/יـ;->ˈ:Z

    iput-object p1, p0, Lˉˆ/יـ;->ﾞᴵ:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    iget-object v0, p0, Lˉˆ/יـ;->ﾞᴵ:Landroid/widget/TextView;

    move-object v1, v0

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    sget-object v3, Lᵎﹶ/ﹳٴ;->ˉʿ:[I

    invoke-static {p2, v7, v0, p1, v3}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object v8

    iget-object v0, v8, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v8, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/content/res/TypedArray;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v8, p1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lˉˆ/ٴﹳ;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {v8}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    return-void

    :goto_1
    invoke-virtual {v8}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    throw p1
.end method

.method public ⁱˊ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/יـ;->ﾞᴵ:Landroid/widget/TextView;

    check-cast v0, Lˉˆ/ﹳᐧ;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lˉˆ/יـ;->ʽ:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lˉˆ/יـ;->ˈ:Z

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Lˉˆ/יـ;->ʽ:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lˉˆ/יـ;->ﹳٴ:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v2, p0, Lˉˆ/יـ;->ˈ:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˉˆ/יـ;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    invoke-virtual {v0, v1}, Lˉˆ/ﹳᐧ;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/יـ;->ﾞᴵ:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lˉˆ/יـ;->ʽ:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lˉˆ/יـ;->ˈ:Z

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Lˉˆ/יـ;->ʽ:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lˉˆ/יـ;->ﹳٴ:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v2, p0, Lˉˆ/יـ;->ˈ:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˉˆ/יـ;->ⁱˊ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method
