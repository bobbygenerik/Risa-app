.class public Lcom/google/android/material/theme/MaterialComponentsViewInflater;
.super Lᵔᵢ/ʽʽ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lᵔᵢ/ʽʽ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᵔﹳ;
    .locals 1

    new-instance v0, Lⁱ/ʽ;

    invoke-direct {v0, p1, p2}, Lⁱ/ʽ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final ˈ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᴵˊ;
    .locals 8

    .prologue
    new-instance v0, Lᵎʾ/ﹳٴ;

    const v1, 0x7f140640

    const v5, 0x7f04050c

    invoke-static {p1, p2, v5, v1}, Lˋᴵ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lˉˆ/ᴵˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 p1, 0x0

    new-array v7, p1, [I

    sget-object v4, Lיﹶ/ﹳٴ;->ﹳᐧ:[I

    const v6, 0x7f140640

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lˈᐧ/ٴﹶ;->ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2, p2, p1}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lᵎʾ/ﹳٴ;->ˊʻ:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᐧﾞ;
    .locals 8

    .prologue
    new-instance v0, Lˋˈ/ﹳٴ;

    const v1, 0x1010084

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Lˋᴵ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2, v1}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f040627

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lˈˋ/ʾˊ;->ᵢˏ(Landroid/content/Context;IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v5, Lיﹶ/ﹳٴ;->ʻٴ:[I

    invoke-virtual {v3, p2, v5, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x2

    filled-new-array {v4, v7}, [I

    move-result-object v4

    invoke-static {p1, v6, v4}, Lˋˈ/ﹳٴ;->ᵎﹶ(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p2, v5, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v4, :cond_1

    sget-object p1, Lיﹶ/ﹳٴ;->ʽﹳ:[I

    invoke-virtual {v3, p2, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x4

    filled-new-array {v7, v1}, [I

    move-result-object v1

    invoke-static {p2, p1, v1}, Lˋˈ/ﹳٴ;->ᵎﹶ(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p2, :cond_1

    invoke-virtual {v0, p2}, Lˉˆ/ᐧﾞ;->setLineHeight(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ʼᐧ;
    .locals 1

    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final ﹳٴ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ˉˆ;
    .locals 1

    new-instance v0, Lʽˊ/ʻٴ;

    invoke-direct {v0, p1, p2}, Lʽˊ/ʻٴ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
