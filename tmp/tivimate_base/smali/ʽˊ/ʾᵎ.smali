.class public final Lʽˊ/ʾᵎ;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public ʽʽ:Ljava/lang/CharSequence;

.field public final ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

.field public final ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

.field public ˉٴ:Landroid/widget/ImageView$ScaleType;

.field public ˊʻ:Landroid/graphics/PorterDuff$Mode;

.field public ٴʼ:Z

.field public ٴᵢ:I

.field public final ᴵˊ:Lˉˆ/ᐧﾞ;

.field public ᴵᵔ:Landroid/content/res/ColorStateList;

.field public ᵎⁱ:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/parse/ٴʼ;)V
    .locals 10

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lʽˊ/ʾᵎ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800003

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0035

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, p0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v2, Lˉˆ/ᐧﾞ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lˉᵎ/ⁱˊ;->ᴵᵔ(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    iget-object v5, p0, Lʽˊ/ʾᵎ;->ᵎⁱ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v5}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iput-object v6, p0, Lʽˊ/ʾᵎ;->ᵎⁱ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v1, v6}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iget-object v5, p2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/TypedArray;

    const/16 v7, 0x46

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p2, v7}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lʽˊ/ʾᵎ;->ᴵᵔ:Landroid/content/res/ColorStateList;

    :cond_1
    const/16 v7, 0x47

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v7, v6}, Lˈᐧ/ٴﹶ;->ﾞᴵ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, p0, Lʽˊ/ʾᵎ;->ˊʻ:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    const/16 v7, 0x43

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    invoke-virtual {p2, v7}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lʽˊ/ʾᵎ;->ʽ(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x42

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lʽˊ/ʾᵎ;->ⁱˊ(Ljava/lang/CharSequence;)V

    :cond_3
    const/16 v7, 0x41

    invoke-virtual {v5, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0704eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/16 v8, 0x44

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    if-ltz v7, :cond_9

    iget v8, p0, Lʽˊ/ʾᵎ;->ٴᵢ:I

    if-eq v7, v8, :cond_5

    iput v7, p0, Lʽˊ/ʾᵎ;->ٴᵢ:I

    invoke-virtual {v1, v7}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_5
    const/16 v7, 0x45

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Lˑˊ/ﹳٴ;->ⁱˊ(I)Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, p0, Lʽˊ/ʾᵎ;->ˉٴ:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_6
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b03a3

    invoke-virtual {v2, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    const/16 p1, 0x3d

    invoke-virtual {v5, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/16 p1, 0x3e

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    const/16 p1, 0x3c

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    move-object v6, p1

    :goto_0
    iput-object v6, p0, Lʽˊ/ʾᵎ;->ʽʽ:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lʽˊ/ʾᵎ;->ﾞᴵ()V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lʻʿ/ˈ;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p0}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnFocusableChangedListener(Lˈᐧ/ﹳٴ;)V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startIconSize cannot be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lʽˊ/ʾᵎ;->ˑﹳ()V

    return-void
.end method

.method public final ʽ(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lʽˊ/ʾᵎ;->ᴵᵔ:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lʽˊ/ʾᵎ;->ˊʻ:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, p0, Lʽˊ/ʾᵎ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2, v0, p1, v1}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lʽˊ/ʾᵎ;->ˈ(Z)V

    iget-object p1, p0, Lʽˊ/ʾᵎ;->ᴵᵔ:Landroid/content/res/ColorStateList;

    invoke-static {v2, v0, p1}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lʽˊ/ʾᵎ;->ˈ(Z)V

    iget-object p1, p0, Lʽˊ/ʾᵎ;->ᵎⁱ:Landroid/view/View$OnLongClickListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0, p1}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lʽˊ/ʾᵎ;->ᵎⁱ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0, v1}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v1}, Lʽˊ/ʾᵎ;->ⁱˊ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˈ(Z)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lʽˊ/ʾᵎ;->ˑﹳ()V

    invoke-virtual {p0}, Lʽˊ/ʾᵎ;->ﾞᴵ()V

    :cond_2
    return-void
.end method

.method public final ˑﹳ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lʽˊ/ʾᵎ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070468

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final ⁱˊ(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lʽˊ/ʾᵎ;->ᵎⁱ:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, v1, p1}, Lˑˊ/ﹳٴ;->ﾞʻ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final ﹳٴ()I
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽˊ/ʾᵎ;->ʽʽ:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lʽˊ/ʾᵎ;->ٴʼ:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lʽˊ/ʾᵎ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->יـ()Z

    return-void
.end method
