.class public final Lʽˊ/ʻٴ;
.super Lˉˆ/ˉˆ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:I

.field public final ˊʻ:Landroid/view/accessibility/AccessibilityManager;

.field public ٴʼ:Landroid/content/res/ColorStateList;

.field public final ٴᵢ:Landroid/graphics/Rect;

.field public final ᴵᵔ:Lˉˆ/ʿـ;

.field public ᵎˊ:I

.field public final ᵎⁱ:F

.field public ᵔי:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const v3, 0x7f04004e

    const/4 v6, 0x0

    invoke-static {p1, p2, v3, v6}, Lˋᴵ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lˉˆ/ˉˆ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lʽˊ/ʻٴ;->ٴᵢ:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f140473

    new-array v5, v6, [I

    sget-object v2, Lיﹶ/ﹳٴ;->ʼˎ:[I

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lˈᐧ/ٴﹶ;->ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v1}, Lˉˆ/ˉˆ;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_0
    const/4 p2, 0x3

    const v2, 0x7f0e00fb

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lʽˊ/ʻٴ;->ˉٴ:I

    const p2, 0x7f0704cc

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lʽˊ/ʻٴ;->ᵎⁱ:F

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lʽˊ/ʻٴ;->ٴʼ:Landroid/content/res/ColorStateList;

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lʽˊ/ʻٴ;->ᵎˊ:I

    const/4 v3, 0x5

    invoke-static {v0, p1, v3}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lʽˊ/ʻٴ;->ᵔי:Landroid/content/res/ColorStateList;

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lʽˊ/ʻٴ;->ˊʻ:Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Lˉˆ/ʿـ;

    const v4, 0x7f0403e0

    invoke-direct {v3, v0, v1, v4, v6}, Lˉˆ/ʿـ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    iput-boolean v2, v3, Lˉˆ/ʿـ;->ʿ:Z

    iget-object v0, v3, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iput-object p0, v3, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    iget-object v0, v3, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-virtual {v3, p2}, Lˉˆ/ʿـ;->ʼᐧ(Landroid/widget/ListAdapter;)V

    new-instance p2, Lʽˊ/ˏי;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lʽˊ/ˏי;-><init>(ILjava/lang/Object;)V

    iput-object p2, v3, Lˉˆ/ʿـ;->ˑٴ:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lʽˊ/ʻٴ;->setSimpleItems(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic ﹳٴ(Lʽˊ/ʻٴ;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dismissDropDown()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    invoke-virtual {v0}, Lˉˆ/ʿـ;->dismiss()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void
.end method

.method public getDropDownBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lʽˊ/ʻٴ;->ٴʼ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ⁱˊ()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPopupElevation()F
    .locals 1

    iget v0, p0, Lʽˊ/ʻٴ;->ᵎⁱ:F

    return v0
.end method

.method public getSimpleItemSelectedColor()I
    .locals 1

    iget v0, p0, Lʽˊ/ʻٴ;->ᵎˊ:I

    return v0
.end method

.method public getSimpleItemSelectedRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lʽˊ/ʻٴ;->ᵔי:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ⁱˊ()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    invoke-virtual {v0}, Lˉˆ/ʿـ;->dismiss()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v0, 0x42

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/16 v3, 0x3e

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ⁱˊ()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_6
    return v2
.end method

.method public final onMeasure(II)V
    .locals 13

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ⁱˊ()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    iget-object v6, v5, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    :goto_0
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    add-int/lit8 v6, v6, 0xf

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, v6, -0xf

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    move v9, v7

    move-object v10, v8

    move v7, v2

    :goto_1
    if-ge v9, v6, :cond_4

    invoke-interface {v0, v9}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v11

    if-eq v11, v2, :cond_2

    move-object v10, v8

    move v2, v11

    :cond_2
    invoke-interface {v0, v9, v10, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_3

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v10, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v5, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lʽˊ/ʻٴ;->ٴᵢ:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v7, v0

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v2, v0, v7

    :cond_6
    :goto_2
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_7
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lˉˆ/ʿـ;->ʼᐧ(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˉˆ/ʿـ;->ʼˎ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʽˊ/ʻٴ;->setDropDownBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setDropDownBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lʽˊ/ʻٴ;->ٴʼ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Lˋⁱ/ʼˎ;

    if-eqz v0, :cond_0

    check-cast p1, Lˋⁱ/ʼˎ;

    iget-object v0, p0, Lʽˊ/ʻٴ;->ٴʼ:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iput-object v0, p1, Lˉˆ/ʿـ;->ˋᵔ:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ⁱˊ()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->ʽﹳ()V

    :cond_0
    return-void
.end method

.method public setSimpleItemSelectedColor(I)V
    .locals 0

    .prologue
    iput p1, p0, Lʽˊ/ʻٴ;->ᵎˊ:I

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lʽˊ/ʽﹳ;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lʽˊ/ʽﹳ;

    invoke-virtual {p1}, Lʽˊ/ʽﹳ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setSimpleItemSelectedRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lʽˊ/ʻٴ;->ᵔי:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lʽˊ/ʽﹳ;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lʽˊ/ʽﹳ;

    invoke-virtual {p1}, Lʽˊ/ʽﹳ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setSimpleItems(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʽˊ/ʻٴ;->setSimpleItems([Ljava/lang/String;)V

    return-void
.end method

.method public setSimpleItems([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lʽˊ/ʽﹳ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lʽˊ/ʻٴ;->ˉٴ:I

    invoke-direct {v0, p0, v1, v2, p1}, Lʽˊ/ʽﹳ;-><init>(Lʽˊ/ʻٴ;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lʽˊ/ʻٴ;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final showDropDown()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʽˊ/ʻٴ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    invoke-virtual {v0}, Lˉˆ/ʿـ;->ˑﹳ()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method

.method public final ʽ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ʻٴ;->ˊʻ:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SwitchAccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
