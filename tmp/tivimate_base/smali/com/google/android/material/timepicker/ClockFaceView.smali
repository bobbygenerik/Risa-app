.class Lcom/google/android/material/timepicker/ClockFaceView;
.super Lcom/google/android/material/timepicker/ʼˎ;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/ᵎﹶ;


# instance fields
.field public final ʻᵎ:[Ljava/lang/String;

.field public final ʿ:Lcom/google/android/material/timepicker/ˈ;

.field public final ʿᵢ:[I

.field public ˈˏ:Lcom/google/android/material/timepicker/ٴﹶ;

.field public final ˈⁱ:Landroid/graphics/RectF;

.field public final ˉـ:Landroid/util/SparseArray;

.field public ˊᵔ:F

.field public final ˏᵢ:I

.field public final ـˏ:Lcom/google/android/material/timepicker/ClockHandView;

.field public final ـﹶ:Landroid/content/res/ColorStateList;

.field public final ᐧᴵ:I

.field public final ᐧﾞ:I

.field public final ᴵʼ:I

.field public final ᴵˑ:Landroid/graphics/Rect;

.field public final ᵎᵔ:[F

.field public final ﹳـ:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/ʼˎ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ﹳـ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ˈⁱ:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ᴵˑ:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ˉـ:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ᵎᵔ:[F

    sget-object v1, Lיﹶ/ﹳٴ;->ˈ:[I

    const v2, 0x7f140683

    const v3, 0x7f040415

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ـﹶ:Landroid/content/res/ColorStateList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0e00ed

    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v4, 0x7f0b026f

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ـˏ:Lcom/google/android/material/timepicker/ClockHandView;

    const v5, 0x7f070450

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ᐧﾞ:I

    const v5, 0x10100a1

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    filled-new-array {v5, v5, v3}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʿᵢ:[I

    iget-object v3, v4, Lcom/google/android/material/timepicker/ClockHandView;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f06040a

    invoke-static {p1, v3}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/ʼˎ;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v3, Lcom/google/android/material/timepicker/ⁱˊ;

    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/ⁱˊ;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/google/android/material/timepicker/ʽ;

    invoke-direct {p1}, Landroid/view/ViewOutlineProvider;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance p1, Lcom/google/android/material/timepicker/ˈ;

    invoke-direct {p1, p0}, Lcom/google/android/material/timepicker/ˈ;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʿ:Lcom/google/android/material/timepicker/ˈ;

    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʻᵎ:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v3, v4

    move v5, v3

    :goto_1
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʻᵎ:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʻᵎ:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    const v6, 0x7f0e00ec

    invoke-virtual {p1, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʻᵎ:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0b027f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    div-int/lit8 v7, v3, 0xc

    add-int/2addr v7, v2

    const v8, 0x7f0b0270

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-le v7, v2, :cond_3

    move v5, v2

    :cond_3
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʿ:Lcom/google/android/material/timepicker/ˈ;

    invoke-static {v6, v7}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ـﹶ:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ـˏ:Lcom/google/android/material/timepicker/ClockHandView;

    iget-boolean p2, p1, Lcom/google/android/material/timepicker/ClockHandView;->ᴵˊ:Z

    if-eqz p2, :cond_5

    if-nez v5, :cond_5

    iput v2, p1, Lcom/google/android/material/timepicker/ClockHandView;->ˆﾞ:I

    :cond_5
    iput-boolean v5, p1, Lcom/google/android/material/timepicker/ClockHandView;->ᴵˊ:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const p1, 0x7f07046d

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ᐧᴵ:I

    const p1, 0x7f07046e

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ˏᵢ:I

    const p1, 0x7f070457

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ᴵʼ:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʻᵎ:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ˉـ:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0b027f

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v0, v3, :cond_2

    goto :goto_3

    :cond_2
    const/16 v1, 0x42

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    add-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʻᵎ:[Ljava/lang/String;

    array-length v4, v3

    add-int/2addr v1, v4

    array-length v3, v3

    rem-int/2addr v1, v3

    goto :goto_2

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ʻᵎ:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v1, v3

    :goto_2
    if-eq v1, v0, :cond_4

    div-int/lit8 p1, v1, 0xc

    add-int/2addr p1, v2

    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ـˏ:Lcom/google/android/material/timepicker/ClockHandView;

    iget v0, p2, Lcom/google/android/material/timepicker/ClockHandView;->ˆﾞ:I

    if-eq p1, v0, :cond_3

    iput p1, p2, Lcom/google/android/material/timepicker/ClockHandView;->ˆﾞ:I

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_3
    rem-int/lit8 v1, v1, 0xc

    int-to-float p1, v1

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/ClockHandView;->ⁱˊ(F)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->ᵔʾ()V

    return v2

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_5
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ˈˏ:Lcom/google/android/material/timepicker/ٴﹶ;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/google/android/material/timepicker/ٴﹶ;->ﹳٴ:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object p1, p1, Lcom/google/android/material/timepicker/TimePickerView;->ˋᵔ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    :cond_6
    return v2

    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->ᵔʾ()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ᴵʼ:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ᐧᴵ:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    iget p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ˏᵢ:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-super {p0, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public final ˉʿ()V
    .locals 12

    .prologue
    new-instance v0, Lʾˋ/ˉʿ;

    invoke-direct {v0}, Lʾˋ/ˉʿ;-><init>()V

    invoke-virtual {v0, p0}, Lʾˋ/ˉʿ;->ⁱˊ(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const v5, 0x7f0b00ca

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v5, :cond_3

    const-string v5, "skip"

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const v5, 0x7f0b0270

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/google/android/material/timepicker/ʼˎ;->ˊˋ:I

    int-to-float v3, v3

    const v6, 0x3f28f5c3    # 0.66f

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/google/android/material/timepicker/ʼˎ;->ˊˋ:I

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lʾˋ/ˉʿ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lʾˋ/ᵔᵢ;

    invoke-direct {v11}, Lʾˋ/ᵔᵢ;-><init>()V

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʾˋ/ᵔᵢ;

    iget-object v8, v8, Lʾˋ/ᵔᵢ;->ˈ:Lʾˋ/ʼˎ;

    iput v5, v8, Lʾˋ/ʼˎ;->ᵢˏ:I

    iput v3, v8, Lʾˋ/ʼˎ;->ʾˋ:I

    iput v7, v8, Lʾˋ/ʼˎ;->ᴵˊ:F

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x43b40000    # 360.0f

    div-float/2addr v9, v8

    add-float/2addr v7, v9

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p0}, Lʾˋ/ˉʿ;->ﹳٴ(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lʾˋ/ˉʿ;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    move v0, v2

    :goto_4
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->ˉـ:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public final ᵔʾ()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockFaceView;->ـˏ:Lcom/google/android/material/timepicker/ClockHandView;

    iget-object v1, v1, Lcom/google/android/material/timepicker/ClockHandView;->ٴᵢ:Landroid/graphics/RectF;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_0
    iget-object v7, v0, Lcom/google/android/material/timepicker/ClockFaceView;->ˉـ:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    iget-object v9, v0, Lcom/google/android/material/timepicker/ClockFaceView;->ﹳـ:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/google/android/material/timepicker/ClockFaceView;->ˈⁱ:Landroid/graphics/RectF;

    if-ge v5, v8, :cond_2

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v9, v8

    cmpg-float v8, v9, v2

    if-gez v8, :cond_1

    move-object v6, v7

    move v2, v9

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_3

    goto :goto_5

    :cond_3
    if-ne v5, v6, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v5, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v8, v0, Lcom/google/android/material/timepicker/ClockFaceView;->ᴵˑ:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v10, v11, v8}, Landroid/graphics/RectF;->inset(FF)V

    invoke-static {v1, v10}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_5

    move-object v11, v3

    goto :goto_4

    :cond_5
    new-instance v11, Landroid/graphics/RadialGradient;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget v12, v10, Landroid/graphics/RectF;->left:F

    sub-float v12, v8, v12

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget v13, v10, Landroid/graphics/RectF;->top:F

    sub-float v13, v8, v13

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v14, v8

    iget-object v8, v0, Lcom/google/android/material/timepicker/ClockFaceView;->ᵎᵔ:[F

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v15, v0, Lcom/google/android/material/timepicker/ClockFaceView;->ʿᵢ:[I

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_4
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method
