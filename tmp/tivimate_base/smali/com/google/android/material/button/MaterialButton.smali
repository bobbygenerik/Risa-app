.class public Lcom/google/android/material/button/MaterialButton;
.super Lˉˆ/ʼᐧ;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lˋⁱ/ʼʼ;


# static fields
.field public static final ʻᵎ:[I

.field public static final ˊᵔ:[I

.field public static final ـﹶ:Lٴˉ/ʽ;


# instance fields
.field public ʼˈ:F

.field public ʿ:Z

.field public ʿᵢ:I

.field public ˆﾞ:I

.field public ˈʿ:Z

.field public final ˈٴ:Lٴˉ/ᵔᵢ;

.field public ˈⁱ:Landroid/widget/LinearLayout$LayoutParams;

.field public ˉـ:I

.field public ˉٴ:Landroid/content/res/ColorStateList;

.field public ˊʻ:Lٴˉ/ˈ;

.field public ˊˋ:I

.field public ˋᵔ:I

.field public ˏᵢ:F

.field public ˑٴ:Z

.field public ـˏ:I

.field public ٴʼ:Ljava/lang/String;

.field public ٴᵢ:Landroid/graphics/PorterDuff$Mode;

.field public ᐧᴵ:F

.field public ᐧﾞ:I

.field public ᴵʼ:Lˊᵔ/ᵔᵢ;

.field public ᴵˑ:Z

.field public final ᴵᵔ:Ljava/util/LinkedHashSet;

.field public ᵎˊ:I

.field public ᵎᵔ:Lˋⁱ/ʽʽ;

.field public ᵎⁱ:Landroid/graphics/drawable/Drawable;

.field public ᵔי:I

.field public ᵔٴ:I

.field public ﹳـ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->ʻᵎ:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->ˊᵔ:[I

    new-instance v0, Lٴˉ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->ـﹶ:Lٴˉ/ʽ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const v0, 0x7f040422

    filled-new-array {v0}, [I

    move-result-object v0

    const v4, 0x7f0403fe

    const v7, 0x7f140627

    invoke-static {v4, v7, p1, p2, v0}, Lˋᴵ/ﹳٴ;->ﹳٴ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v4}, Lˉˆ/ʼᐧ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ᴵᵔ:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->ˑٴ:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->ˊˋ:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->ـˏ:I

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->ﹳـ:I

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->ʿᵢ:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f140627

    new-array v6, p1, [I

    sget-object v3, Lיﹶ/ﹳٴ;->ˆʾ:[I

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lˈᐧ/ٴﹶ;->ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v3, 0xd

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->ᵔٴ:I

    const/16 v3, 0x10

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v5}, Lˈᐧ/ٴﹶ;->ﾞᴵ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButton;->ٴᵢ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0xf

    invoke-static {v3, p2, v6}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButton;->ˉٴ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0xb

    invoke-static {v3, p2, v6}, Lˉᵎ/ⁱˊ;->ʽﹳ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xc

    const/4 v6, 0x1

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    const/16 v3, 0xe

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    const/16 v3, 0x13

    invoke-static {v1, p2, v3}, Lˋⁱ/ʾˋ;->ᵎﹶ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lˋⁱ/ʾˋ;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v4, v7}, Lˋⁱ/ᵔʾ;->ᵎﹶ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋⁱ/ˉʿ;

    move-result-object v1

    invoke-virtual {v1}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v3

    :goto_0
    const/16 v1, 0x11

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    new-instance v2, Lٴˉ/ᵔᵢ;

    invoke-direct {v2, p0, v3}, Lٴˉ/ᵔᵢ;-><init>(Lcom/google/android/material/button/MaterialButton;Lˋⁱ/ﾞʻ;)V

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    const/4 v4, 0x2

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v2, Lٴˉ/ᵔᵢ;->ˑﹳ:I

    const/4 v4, 0x3

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v2, Lٴˉ/ᵔᵢ;->ﾞᴵ:I

    const/4 v4, 0x4

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v2, Lٴˉ/ᵔᵢ;->ᵎﹶ:I

    const/4 v4, 0x5

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v2, Lٴˉ/ᵔᵢ;->ᵔᵢ:I

    const/16 v4, 0x9

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v2, Lٴˉ/ᵔᵢ;->ʼˎ:I

    iget-object v7, v2, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    int-to-float v4, v4

    invoke-interface {v7, v4}, Lˋⁱ/ﾞʻ;->ⁱˊ(F)Lˋⁱ/ᵔʾ;

    move-result-object v4

    iput-object v4, v2, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-virtual {v2}, Lٴˉ/ᵔᵢ;->ˈ()V

    iput-boolean v6, v2, Lٴˉ/ᵔᵢ;->ﹳᐧ:Z

    :cond_1
    const/16 v4, 0x16

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v2, Lٴˉ/ᵔᵢ;->ˆʾ:I

    const/16 v4, 0x8

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v5}, Lˈᐧ/ٴﹶ;->ﾞᴵ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, v2, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x7

    invoke-static {v0, p2, v4}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v2, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x15

    invoke-static {v0, p2, v4}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v2, Lٴˉ/ᵔᵢ;->ˉʿ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x12

    invoke-static {v0, p2, v4}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v2, Lٴˉ/ᵔᵢ;->ᵔʾ:Landroid/content/res/ColorStateList;

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lٴˉ/ᵔᵢ;->יـ:Z

    const/16 v0, 0xa

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v2, Lٴˉ/ᵔᵢ;->ʻٴ:I

    const/16 v0, 0x17

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lٴˉ/ᵔᵢ;->ˏי:Z

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-boolean v6, v2, Lٴˉ/ᵔᵢ;->ᵔﹳ:Z

    iget-object v8, v2, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v8}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v8, v2, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v8}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lٴˉ/ᵔᵢ;->ʽ()V

    :goto_1
    iget v8, v2, Lٴˉ/ᵔᵢ;->ˑﹳ:I

    add-int/2addr v0, v8

    iget v8, v2, Lٴˉ/ᵔᵢ;->ᵎﹶ:I

    add-int/2addr v4, v8

    iget v8, v2, Lٴˉ/ᵔᵢ;->ﾞᴵ:I

    add-int/2addr v5, v8

    iget v8, v2, Lٴˉ/ᵔᵢ;->ᵔᵢ:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v0, v4, v5, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    instance-of v0, v3, Lˋⁱ/ʾˋ;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ˈ()Lˊᵔ/ʼˎ;

    move-result-object v0

    iput-object v0, v2, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    iget-object v0, v2, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    instance-of v0, v0, Lˋⁱ/ʾˋ;

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lٴˉ/ᵔᵢ;->ˈ()V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setOpticalCenterEnabled(Z)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->ᵔٴ:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    move p1, v6

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    return-void
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayedWidthIncrease()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᐧᴵ:F

    return v0
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private getOpticalCenterShift()I
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ᴵˑ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ʿ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    invoke-virtual {v0, v1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ᵔᵢ()F

    move-result v0

    const v1, 0x3de147ae    # 0.11f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    return v1
.end method

.method private getTextHeight()I
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getTextLayoutWidth()I
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private setCheckedInternal(Z)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    iget-boolean v2, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->ˆﾞ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->ᵔᵢ(IZ)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->ˑٴ:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->ˑٴ:Z

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ᴵᵔ:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˑٴ:Z

    return-void

    :cond_3
    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private setDisplayedWidthIncrease(F)V
    .locals 6

    .prologue
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᐧᴵ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ᐧᴵ:F

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ٴﹶ()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lٴˉ/ᵎﹶ;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lٴˉ/ᵎﹶ;

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᐧᴵ:F

    float-to-int v0, v0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v1, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_4

    invoke-virtual {p1, v1}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    :cond_4
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_7
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    div-int/lit8 p1, v0, 0x2

    invoke-virtual {v2, p1}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic ʽ(Lcom/google/android/material/button/MaterialButton;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthIncrease(F)V

    return-void
.end method

.method public static synthetic ⁱˊ(Lcom/google/android/material/button/MaterialButton;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getDisplayedWidthIncrease()F

    move-result p0

    return p0
.end method

.method public static synthetic ﹳٴ(Lcom/google/android/material/button/MaterialButton;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getOpticalCenterShift()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->ˉـ:I

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ٴﹶ()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getA11yClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ٴʼ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ٴʼ:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_1
    const-class v0, Landroid/widget/Button;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedWidthDecrease()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ʿᵢ:I

    return v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget v0, v0, Lٴˉ/ᵔᵢ;->ʼˎ:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCornerSpringForce()Lˊᵔ/ʼˎ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    return v0
.end method

.method public getIconPadding()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵔٴ:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˉٴ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ٴᵢ:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getInsetBottom()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget v0, v0, Lٴˉ/ᵔᵢ;->ᵔᵢ:I

    return v0
.end method

.method public getInsetTop()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget v0, v0, Lٴˉ/ᵔᵢ;->ᵎﹶ:I

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ᵔʾ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShapeAppearance()Lˋⁱ/ﾞʻ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get ShapeAppearance from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShapeAppearanceModel()Lˋⁱ/ᵔʾ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-interface {v0}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ˉʿ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget v0, v0, Lٴˉ/ᵔᵢ;->ˆʾ:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    invoke-super {p0}, Lˉˆ/ʼᐧ;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    invoke-super {p0}, Lˉˆ/ʼᐧ;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    invoke-static {p0, v0}, Lﹳˋ/ʽʽ;->ʾˋ(Landroid/view/View;Lˋⁱ/ʼˎ;)V

    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .prologue
    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->ʻᵎ:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->ˊᵔ:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lˉˆ/ʼᐧ;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lˉˆ/ʼᐧ;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ˑﹳ()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .prologue
    invoke-super/range {p0 .. p5}, Lˉˆ/ʼᐧ;->onLayout(ZIIII)V

    move-object p1, p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/button/MaterialButton;->ˆʾ(II)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iget p3, p1, Lcom/google/android/material/button/MaterialButton;->ˊˋ:I

    const/high16 p4, -0x40800000    # -1.0f

    if-eq p3, p2, :cond_0

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->ˊˋ:I

    iput p4, p1, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    :cond_0
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    cmpl-float p2, p2, p4

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    iget-object p2, p1, Lcom/google/android/material/button/MaterialButton;->ˈⁱ:Landroid/widget/LinearLayout$LayoutParams;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lٴˉ/ᵎﹶ;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lٴˉ/ᵎﹶ;

    invoke-virtual {p2}, Lٴˉ/ᵎﹶ;->getButtonSizeChange()Lˋⁱ/ʽʽ;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p2, p1, Lcom/google/android/material/button/MaterialButton;->ˈⁱ:Landroid/widget/LinearLayout$LayoutParams;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p3, p1, Lcom/google/android/material/button/MaterialButton;->ˈⁱ:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    iget p3, p1, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->ʿᵢ:I

    const/4 p3, 0x0

    const/4 p4, -0x1

    if-ne p2, p4, :cond_4

    iget-object p2, p1, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconPadding()I

    move-result p2

    iget p5, p1, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    if-nez p5, :cond_3

    iget-object p5, p1, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    :cond_3
    add-int/2addr p2, p5

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    move-result v0

    sub-int/2addr p5, v0

    sub-int/2addr p5, p2

    iput p5, p1, Lcom/google/android/material/button/MaterialButton;->ʿᵢ:I

    :cond_4
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->ـˏ:I

    if-ne p2, p4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->ـˏ:I

    :cond_5
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->ﹳـ:I

    if-ne p2, p4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->ﹳـ:I

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lٴˉ/ᵎﹶ;

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lٴˉ/ᵎﹶ;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p2

    if-nez p2, :cond_7

    const/4 p3, 0x1

    :cond_7
    iput-boolean p3, p1, Lcom/google/android/material/button/MaterialButton;->ʿ:Z

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    instance-of v0, p1, Lٴˉ/ˑﹳ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lٴˉ/ˑﹳ;

    iget-object v0, p1, Lᴵˑ/ⁱˊ;->ʾˋ:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lٴˉ/ˑﹳ;->ʽʽ:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lٴˉ/ˑﹳ;

    invoke-direct {v1, v0}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    iput-boolean v0, v1, Lٴˉ/ˑﹳ;->ʽʽ:Z

    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lˉˆ/ʼᐧ;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->ˆʾ(II)V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-boolean v0, v0, Lٴˉ/ᵔᵢ;->ˏי:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public final refreshDrawableState()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/Button;->refreshDrawableState()V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setA11yClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ٴʼ:Ljava/lang/String;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˋⁱ/ʼˎ;->setTint(I)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    nop

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iput-boolean v0, v1, Lٴˉ/ᵔᵢ;->ᵔﹳ:Z

    iget-object v0, v1, Lٴˉ/ᵔᵢ;->ﹳٴ:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v1, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, p1}, Lˉˆ/ʼᐧ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_1
    invoke-super {p0, p1}, Lˉˆ/ʼᐧ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iput-boolean p1, v0, Lٴˉ/ᵔᵢ;->יـ:Z

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-boolean v1, v0, Lٴˉ/ᵔᵢ;->ﹳᐧ:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lٴˉ/ᵔᵢ;->ʼˎ:I

    if-eq v1, p1, :cond_1

    :cond_0
    iput p1, v0, Lٴˉ/ᵔᵢ;->ʼˎ:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lٴˉ/ᵔᵢ;->ﹳᐧ:Z

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    int-to-float p1, p1

    invoke-interface {v1, p1}, Lˋⁱ/ﾞʻ;->ⁱˊ(F)Lˋⁱ/ᵔʾ;

    move-result-object p1

    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˈ()V

    :cond_1
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setCornerSpringForce(Lˊᵔ/ʼˎ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    iget-object p1, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    instance-of p1, p1, Lˋⁱ/ʾˋ;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˈ()V

    :cond_0
    return-void
.end method

.method public setDisplayedWidthDecrease(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ʿᵢ:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ˏᵢ:F

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ٴﹶ()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Button;->setElevation(F)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->ˆʾ(II)V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->ˆʾ(II)V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵔٴ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵔٴ:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .prologue
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˉٴ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ˉٴ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ٴᵢ:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ٴᵢ:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInsetBottom(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget v1, v0, Lٴˉ/ᵔᵢ;->ᵎﹶ:I

    invoke-virtual {v0, v1, p1}, Lٴˉ/ᵔᵢ;->ⁱˊ(II)V

    return-void
.end method

.method public setInsetTop(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget v1, v0, Lٴˉ/ᵔᵢ;->ᵔᵢ:I

    invoke-virtual {v0, p1, v1}, Lٴˉ/ᵔᵢ;->ⁱˊ(II)V

    return-void
.end method

.method public setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lˉˆ/ʼᐧ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnPressedChangeListenerInternal(Lٴˉ/ˈ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ˊʻ:Lٴˉ/ˈ;

    return-void
.end method

.method public setOpticalCenterEnabled(Z)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ᴵˑ:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->ᴵˑ:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    if-eqz p1, :cond_0

    new-instance p1, Lٴˉ/ﹳٴ;

    const/4 v2, 0x0

    invoke-direct {p1, v2, p0}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    iput-object p1, v1, Lٴˉ/ᵔᵢ;->ˈ:Lٴˉ/ﹳٴ;

    invoke-virtual {v1, v0}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p1, v0, Lˋⁱ/ʼˎ;->ˏᵢ:Lٴˉ/ﹳٴ;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v1, Lٴˉ/ᵔᵢ;->ˈ:Lٴˉ/ﹳٴ;

    invoke-virtual {v1, v0}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p1, v0, Lˋⁱ/ʼˎ;->ˏᵢ:Lٴˉ/ﹳٴ;

    :cond_1
    :goto_0
    new-instance p1, Lٴˉ/ⁱˊ;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˊʻ:Lٴˉ/ˈ;

    if-eqz v0, :cond_0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ᵎﹶ(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ﹳٴ:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v0, Lٴˉ/ᵔᵢ;->ᵔʾ:Landroid/content/res/ColorStateList;

    if-eq v2, p1, :cond_0

    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ᵔʾ:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lﹶʼ/ﹳٴ;->ﹳٴ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearance(Lˋⁱ/ﾞʻ;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    if-nez v1, :cond_0

    invoke-interface {p1}, Lˋⁱ/ﾞʻ;->ˑﹳ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ˈ()Lˊᵔ/ʼˎ;

    move-result-object v1

    iput-object v1, v0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    instance-of v1, v1, Lˋⁱ/ʾˋ;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˈ()V

    :cond_0
    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˈ()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearance on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˈ()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShouldDrawSurfaceColorStroke(Z)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iput-boolean p1, v0, Lٴˉ/ᵔᵢ;->ʼᐧ:Z

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˑﹳ()V

    :cond_0
    return-void
.end method

.method public setSizeChange(Lˋⁱ/ʽʽ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎᵔ:Lˋⁱ/ʽʽ;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎᵔ:Lˋⁱ/ʽʽ;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ᵎﹶ(Z)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ˉʿ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ˉʿ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˑﹳ()V

    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget v1, v0, Lٴˉ/ᵔᵢ;->ˆʾ:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lٴˉ/ᵔᵢ;->ˆʾ:I

    invoke-virtual {v0}, Lٴˉ/ᵔᵢ;->ˑﹳ()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object p1

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lˋⁱ/ʼˎ;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lˉˆ/ʼᐧ;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object p1

    iget-object v0, v0, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Lˋⁱ/ʼˎ;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lˉˆ/ʼᐧ;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setTextAlignment(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->ˆʾ(II)V

    return-void
.end method

.method public setToggleCheckedStateOnClick(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    iput-boolean p1, v0, Lٴˉ/ᵔᵢ;->ˏי:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    invoke-super {p0, p1}, Landroid/widget/Button;->setWidth(I)V

    return-void
.end method

.method public setWidthChangeMax(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᐧﾞ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ᐧﾞ:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->ᵎﹶ(Z)V

    :cond_0
    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final ʼˎ(Z)V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->ˉٴ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ٴᵢ:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->ᵔי:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->ˆﾞ:I

    add-int/2addr v0, v4

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ᵔᵢ()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v2, p1, v1

    const/4 v3, 0x2

    aget-object p1, p1, v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    if-eq v4, v1, :cond_5

    if-ne v4, v3, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_c

    :cond_6
    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    const/4 v0, 0x4

    if-ne v4, v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_8
    const/16 p1, 0x10

    if-eq v4, p1, :cond_a

    const/16 p1, 0x20

    if-ne v4, p1, :cond_9

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_b

    goto :goto_3

    :cond_b
    return-void

    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ᵔᵢ()V

    return-void
.end method

.method public final ˆʾ(II)V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_7

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x10

    if-eq v0, p1, :cond_4

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->ᵔי:I

    if-ne v0, p1, :cond_5

    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->ˆﾞ:I

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    return-void

    :cond_5
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵔٴ:I

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/2addr p2, v4

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->ˆﾞ:I

    if-eq p2, p1, :cond_10

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ˆﾞ:I

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    return-void

    :cond_7
    :goto_1
    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->ˆﾞ:I

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object p2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    if-eq v0, v3, :cond_f

    if-eq v0, v1, :cond_f

    if-ne v0, v4, :cond_8

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq p2, v1, :cond_f

    :cond_8
    if-ne v0, v2, :cond_9

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_9

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎˊ:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵔٴ:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_b

    div-int/lit8 p1, p1, 0x2

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    if-ne p2, v3, :cond_c

    move p2, v3

    goto :goto_2

    :cond_c
    move p2, v5

    :goto_2
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    if-ne v0, v2, :cond_d

    goto :goto_3

    :cond_d
    move v3, v5

    :goto_3
    if-eq p2, v3, :cond_e

    neg-int p1, p1

    :cond_e
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->ᵔי:I

    if-eq p2, p1, :cond_10

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->ᵔי:I

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    return-void

    :cond_f
    :goto_4
    iput v5, p0, Lcom/google/android/material/button/MaterialButton;->ᵔי:I

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->ʼˎ(Z)V

    :cond_10
    :goto_5
    return-void
.end method

.method public final ˈ()Lˊᵔ/ʼˎ;
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040475

    invoke-static {v0, v1}, Lˈˋ/ʾˊ;->ʼʼ(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lיﹶ/ﹳٴ;->ˏי:[I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const v4, 0x7f14017b

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    new-instance v1, Lˊᵔ/ʼˎ;

    invoke-direct {v1}, Lˊᵔ/ʼˎ;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Lˊᵔ/ʼˎ;->ⁱˊ(F)V

    invoke-virtual {v1, v2}, Lˊᵔ/ʼˎ;->ﹳٴ(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A MaterialSpring style must have a damping value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A MaterialSpring style must have stiffness value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public final ˑﹳ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lٴˉ/ᵔᵢ;->יـ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ٴﹶ()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᐧᴵ:F

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->ˏᵢ:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->ˉـ:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->ـˏ:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->ﹳـ:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final ᵎﹶ(Z)V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎᵔ:Lˋⁱ/ʽʽ;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᴵʼ:Lˊᵔ/ᵔᵢ;

    if-nez v0, :cond_1

    new-instance v0, Lˊᵔ/ᵔᵢ;

    sget-object v1, Lcom/google/android/material/button/MaterialButton;->ـﹶ:Lٴˉ/ʽ;

    invoke-direct {v0, p0, v1}, Lˊᵔ/ᵔᵢ;-><init>(Lˋⁱ/ʼʼ;Lcom/google/android/gms/internal/play_billing/י;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᴵʼ:Lˊᵔ/ᵔᵢ;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->ˈ()Lˊᵔ/ʼˎ;

    move-result-object v1

    iput-object v1, v0, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->ʿ:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ᐧﾞ:I

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->ᵎᵔ:Lˋⁱ/ʽʽ;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, v1, Lˋⁱ/ʽʽ;->ʽ:[[I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, v1, Lˋⁱ/ʽʽ;->ﹳٴ:I

    const/4 v7, -0x1

    if-ge v5, v6, :cond_3

    aget-object v6, v3, v5

    invoke-static {v6, v2}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    :goto_1
    if-gez v5, :cond_6

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v3, v1, Lˋⁱ/ʽʽ;->ʽ:[[I

    move v5, v4

    :goto_2
    iget v6, v1, Lˋⁱ/ʽʽ;->ﹳٴ:I

    if-ge v5, v6, :cond_5

    aget-object v6, v3, v5

    invoke-static {v6, v2}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move v5, v7

    :cond_6
    if-gez v5, :cond_7

    iget-object v1, v1, Lˋⁱ/ʽʽ;->ⁱˊ:Lˉˆ/ʿ;

    goto :goto_4

    :cond_7
    iget-object v1, v1, Lˋⁱ/ʽʽ;->ˈ:[Lˉˆ/ʿ;

    aget-object v1, v1, v5

    :goto_4
    iget-object v1, v1, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˋⁱ/ᴵˊ;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v1, Lˋⁱ/ᴵˊ;->ⁱˊ:F

    iget v1, v1, Lˋⁱ/ᴵˊ;->ﹳٴ:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    int-to-float v1, v2

    mul-float/2addr v3, v1

    :goto_5
    float-to-int v4, v3

    goto :goto_6

    :cond_8
    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    goto :goto_5

    :cond_9
    :goto_6
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->ᴵʼ:Lˊᵔ/ᵔᵢ;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lˊᵔ/ᵔᵢ;->ﹳٴ(F)V

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->ᴵʼ:Lˊᵔ/ᵔᵢ;

    invoke-virtual {p1}, Lˊᵔ/ᵔᵢ;->ˈ()V

    :cond_a
    :goto_7
    return-void
.end method

.method public final ᵔᵢ()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->ˋᵔ:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ᵎⁱ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final ﾞᴵ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->ˈٴ:Lٴˉ/ᵔᵢ;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lٴˉ/ᵔᵢ;->ᵔﹳ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
