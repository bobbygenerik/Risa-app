.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static final ﹶʽ:[[I


# instance fields
.field public ʻʿ:I

.field public ʻˋ:Lˋⁱ/ʼˎ;

.field public final ʻᴵ:Ljava/util/LinkedHashSet;

.field public ʻᵎ:Z

.field public ʼˈ:Ljava/lang/CharSequence;

.field public ʼـ:I

.field public ʼᵢ:I

.field public final ʽʽ:Lʽˊ/ʼᐧ;

.field public ʽˑ:I

.field public ʽᵔ:I

.field public final ʽⁱ:Landroid/graphics/RectF;

.field public ʾˊ:I

.field public final ʾˋ:Landroid/widget/FrameLayout;

.field public ʾﾞ:Landroid/graphics/Typeface;

.field public ʿ:Lˑʿ/ʼˎ;

.field public ʿـ:Landroid/graphics/drawable/Drawable;

.field public ʿᵢ:Landroid/content/res/ColorStateList;

.field public ˆﾞ:I

.field public ˈʿ:Lʽˊ/ᴵˊ;

.field public ˈˏ:Landroid/graphics/drawable/StateListDrawable;

.field public final ˈـ:Lˈᐧ/ʽ;

.field public final ˈٴ:I

.field public ˈⁱ:Landroid/content/res/ColorStateList;

.field public ˉـ:Lˑʿ/ʼˎ;

.field public ˉٴ:I

.field public ˊʻ:Ljava/lang/CharSequence;

.field public ˊˋ:I

.field public ˊᵔ:Lˋⁱ/ʼˎ;

.field public ˋˊ:I

.field public ˋـ:Z

.field public ˋᵔ:I

.field public ˎʾ:Z

.field public ˎˉ:Landroid/animation/ValueAnimator;

.field public final ˎᐧ:Landroid/graphics/Rect;

.field public ˏᵢ:Z

.field public ˑ:I

.field public ˑʼ:Lˋⁱ/ᵔʾ;

.field public ˑˆ:Z

.field public ˑٴ:Lˉˆ/ᐧﾞ;

.field public י:I

.field public יˉ:I

.field public final יﹳ:Landroid/graphics/Rect;

.field public ـˊ:Landroid/graphics/drawable/ColorDrawable;

.field public ـˏ:Z

.field public ـᵎ:I

.field public ـᵢ:I

.field public ـﹶ:Lˋⁱ/ʼˎ;

.field public ٴʼ:I

.field public ٴᴵ:Landroid/content/res/ColorStateList;

.field public ٴᵢ:I

.field public ٴﹳ:Z

.field public ᐧˎ:I

.field public ᐧᴵ:Landroid/content/res/ColorStateList;

.field public ᐧﹶ:I

.field public ᐧﾞ:Landroid/content/res/ColorStateList;

.field public ᴵʼ:Ljava/lang/CharSequence;

.field public final ᴵˊ:Lʽˊ/ʾᵎ;

.field public ᴵˑ:I

.field public ᴵᵔ:Landroid/widget/EditText;

.field public final ᵎʻ:I

.field public ᵎʿ:I

.field public final ᵎˊ:Lʽˊ/יـ;

.field public ᵎᵔ:Landroid/content/res/ColorStateList;

.field public ᵎⁱ:I

.field public ᵔי:Z

.field public ᵔٴ:Z

.field public ᵢˋ:Z

.field public ⁱˉ:Landroid/graphics/drawable/ColorDrawable;

.field public ⁱי:Landroid/content/res/ColorStateList;

.field public ⁱᴵ:I

.field public ﹳـ:Lˉˆ/ᐧﾞ;

.field public ﹳᵢ:Z

.field public ﹳⁱ:Landroid/content/res/ColorStateList;

.field public ﹳﹳ:Lˋⁱ/ʼˎ;

.field public ﹶ:I

.field public ﹶˎ:I

.field public ﹶᐧ:Z

.field public ﾞˋ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/android/material/textfield/TextInputLayout;->ﹶʽ:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const v4, 0x7f040649

    const v7, 0x7f1404be

    move-object/from16 v1, p1

    invoke-static {v1, v2, v4, v7}, Lˋᴵ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v8, -0x1

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᵢ:I

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˉٴ:I

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎⁱ:I

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->ٴʼ:I

    new-instance v1, Lʽˊ/יـ;

    invoke-direct {v1, v0}, Lʽˊ/יـ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v3, 0x16

    invoke-direct {v1, v3}, Lʻʿ/ᵔﹳ;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˈʿ:Lʽˊ/ᴵˊ;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˎᐧ:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->יﹳ:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʽⁱ:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᴵ:Ljava/util/LinkedHashSet;

    new-instance v1, Lˈᐧ/ʽ;

    invoke-direct {v1, v0}, Lˈᐧ/ʽ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˋـ:Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˋ:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    sget-object v5, Lˑˏ/ﹳٴ;->ﹳٴ:Landroid/view/animation/LinearInterpolator;

    iput-object v5, v1, Lˈᐧ/ʽ;->ˊˋ:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v9}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    iput-object v5, v1, Lˈᐧ/ʽ;->ˋᵔ:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v9}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    iget v5, v1, Lˈᐧ/ʽ;->ᵎﹶ:I

    const v6, 0x800033

    if-eq v5, v6, :cond_0

    iput v6, v1, Lˈᐧ/ʽ;->ᵎﹶ:I

    invoke-virtual {v1, v9}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_0
    const/16 v12, 0x16

    const/16 v13, 0x14

    const/16 v14, 0x28

    const/16 v15, 0x2d

    const/16 v1, 0x32

    filled-new-array {v12, v13, v14, v15, v1}, [I

    move-result-object v6

    const v5, 0x7f1404be

    invoke-static {v3, v2, v4, v5}, Lˈᐧ/ٴﹶ;->ﹳٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move/from16 v16, v1

    move-object v1, v3

    sget-object v3, Lיﹶ/ﹳٴ;->ᴵᵔ:[I

    move/from16 v13, v16

    invoke-static/range {v1 .. v6}, Lˈᐧ/ٴﹶ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    new-instance v6, Lcom/parse/ٴʼ;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-direct {v6, v1, v3}, Lcom/parse/ٴʼ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    new-instance v5, Lʽˊ/ʾᵎ;

    invoke-direct {v5, v0, v6}, Lʽˊ/ʾᵎ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/parse/ٴʼ;)V

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    const/16 v12, 0x30

    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/16 v12, 0x2f

    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˑˆ:Z

    const/16 v12, 0x2a

    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˎʾ:Z

    const/4 v12, 0x6

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    goto :goto_0

    :cond_1
    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    :cond_2
    :goto_0
    const/4 v12, 0x5

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    const/4 v15, 0x2

    if-eqz v17, :cond_3

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    :cond_4
    :goto_1
    invoke-static {v1, v2, v4, v7}, Lˋⁱ/ᵔʾ;->ᵎﹶ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋⁱ/ˉʿ;

    move-result-object v2

    invoke-virtual {v2}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070527

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎʻ:I

    const/16 v2, 0x9

    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʽᵔ:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0703b1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˈٴ:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070528

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->י:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070529

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˊ:I

    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->י:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    const/16 v2, 0xd

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v7, 0xc

    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    const/16 v12, 0xa

    invoke-virtual {v3, v12, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    const/16 v15, 0xb

    invoke-virtual {v3, v15, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iget-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    invoke-virtual {v15}, Lˋⁱ/ᵔʾ;->ٴﹶ()Lˋⁱ/ˉʿ;

    move-result-object v15

    const/16 v18, 0x0

    cmpl-float v19, v2, v18

    if-ltz v19, :cond_5

    new-instance v14, Lˋⁱ/ﹳٴ;

    invoke-direct {v14, v2}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v14, v15, Lˋⁱ/ˉʿ;->ˑﹳ:Lˋⁱ/ˈ;

    :cond_5
    cmpl-float v2, v7, v18

    if-ltz v2, :cond_6

    new-instance v2, Lˋⁱ/ﹳٴ;

    invoke-direct {v2, v7}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v2, v15, Lˋⁱ/ˉʿ;->ﾞᴵ:Lˋⁱ/ˈ;

    :cond_6
    cmpl-float v2, v12, v18

    if-ltz v2, :cond_7

    new-instance v2, Lˋⁱ/ﹳٴ;

    invoke-direct {v2, v12}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v2, v15, Lˋⁱ/ˉʿ;->ᵎﹶ:Lˋⁱ/ˈ;

    :cond_7
    cmpl-float v2, v4, v18

    if-ltz v2, :cond_8

    new-instance v2, Lˋⁱ/ﹳٴ;

    invoke-direct {v2, v4}, Lˋⁱ/ﹳٴ;-><init>(F)V

    iput-object v2, v15, Lˋⁱ/ˉʿ;->ᵔᵢ:Lˋⁱ/ˈ;

    :cond_8
    invoke-virtual {v15}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    const/4 v2, 0x7

    invoke-static {v1, v6, v2}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱᴵ:I

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    const v7, 0x1010367

    const v12, -0x101009e

    if-eqz v4, :cond_9

    filled-new-array {v12}, [I

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶˎ:I

    const v4, 0x101009c

    const v12, 0x101009e

    filled-new-array {v4, v12}, [I

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʽˑ:I

    filled-new-array {v7, v12}, [I

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˋˊ:I

    goto :goto_2

    :cond_9
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱᴵ:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʽˑ:I

    const v2, 0x7f060425

    invoke-static {v1, v2}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    filled-new-array {v12}, [I

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶˎ:I

    filled-new-array {v7}, [I

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˋˊ:I

    goto :goto_2

    :cond_a
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱᴵ:I

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶˎ:I

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʽˑ:I

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˋˊ:I

    :goto_2
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v6, v10}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱי:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    :cond_b
    const/16 v2, 0xe

    invoke-static {v1, v6, v2}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    const v2, 0x7f060440

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʻʿ:I

    const v2, 0x7f060441

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʼᵢ:I

    const v2, 0x7f060444

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶ:I

    if-eqz v4, :cond_c

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    :cond_c
    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v1, v6, v2}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    :cond_d
    invoke-virtual {v3, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, v8, :cond_e

    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    :cond_e
    const/16 v1, 0x18

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﾞ:Landroid/content/res/ColorStateList;

    const/16 v1, 0x19

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧᴵ:Landroid/content/res/ColorStateList;

    const/16 v1, 0x28

    invoke-virtual {v3, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/16 v2, 0x23

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v4, 0x22

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v7, 0x24

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v12, 0x2d

    invoke-virtual {v3, v12, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/16 v13, 0x2c

    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    const/16 v14, 0x2b

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    const/16 v15, 0x3a

    invoke-virtual {v3, v15, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    const/16 v10, 0x39

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/16 v8, 0x12

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v9, 0x13

    move-object/from16 p2, v14

    const/4 v14, -0x1

    invoke-virtual {v3, v9, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    const/4 v9, 0x0

    const/16 v14, 0x16

    invoke-virtual {v3, v14, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˊˋ:I

    const/16 v14, 0x14

    invoke-virtual {v3, v14, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˋᵔ:I

    const/16 v14, 0x8

    invoke-virtual {v3, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˋᵔ:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    iget v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˊˋ:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    const/16 v1, 0x2e

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    const/16 v1, 0x33

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    const/16 v1, 0x17

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    const/16 v1, 0x15

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    const/16 v1, 0x3b

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v6, v1}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    :cond_14
    new-instance v1, Lʽˊ/ʼᐧ;

    invoke-direct {v1, v0, v6}, Lʽˊ/ʼᐧ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/parse/ٴʼ;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v9, 0x31

    invoke-virtual {v3, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHintMaxLines(I)V

    invoke-virtual {v6}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v3, v6, :cond_15

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setImportantForAutofill(I)V

    :cond_15
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    invoke-virtual {v0, v13}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    const v1, 0x7f04013a

    invoke-static {v0, v1}, Lʽٴ/ˈ;->ٴﹶ(Landroid/view/View;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x3dcccccd    # 0.1f

    sget-object v5, Lcom/google/android/material/textfield/TextInputLayout;->ﹶʽ:[[I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    const-string v7, "TextInputLayout"

    const v8, 0x7f040170

    invoke-static {v8, v1, v7}, Lˈˋ/ʾˊ;->ʾˋ(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v7

    invoke-static {v1, v7}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v1

    new-instance v7, Lˋⁱ/ʼˎ;

    invoke-virtual {v6}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v8

    invoke-direct {v7, v8}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    invoke-static {v4, v0, v1}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result v0

    const/4 v4, 0x0

    filled-new-array {v0, v4}, [I

    move-result-object v8

    new-instance v9, Landroid/content/res/ColorStateList;

    invoke-direct {v9, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v7, v9}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7, v1}, Lˋⁱ/ʼˎ;->setTint(I)V

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v0, Lˋⁱ/ʼˎ;

    invoke-virtual {v6}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v5

    invoke-direct {v0, v5}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lˋⁱ/ʼˎ;->setTint(I)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v5, v1, v7, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v4

    aput-object v6, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    invoke-static {v4, v0, v2}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result v0

    filled-new-array {v0, v2}, [I

    move-result-object v0

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    return-object v0
.end method

.method private getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈˏ:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈˏ:Landroid/graphics/drawable/StateListDrawable;

    const v1, 0x10100aa

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈˏ:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔᵢ(Z)Lˋⁱ/ʼˎ;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈˏ:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method private getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـﹶ:Lˋⁱ/ʼˎ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔᵢ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـﹶ:Lˋⁱ/ʼˎ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـﹶ:Lˋⁱ/ʼˎ;

    return-object v0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    nop

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᵢ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎⁱ:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˉٴ:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴʼ:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶᐧ:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ٴﹶ()V

    new-instance v1, Lʽˊ/ʾˋ;

    invoke-direct {v1, p0}, Lʽˊ/ʾˋ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lʽˊ/ʾˋ;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    invoke-virtual {v2, v1}, Lˈᐧ/ʽ;->ᵔʾ(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v3, v2, Lˈᐧ/ʽ;->ᵔᵢ:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_3

    iput v1, v2, Lˈᐧ/ʽ;->ᵔᵢ:F

    invoke-virtual {v2, v0}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v1

    iget v3, v2, Lˈᐧ/ʽ;->ˉـ:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_4

    iput v1, v2, Lˈᐧ/ʽ;->ˉـ:F

    invoke-virtual {v2, v0}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v3, v1, -0x71

    or-int/lit8 v3, v3, 0x30

    iget v4, v2, Lˈᐧ/ʽ;->ᵎﹶ:I

    if-eq v4, v3, :cond_5

    iput v3, v2, Lˈᐧ/ʽ;->ᵎﹶ:I

    invoke-virtual {v2, v0}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_5
    iget v3, v2, Lˈᐧ/ʽ;->ﾞᴵ:I

    if-eq v3, v1, :cond_6

    iput v1, v2, Lˈᐧ/ʽ;->ﾞᴵ:I

    invoke-virtual {v2, v0}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->יˉ:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    new-instance v2, Lʽˊ/ʼʼ;

    invoke-direct {v2, p0, p1}, Lʽˊ/ʼʼ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊʻ:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_8
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﹳᐧ()V

    :cond_a
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ʼᐧ(Landroid/text/Editable;)V

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˏי()V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    invoke-virtual {v1}, Lʽˊ/יـ;->ⁱˊ()V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᴵ:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽˊ/ᵔʾ;

    invoke-virtual {v4, p0}, Lʽˊ/ᵔʾ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Lʽˊ/ʼᐧ;->ᵔʾ()V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->ـˆ(ZZ)V

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "We already have an EditText, can only have one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lˈᐧ/ʽ;->ᴵˊ:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object p1, v0, Lˈᐧ/ʽ;->ᴵˊ:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, v0, Lˈᐧ/ʽ;->ʽʽ:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﾞʻ()V

    :cond_2
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˏ:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˋ:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˏ:Z

    return-void
.end method

.method public static ˉʿ(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ˉʿ(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˋ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʻٴ()V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊʻ:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊʻ:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    throw p1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˋ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˋ:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˋ:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    iget-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    if-eqz v2, :cond_8

    iget-object v7, v8, Lˈᐧ/ʽ;->ˈʿ:Landroid/text/TextPaint;

    iget-object v2, v8, Lˈᐧ/ʽ;->ˑﹳ:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v3, v8, Lˈᐧ/ʽ;->ʽʽ:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    iget v2, v8, Lˈᐧ/ʽ;->ٴᵢ:F

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v8, Lˈᐧ/ʽ;->ᵔﹳ:F

    iget v3, v8, Lˈᐧ/ʽ;->ﹳᐧ:F

    iget v4, v8, Lˈᐧ/ʽ;->ˊʻ:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    iget v4, v8, Lˈᐧ/ʽ;->ᴵʼ:I

    const/4 v10, 0x1

    if-gt v4, v10, :cond_1

    iget v4, v8, Lˈᐧ/ʽ;->ʻᵎ:I

    if-le v4, v10, :cond_7

    :cond_1
    iget-boolean v4, v8, Lˈᐧ/ʽ;->ˈٴ:Z

    if-eqz v4, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v8}, Lˈᐧ/ʽ;->ˉˆ()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v2, v8, Lˈᐧ/ʽ;->ᵔﹳ:F

    iget-object v4, v8, Lˈᐧ/ʽ;->ʿᵢ:Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v8, Lˈᐧ/ʽ;->ᐧᴵ:F

    int-to-float v3, v12

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    if-lt v13, v14, :cond_3

    iget v2, v8, Lˈᐧ/ʽ;->ˉٴ:F

    iget v4, v8, Lˈᐧ/ʽ;->ᵎⁱ:F

    iget v5, v8, Lˈᐧ/ʽ;->ٴʼ:F

    iget v6, v8, Lˈᐧ/ʽ;->ᵎˊ:I

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    mul-int v15, v15, v16

    div-int/lit16 v15, v15, 0xff

    invoke-static {v6, v15}, Lᵎⁱ/ﹳٴ;->ˈ(II)I

    move-result v6

    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    iget-object v2, v8, Lˈᐧ/ʽ;->ʿᵢ:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget v2, v8, Lˈᐧ/ʽ;->ᐧﾞ:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-lt v13, v14, :cond_4

    iget v2, v8, Lˈᐧ/ʽ;->ˉٴ:F

    iget v3, v8, Lˈᐧ/ʽ;->ᵎⁱ:F

    iget v4, v8, Lˈᐧ/ʽ;->ٴʼ:F

    iget v5, v8, Lˈᐧ/ʽ;->ᵎˊ:I

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    mul-int/2addr v15, v6

    div-int/lit16 v15, v15, 0xff

    invoke-static {v5, v15}, Lᵎⁱ/ﹳٴ;->ˈ(II)I

    move-result v5

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_4
    iget-object v2, v8, Lˈᐧ/ʽ;->ʿᵢ:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    iget-object v3, v8, Lˈᐧ/ʽ;->ˏᵢ:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v6, v2

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-lt v13, v14, :cond_5

    iget v1, v8, Lˈᐧ/ʽ;->ˉٴ:F

    iget v2, v8, Lˈᐧ/ʽ;->ᵎⁱ:F

    iget v3, v8, Lˈᐧ/ʽ;->ٴʼ:F

    iget v4, v8, Lˈᐧ/ʽ;->ᵎˊ:I

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_5
    iget-object v1, v8, Lˈᐧ/ʽ;->ˏᵢ:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_6
    move-object v2, v1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v8, Lˈᐧ/ʽ;->ʿᵢ:Landroid/text/StaticLayout;

    invoke-virtual {v1, v11}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v8, Lˈᐧ/ʽ;->ʿᵢ:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳﹳ:Lˋⁱ/ʼˎ;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v1}, Lˋⁱ/ʼˎ;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳﹳ:Lˋⁱ/ʼˎ;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v8, Lˈᐧ/ʽ;->ⁱˊ:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5, v6}, Lˑˏ/ﹳٴ;->ʽ(FII)I

    move-result v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5, v3}, Lˑˏ/ﹳٴ;->ʽ(FII)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    invoke-virtual {v2, v1}, Lˋⁱ/ʼˎ;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳᵢ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳᵢ:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    if-eqz v3, :cond_3

    iput-object v1, v3, Lˈᐧ/ʽ;->ˆﾞ:[I

    iget-object v1, v3, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v3, Lˈᐧ/ʽ;->ˆʾ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v3, v2}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->ـˆ(ZZ)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˏי()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳᵢ:Z

    return-void
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˑﹳ()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getBoxBackground()Lˋⁱ/ʼˎ;
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    return-object v0
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    return v0
.end method

.method public getBoxBackgroundMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    return v0
.end method

.method public getBoxCollapsedPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽᵔ:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽⁱ:Landroid/graphics/RectF;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽⁱ:Landroid/graphics/RectF;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽⁱ:Landroid/graphics/RectF;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽⁱ:Landroid/graphics/RectF;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    invoke-interface {v0, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    return v0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBoxStrokeWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->י:I

    return v0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˊ:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˆﾞ:I

    return v0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔי:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎᵔ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿᵢ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCursorColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﾞ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCursorErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧᴵ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconMinSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget v0, v0, Lʽˊ/ʼᐧ;->ˆﾞ:I

    return v0
.end method

.method public getEndIconMode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget v0, v0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    return v0
.end method

.method public getEndIconScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ᵔٴ:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-boolean v1, v0, Lʽˊ/יـ;->ᵔﹳ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lʽˊ/יـ;->ʼᐧ:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorAccessibilityLiveRegion()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget v0, v0, Lʽˊ/יـ;->ˏי:I

    return v0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v0, v0, Lʽˊ/יـ;->יـ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v0, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-boolean v1, v0, Lʽˊ/יـ;->ʾᵎ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lʽˊ/יـ;->ـˆ:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v0, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    invoke-virtual {v0}, Lˈᐧ/ʽ;->ﾞᴵ()F

    move-result v0

    return v0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget-object v1, v0, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lˈᐧ/ʽ;->ᵎﹶ(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public getHintMaxLines()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget v0, v0, Lˈᐧ/ʽ;->ᴵʼ:I

    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱי:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLengthCounter()Lʽˊ/ᴵˊ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈʿ:Lʽˊ/ᴵˊ;

    return-object v0
.end method

.method public getMaxEms()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˉٴ:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴʼ:I

    return v0
.end method

.method public getMinEms()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᵢ:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎⁱ:I

    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˏ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼˈ:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˑ:I

    return v0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈⁱ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ʽʽ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lˋⁱ/ᵔʾ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconMinSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget v0, v0, Lʽˊ/ʾᵎ;->ٴᵢ:I

    return v0
.end method

.method public getStartIconScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˉٴ:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾﾞ:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    invoke-virtual {v0, p1}, Lˈᐧ/ʽ;->ʼˎ(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋـ:Z

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->יـ()Z

    move-result v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    new-instance v1, Landroidx/lifecycle/ᵎⁱ;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p2, :cond_e

    iget-object p3, p1, Lcom/google/android/material/textfield/TextInputLayout;->ˎᐧ:Landroid/graphics/Rect;

    invoke-static {p0, p2, p3}, Lˈᐧ/ˈ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ﹳﹳ:Lˋⁱ/ʼˎ;

    if-eqz p2, :cond_0

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    iget p5, p1, Lcom/google/android/material/textfield/TextInputLayout;->י:I

    sub-int p5, p4, p5

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, p5, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    if-eqz p2, :cond_1

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    iget p5, p1, Lcom/google/android/material/textfield/TextInputLayout;->ʾˊ:I

    sub-int p5, p4, p5

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, p5, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-boolean p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    if-eqz p2, :cond_e

    iget-object p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    iget-object p4, p1, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget p5, p4, Lˈᐧ/ʽ;->ᵔᵢ:F

    iget-object v0, p4, Lˈᐧ/ʽ;->ˑٴ:Landroid/text/TextPaint;

    cmpl-float p5, p5, p2

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    iput p2, p4, Lˈᐧ/ʽ;->ᵔᵢ:F

    invoke-virtual {p4, v1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_2
    iget-object p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getGravity()I

    move-result p2

    and-int/lit8 p5, p2, -0x71

    or-int/lit8 p5, p5, 0x30

    iget v2, p4, Lˈᐧ/ʽ;->ᵎﹶ:I

    if-eq v2, p5, :cond_3

    iput p5, p4, Lˈᐧ/ʽ;->ᵎﹶ:I

    invoke-virtual {p4, v1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_3
    iget p5, p4, Lˈᐧ/ʽ;->ﾞᴵ:I

    if-eq p5, p2, :cond_4

    iput p2, p4, Lˈᐧ/ʽ;->ﾞᴵ:I

    invoke-virtual {p4, v1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->ˈ(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p4, Lˈᐧ/ʽ;->ˈ:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    if-ne v5, p5, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ne v5, v2, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-ne v5, v3, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4, p5, v2, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p4, Lˈᐧ/ʽ;->ᵔٴ:Z

    :goto_0
    iget-object p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHintMaxLines()I

    move-result p2

    if-ne p2, v6, :cond_6

    iget p2, p4, Lˈᐧ/ʽ;->ᵔᵢ:F

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p4, Lˈᐧ/ʽ;->ʻٴ:Landroid/graphics/Typeface;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p2, p4, Lˈᐧ/ʽ;->ˉـ:F

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    neg-float p2, p2

    goto :goto_1

    :cond_6
    iget p2, p4, Lˈᐧ/ʽ;->ᵔᵢ:F

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p4, Lˈᐧ/ʽ;->ʻٴ:Landroid/graphics/Typeface;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p2, p4, Lˈᐧ/ʽ;->ˉـ:F

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result p5

    add-float/2addr p5, p2

    iget p2, p4, Lˈᐧ/ʽ;->ﾞʻ:I

    int-to-float p2, p2

    mul-float/2addr p2, p5

    :goto_1
    iget p5, p3, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v2, p5

    iget-object p5, p1, Lcom/google/android/material/textfield/TextInputLayout;->יﹳ:Landroid/graphics/Rect;

    iput v2, p5, Landroid/graphics/Rect;->left:I

    iget v2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_7

    iget-object v2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMinLines()I

    move-result v2

    if-gt v2, v6, :cond_7

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    div-float v2, p2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_4

    :cond_7
    iget v2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHintMaxLines()I

    move-result v2

    if-ne v2, v6, :cond_8

    goto :goto_2

    :cond_8
    iget v2, p4, Lˈᐧ/ʽ;->ᵔᵢ:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p4, Lˈᐧ/ʽ;->ʻٴ:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p4, Lˈᐧ/ʽ;->ˉـ:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_3

    :cond_9
    :goto_2
    move v0, v1

    :goto_3
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    sub-int v0, v3, v0

    :goto_4
    iput v0, p5, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iget v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-ne v0, v6, :cond_a

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    if-gt v0, v6, :cond_a

    iget p3, p5, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    add-float/2addr p3, p2

    float-to-int p2, p3

    goto :goto_5

    :cond_a
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    :goto_5
    iput p2, p5, Landroid/graphics/Rect;->bottom:I

    iget p3, p5, Landroid/graphics/Rect;->left:I

    iget v0, p5, Landroid/graphics/Rect;->top:I

    iget p5, p5, Landroid/graphics/Rect;->right:I

    iget-object v2, p4, Lˈᐧ/ʽ;->ʽ:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ne v3, p3, :cond_b

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v0, :cond_b

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, p5, :cond_b

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, p2, :cond_b

    iget-boolean v3, p4, Lˈᐧ/ʽ;->ﹳﹳ:Z

    if-eq v6, v3, :cond_c

    :cond_b
    invoke-virtual {v2, p3, v0, p5, p2}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p4, Lˈᐧ/ʽ;->ᵔٴ:Z

    iput-boolean v6, p4, Lˈᐧ/ʽ;->ﹳﹳ:Z

    :cond_c
    invoke-virtual {p4, v1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵎﹶ()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-boolean p2, p1, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    if-nez p2, :cond_e

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﾞʻ()V

    return-void

    :cond_d
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    throw p2

    :cond_e
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋـ:Z

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋـ:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    invoke-virtual {v0}, Lʽˊ/ʼᐧ;->ᵔʾ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHintMaxLines()I

    move-result p1

    if-ne p1, p2, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget-object v2, v0, Lˈᐧ/ʽ;->ˑٴ:Landroid/text/TextPaint;

    iget v1, v0, Lˈᐧ/ʽ;->ʼˎ:F

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lˈᐧ/ʽ;->יـ:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, v0, Lˈᐧ/ʽ;->ᴵˑ:F

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget v1, v0, Lˈᐧ/ʽ;->ʻᵎ:I

    iget-object v3, v0, Lˈᐧ/ʽ;->ᴵˊ:Ljava/lang/CharSequence;

    int-to-float v6, p1

    iget v4, v0, Lˈᐧ/ʽ;->ʼˎ:F

    iget v5, v0, Lˈᐧ/ʽ;->ᵔᵢ:F

    div-float/2addr v4, v5

    mul-float/2addr v4, v6

    iget-boolean v5, v0, Lˈᐧ/ʽ;->ˈٴ:Z

    invoke-virtual/range {v0 .. v5}, Lˈᐧ/ʽ;->ˑﹳ(ILandroid/text/TextPaint;Ljava/lang/CharSequence;FZ)Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iput v1, v0, Lˈᐧ/ʽ;->ˈˏ:I

    iget v1, v0, Lˈᐧ/ʽ;->ᵔᵢ:F

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lˈᐧ/ʽ;->ʻٴ:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, v0, Lˈᐧ/ʽ;->ˉـ:F

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget v1, v0, Lˈᐧ/ʽ;->ᴵʼ:I

    iget-object v3, v0, Lˈᐧ/ʽ;->ᴵˊ:Ljava/lang/CharSequence;

    iget-boolean v5, v0, Lˈᐧ/ʽ;->ˈٴ:Z

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lˈᐧ/ʽ;->ˑﹳ(ILandroid/text/TextPaint;Ljava/lang/CharSequence;FZ)Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iput v1, v0, Lˈᐧ/ʽ;->ﹶᐧ:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎᐧ:Landroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Lˈᐧ/ˈ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->ˈ(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lˈᐧ/ʽ;->ˈ:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-ne v6, v2, :cond_3

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-ne v6, v3, :cond_3

    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-ne v6, v4, :cond_3

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p2, v0, Lˈᐧ/ʽ;->ᵔٴ:Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʻٴ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﹳٴ()V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez v1, :cond_4

    goto/16 :goto_6

    :cond_4
    iget v1, v0, Lˈᐧ/ʽ;->ﹶᐧ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    int-to-float v1, v1

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lˈᐧ/ʽ;->ˑٴ:Landroid/text/TextPaint;

    iget v2, v0, Lˈᐧ/ʽ;->ᵔᵢ:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lˈᐧ/ʽ;->ʻٴ:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, v0, Lˈᐧ/ʽ;->ˉـ:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼˈ:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    new-instance v2, Landroid/text/TextPaint;

    const/16 v4, 0x81

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(I)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :try_start_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼˈ:Ljava/lang/CharSequence;

    new-instance v5, Lˈᐧ/ᵎﹶ;

    invoke-direct {v5, v4, v2, p1}, Lˈᐧ/ᵎﹶ;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, p2, :cond_6

    move p1, p2

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, v5, Lˈᐧ/ᵎﹶ;->ٴﹶ:Z

    iput-boolean p2, v5, Lˈᐧ/ᵎﹶ;->ˆʾ:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    iput p1, v5, Lˈᐧ/ᵎﹶ;->ᵎﹶ:F

    iput v2, v5, Lˈᐧ/ᵎﹶ;->ᵔᵢ:F

    new-instance p1, Lʻʿ/ˈ;

    const/16 v2, 0xb

    invoke-direct {p1, v2, p0}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    iput-object p1, v5, Lˈᐧ/ᵎﹶ;->ˉʿ:Lʻʿ/ˈ;

    invoke-virtual {v5}, Lˈᐧ/ᵎﹶ;->ﹳٴ()Landroid/text/StaticLayout;

    move-result-object p1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-ne v2, p2, :cond_7

    invoke-virtual {v0}, Lˈᐧ/ʽ;->ﾞᴵ()F

    move-result p2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽᵔ:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈٴ:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_7
    move p2, v3

    :goto_3
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    add-float v3, p1, p2

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TextInputLayout"

    nop

    :cond_8
    :goto_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p2, p1

    if-gez p2, :cond_9

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_9
    :goto_6
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    instance-of v0, p1, Lʽˊ/ʽʽ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʽˊ/ʽʽ;

    iget-object v0, p1, Lᴵˑ/ⁱˊ;->ʾˋ:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lʽˊ/ʽʽ;->ʽʽ:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-boolean p1, p1, Lʽˊ/ʽʽ;->ˈٴ:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/leanback/widget/ᵔʾ;

    const/16 v0, 0xc

    invoke-direct {p1, v0, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 13

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴﹳ:Z

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object p1, p1, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽⁱ:Landroid/graphics/RectF;

    invoke-interface {p1, v1}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v2, v2, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    invoke-interface {v2, v1}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v3, v3, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    invoke-interface {v3, v1}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v4, v4, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-interface {v4, v1}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v5, v4, Lˋⁱ/ᵔʾ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    iget-object v6, v4, Lˋⁱ/ᵔʾ;->ⁱˊ:Lﹳˋ/ٴﹶ;

    iget-object v7, v4, Lˋⁱ/ᵔʾ;->ˈ:Lﹳˋ/ٴﹶ;

    iget-object v4, v4, Lˋⁱ/ᵔʾ;->ʽ:Lﹳˋ/ٴﹶ;

    new-instance v8, Lˋⁱ/ﾞᴵ;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lˋⁱ/ﾞᴵ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lˋⁱ/ﾞᴵ;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lˋⁱ/ﾞᴵ;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lˋⁱ/ﹳٴ;

    invoke-direct {v12, v2}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance v2, Lˋⁱ/ﹳٴ;

    invoke-direct {v2, p1}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance p1, Lˋⁱ/ﹳٴ;

    invoke-direct {p1, v1}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance v1, Lˋⁱ/ﹳٴ;

    invoke-direct {v1, v3}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance v3, Lˋⁱ/ᵔʾ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v6, v3, Lˋⁱ/ᵔʾ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    iput-object v5, v3, Lˋⁱ/ᵔʾ;->ⁱˊ:Lﹳˋ/ٴﹶ;

    iput-object v7, v3, Lˋⁱ/ᵔʾ;->ʽ:Lﹳˋ/ٴﹶ;

    iput-object v4, v3, Lˋⁱ/ᵔʾ;->ˈ:Lﹳˋ/ٴﹶ;

    iput-object v12, v3, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    iput-object v2, v3, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    iput-object v1, v3, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    iput-object p1, v3, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    iput-object v8, v3, Lˋⁱ/ᵔʾ;->ʼˎ:Lˋⁱ/ﾞᴵ;

    iput-object v9, v3, Lˋⁱ/ᵔʾ;->ˆʾ:Lˋⁱ/ﾞᴵ;

    iput-object v10, v3, Lˋⁱ/ᵔʾ;->ٴﹶ:Lˋⁱ/ﾞᴵ;

    iput-object v11, v3, Lˋⁱ/ᵔʾ;->ﾞʻ:Lˋⁱ/ﾞᴵ;

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴﹳ:Z

    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lʽˊ/ʽʽ;

    invoke-direct {v1, v0}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lʽˊ/ʽʽ;->ʽʽ:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget v2, v0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    if-eqz v2, :cond_1

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lʽˊ/ʽʽ;->ˈٴ:Z

    return-object v1
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱᴵ:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽˑ:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋˊ:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʽ()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱᴵ:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶˎ:I

    const v0, 0x101009c

    const v2, 0x101009e

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽˑ:I

    const v0, 0x1010367

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋˊ:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʽ()V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ٴﹶ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBoxCollapsedPaddingTop(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽᵔ:I

    return-void
.end method

.method public setBoxCornerFamily(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    invoke-virtual {v0}, Lˋⁱ/ᵔʾ;->ٴﹶ()Lˋⁱ/ˉʿ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v1, v1, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    invoke-static {p1}, Lﹳˋ/ʽʽ;->ᵎﹶ(I)Lﹳˋ/ٴﹶ;

    move-result-object v2

    iput-object v2, v0, Lˋⁱ/ˉʿ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ˑﹳ:Lˋⁱ/ˈ;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v1, v1, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    invoke-static {p1}, Lﹳˋ/ʽʽ;->ᵎﹶ(I)Lﹳˋ/ٴﹶ;

    move-result-object v2

    iput-object v2, v0, Lˋⁱ/ˉʿ;->ⁱˊ:Lﹳˋ/ٴﹶ;

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ﾞᴵ:Lˋⁱ/ˈ;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v1, v1, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    invoke-static {p1}, Lﹳˋ/ʽʽ;->ᵎﹶ(I)Lﹳˋ/ٴﹶ;

    move-result-object v2

    iput-object v2, v0, Lˋⁱ/ˉʿ;->ˈ:Lﹳˋ/ٴﹶ;

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ᵔᵢ:Lˋⁱ/ˈ;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    iget-object v1, v1, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-static {p1}, Lﹳˋ/ʽʽ;->ᵎﹶ(I)Lﹳˋ/ٴﹶ;

    move-result-object p1

    iput-object p1, v0, Lˋⁱ/ˉʿ;->ʽ:Lﹳˋ/ٴﹶ;

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-virtual {v0}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʽ()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻʿ:I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼᵢ:I

    const v0, 0x1010367

    const v2, 0x101009e

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶ:I

    const v0, 0x101009c

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    return-void
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->י:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˊ:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔי:Z

    if-eq v0, p1, :cond_4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    new-instance v3, Lˉˆ/ᐧﾞ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    const v4, 0x7f0b039f

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾﾞ:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v3, v0}, Lʽˊ/יـ;->ﹳٴ(Lˉˆ/ᐧﾞ;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07052a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔﹳ()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->ʼᐧ(Landroid/text/Editable;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v3, v0}, Lʽˊ/יـ;->ᵎﹶ(Lˉˆ/ᐧﾞ;I)V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔי:Z

    :cond_4
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˆﾞ:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˆﾞ:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˆﾞ:I

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔי:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ʼᐧ(Landroid/text/Editable;)V

    :cond_2
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋᵔ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋᵔ:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔﹳ()V

    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎᵔ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎᵔ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔﹳ()V

    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊˋ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊˋ:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔﹳ()V

    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿᵢ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿᵢ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔﹳ()V

    :cond_0
    return-void
.end method

.method public setCursorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﾞ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﾞ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﹳᐧ()V

    :cond_0
    return-void
.end method

.method public setCursorErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧᴵ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧᴵ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﹳᐧ()V

    :cond_2
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱי:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ـˆ(ZZ)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ˉʿ(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lʽˊ/ʼᐧ;->ᵎﹶ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʽˊ/ʼᐧ;->ᵎﹶ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    iget-object p1, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, p1, v3}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, p1}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object p1, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, p1, v3}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, p1}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setEndIconMinSize(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-ltz p1, :cond_1

    iget v1, v0, Lʽˊ/ʼᐧ;->ˆﾞ:I

    if-eq p1, v1, :cond_0

    iput p1, v0, Lʽˊ/ʼᐧ;->ˆﾞ:I

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "endIconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndIconMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʽˊ/ʼᐧ;->ᵔᵢ(I)V

    return-void
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˈʿ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v0}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ˈʿ:Landroid/view/View$OnLongClickListener;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0, p1}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ᵔٴ:Landroid/widget/ImageView$ScaleType;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, p1, v0}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v0, p1}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʽˊ/ʼᐧ;->ʼˎ(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-boolean v1, v0, Lʽˊ/יـ;->ᵔﹳ:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lʽˊ/יـ;->ʽ()V

    iput-object p1, v0, Lʽˊ/יـ;->ʼᐧ:Ljava/lang/CharSequence;

    iget-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lʽˊ/יـ;->ᵔʾ:I

    if-eq v1, v2, :cond_2

    iput v2, v0, Lʽˊ/יـ;->ˉˆ:I

    :cond_2
    iget v2, v0, Lʽˊ/יـ;->ˉˆ:I

    iget-object v3, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v3, p1}, Lʽˊ/יـ;->ᵔᵢ(Lˉˆ/ᐧﾞ;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lʽˊ/יـ;->ʼˎ(IIZ)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lʽˊ/יـ;->ﾞᴵ()V

    return-void
.end method

.method public setErrorAccessibilityLiveRegion(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iput p1, v0, Lʽˊ/יـ;->ˏי:I

    iget-object v0, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    :cond_0
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iput-object p1, v0, Lʽˊ/יـ;->יـ:Ljava/lang/CharSequence;

    iget-object v0, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v1, v0, Lʽˊ/יـ;->ᵔᵢ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v2, v0, Lʽˊ/יـ;->ᵔﹳ:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lʽˊ/יـ;->ʽ()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    new-instance v1, Lˉˆ/ᐧﾞ;

    iget-object v4, v0, Lʽˊ/יـ;->ᵎﹶ:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    const v3, 0x7f0b03a0

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    iget-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v1, v0, Lʽˊ/יـ;->ᴵˊ:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v3, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget v1, v0, Lʽˊ/יـ;->ʽﹳ:I

    iput v1, v0, Lʽˊ/יـ;->ʽﹳ:I

    iget-object v3, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v3, :cond_2

    iget-object v4, v0, Lʽˊ/יـ;->ᵔᵢ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔʾ(Lˉˆ/ᐧﾞ;I)V

    :cond_2
    iget-object v1, v0, Lʽˊ/יـ;->ʻٴ:Landroid/content/res/ColorStateList;

    iput-object v1, v0, Lʽˊ/יـ;->ʻٴ:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v1, v0, Lʽˊ/יـ;->יـ:Ljava/lang/CharSequence;

    iput-object v1, v0, Lʽˊ/יـ;->יـ:Ljava/lang/CharSequence;

    iget-object v3, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget v1, v0, Lʽˊ/יـ;->ˏי:I

    iput v1, v0, Lʽˊ/יـ;->ˏי:I

    iget-object v3, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    :cond_5
    iget-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v1, v2}, Lʽˊ/יـ;->ﹳٴ(Lˉˆ/ᐧﾞ;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lʽˊ/יـ;->ﾞᴵ()V

    iget-object v4, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v4, v2}, Lʽˊ/יـ;->ᵎﹶ(Lˉˆ/ᐧﾞ;I)V

    iput-object v3, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->ˏי()V

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    :goto_0
    iput-boolean p1, v0, Lʽˊ/יـ;->ᵔﹳ:Z

    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lʽˊ/ʼᐧ;->ˆʾ(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˈٴ:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1, v0}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʽˊ/ʼᐧ;->ˆʾ(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˊʻ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v0}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ˊʻ:Landroid/view/View$OnLongClickListener;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0, p1}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ˈٴ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ˈٴ:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, p1, v0}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˈٴ:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v0, p1}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iput p1, v0, Lʽˊ/יـ;->ʽﹳ:I

    iget-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lʽˊ/יـ;->ᵔᵢ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔʾ(Lˉˆ/ᐧﾞ;I)V

    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iput-object p1, v0, Lʽˊ/יـ;->ʻٴ:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎʾ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎʾ:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ـˆ(ZZ)V

    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    if-eqz v0, :cond_1

    iget-boolean p1, v1, Lʽˊ/יـ;->ʾᵎ:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, v1, Lʽˊ/יـ;->ʾᵎ:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    :cond_2
    invoke-virtual {v1}, Lʽˊ/יـ;->ʽ()V

    iput-object p1, v1, Lʽˊ/יـ;->ـˆ:Ljava/lang/CharSequence;

    iget-object v0, v1, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v1, Lʽˊ/יـ;->ᵔʾ:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iput v2, v1, Lʽˊ/יـ;->ˉˆ:I

    :cond_3
    iget v2, v1, Lʽˊ/יـ;->ˉˆ:I

    iget-object v3, v1, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v3, p1}, Lʽˊ/יـ;->ᵔᵢ(Lˉˆ/ᐧﾞ;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v1, v0, v2, p1}, Lʽˊ/יـ;->ʼˎ(IIZ)V

    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iput-object p1, v0, Lʽˊ/יـ;->ʾˋ:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v1, v0, Lʽˊ/יـ;->ᵔᵢ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v2, v0, Lʽˊ/יـ;->ʾᵎ:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lʽˊ/יـ;->ʽ()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    new-instance v1, Lˉˆ/ᐧﾞ;

    iget-object v4, v0, Lʽˊ/יـ;->ᵎﹶ:Landroid/content/Context;

    invoke-direct {v1, v4, v2}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    const v2, 0x7f0b03a1

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v1, v0, Lʽˊ/יـ;->ᴵˊ:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    iget v1, v0, Lʽˊ/יـ;->ᵢˏ:I

    iput v1, v0, Lʽˊ/יـ;->ᵢˏ:I

    iget-object v2, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget-object v1, v0, Lʽˊ/יـ;->ʾˋ:Landroid/content/res/ColorStateList;

    iput-object v1, v0, Lʽˊ/יـ;->ʾˋ:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v1, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v1, v3}, Lʽˊ/יـ;->ﹳٴ(Lˉˆ/ᐧﾞ;I)V

    iget-object v1, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    new-instance v2, Landroidx/leanback/widget/ˆﾞ;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Landroidx/leanback/widget/ˆﾞ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lʽˊ/יـ;->ʽ()V

    iget v4, v0, Lʽˊ/יـ;->ᵔʾ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const/4 v5, 0x0

    iput v5, v0, Lʽˊ/יـ;->ˉˆ:I

    :cond_5
    iget v5, v0, Lʽˊ/יـ;->ˉˆ:I

    iget-object v6, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lʽˊ/יـ;->ᵔᵢ(Lˉˆ/ᐧﾞ;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lʽˊ/יـ;->ʼˎ(IIZ)V

    iget-object v4, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v4, v3}, Lʽˊ/יـ;->ᵎﹶ(Lˉˆ/ᐧﾞ;I)V

    iput-object v2, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->ˏי()V

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    :goto_0
    iput-boolean p1, v0, Lʽˊ/יـ;->ʾᵎ:Z

    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iput p1, v0, Lʽˊ/יـ;->ᵢˏ:I

    iget-object v0, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setHint(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑˆ:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻᵎ:Z

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʻٴ()V

    :cond_4
    return-void
.end method

.method public setHintMaxLines(I)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget v1, v0, Lˈᐧ/ʽ;->ʻᵎ:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    iput p1, v0, Lˈᐧ/ʽ;->ʻᵎ:I

    invoke-virtual {v0, v2}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_0
    iget v1, v0, Lˈᐧ/ʽ;->ᴵʼ:I

    if-eq p1, v1, :cond_1

    iput p1, v0, Lˈᐧ/ʽ;->ᴵʼ:I

    invoke-virtual {v0, v2}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 5

    .prologue
    new-instance v0, Lﹳ/ˈ;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget-object v2, v1, Lˈᐧ/ʽ;->ﹳٴ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Lﹳ/ˈ;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lﹳ/ˈ;->ٴﹶ:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, v1, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, Lﹳ/ˈ;->ﾞʻ:F

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_1

    iput p1, v1, Lˈᐧ/ʽ;->ʼˎ:F

    :cond_1
    iget-object p1, v0, Lﹳ/ˈ;->ﹳٴ:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, v1, Lˈᐧ/ʽ;->ˈⁱ:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Lﹳ/ˈ;->ﾞᴵ:F

    iput p1, v1, Lˈᐧ/ʽ;->ـˏ:F

    iget p1, v0, Lﹳ/ˈ;->ᵎﹶ:F

    iput p1, v1, Lˈᐧ/ʽ;->ﹳـ:F

    iget p1, v0, Lﹳ/ˈ;->ᵔᵢ:F

    iput p1, v1, Lˈᐧ/ʽ;->ʼˈ:F

    iget p1, v0, Lﹳ/ˈ;->ˆʾ:F

    iput p1, v1, Lˈᐧ/ʽ;->ᴵˑ:F

    iget-object p1, v1, Lˈᐧ/ʽ;->ᵢˏ:Lﹳ/ﹳٴ;

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p1, Lﹳ/ﹳٴ;->ˑﹳ:Z

    :cond_3
    new-instance p1, Lﹳ/ﹳٴ;

    new-instance v3, Lﹳי/ʽ;

    invoke-direct {v3, v1}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lﹳ/ˈ;->ﹳٴ()V

    iget-object v4, v0, Lﹳ/ˈ;->ʼᐧ:Landroid/graphics/Typeface;

    invoke-direct {p1, v3, v4}, Lﹳ/ﹳٴ;-><init>(Lﹳי/ʽ;Landroid/graphics/Typeface;)V

    iput-object p1, v1, Lˈᐧ/ʽ;->ᵢˏ:Lﹳ/ﹳٴ;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, v1, Lˈᐧ/ʽ;->ᵢˏ:Lﹳ/ﹳٴ;

    invoke-virtual {v0, p1, v2}, Lﹳ/ˈ;->ⁱˊ(Landroid/content/Context;Lᴵˋ/ˊʻ;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    iget-object v0, v1, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱי:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->ـˆ(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʻٴ()V

    :cond_4
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱי:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget-object v2, v0, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    if-eq v2, p1, :cond_0

    iput-object p1, v0, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱי:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ـˆ(ZZ)V

    :cond_1
    return-void
.end method

.method public setLengthCounter(Lʽˊ/ᴵˊ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈʿ:Lʽˊ/ᴵˊ;

    return-void
.end method

.method public setMaxEms(I)V
    .locals 2

    .prologue
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˉٴ:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxEms(I)V

    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2

    .prologue
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴʼ:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setMaxWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    return-void
.end method

.method public setMinEms(I)V
    .locals 2

    .prologue
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᵢ:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinEms(I)V

    :cond_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 2

    .prologue
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎⁱ:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_0
    return-void
.end method

.method public setMinWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    if-eqz p1, :cond_0

    iget v1, v0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Lʽˊ/ʼᐧ;->ᵔᵢ(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lʽˊ/ʼᐧ;->ᵔᵢ(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, p1, v0}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iput-object p1, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v0, p1}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ᐧﾞ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    const v3, 0x7f0b03a2

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﾞᴵ()Lˑʿ/ʼˎ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˉـ:Lˑʿ/ʼˎ;

    const-wide/16 v3, 0x43

    iput-wide v3, v0, Lˑʿ/ʻٴ;->ᴵˊ:J

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﾞᴵ()Lˑʿ/ʼˎ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿ:Lˑʿ/ʼˎ;

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˑ:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈⁱ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    new-instance v3, Lcom/google/android/material/datepicker/ᵎﹶ;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/google/android/material/datepicker/ᵎﹶ;-><init>(I)V

    invoke-static {v0, v3}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˏ:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼˈ:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ʾᵎ(Landroid/text/Editable;)V

    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 1

    .prologue
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˑ:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈⁱ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈⁱ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Lʽˊ/ʾᵎ;->ʽʽ:Ljava/lang/CharSequence;

    iget-object v1, v0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lʽˊ/ʾᵎ;->ﾞᴵ()V

    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʽ()V

    :cond_0
    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {v0, p1}, Lʽˊ/ʾᵎ;->ⁱˊ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconDrawable(I)V
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
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {v0, p1}, Lʽˊ/ʾᵎ;->ʽ(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconMinSize(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    if-ltz p1, :cond_1

    iget v1, v0, Lʽˊ/ʾᵎ;->ٴᵢ:I

    if-eq p1, v1, :cond_0

    iput p1, v0, Lʽˊ/ʾᵎ;->ٴᵢ:I

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "startIconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v1, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ᵎⁱ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v0}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iput-object p1, v0, Lʽˊ/ʾᵎ;->ᵎⁱ:Landroid/view/View$OnLongClickListener;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0, p1}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iput-object p1, v0, Lʽˊ/ʾᵎ;->ˉٴ:Landroid/widget/ImageView$ScaleType;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v1, v0, Lʽˊ/ʾᵎ;->ᴵᵔ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lʽˊ/ʾᵎ;->ᴵᵔ:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lʽˊ/ʾᵎ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ˊʻ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, p1, v0}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v1, v0, Lʽˊ/ʾᵎ;->ˊʻ:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lʽˊ/ʾᵎ;->ˊʻ:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, v0, Lʽˊ/ʾᵎ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʾᵎ;->ᴵᵔ:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v0, p1}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {v0, p1}, Lʽˊ/ʾᵎ;->ˈ(Z)V

    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lʽˊ/ʼᐧ;->ˉˆ()V

    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lʽˊ/ʾˋ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾﾞ:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_2

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾﾞ:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    invoke-virtual {v0, p1}, Lˈᐧ/ʽ;->ᵔʾ(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v1, v0, Lʽˊ/יـ;->ᴵˊ:Landroid/graphics/Typeface;

    if-eq p1, v1, :cond_1

    iput-object p1, v0, Lʽˊ/יـ;->ᴵˊ:Landroid/graphics/Typeface;

    iget-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, v0, Lʽˊ/יـ;->ʼʼ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method

.method public final ʻٴ()V
    .locals 4

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˋ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˑﹳ()I

    move-result v2

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v2, v3, :cond_0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final ʼʼ(ZZ)V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    const v2, 0x1010367

    const v3, 0x101009e

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    const v4, 0x10102fe

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    return-void

    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    return-void
.end method

.method public final ʼˎ(IZ)I
    .locals 1

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {p2}, Lʽˊ/ʾᵎ;->ﹳٴ()I

    move-result p2

    :goto_0
    add-int/2addr p2, p1

    return p2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {p2}, Lʽˊ/ʼᐧ;->ʽ()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p2

    goto :goto_0
.end method

.method public final ʼᐧ(Landroid/text/Editable;)V
    .locals 11

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈʿ:Lʽˊ/ᴵˊ;

    check-cast v0, Lʻʿ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˆﾞ:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    goto/16 :goto_5

    :cond_1
    const/4 v3, 0x1

    if-le p1, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˆﾞ:I

    iget-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v7, :cond_3

    const v7, 0x7f13003b

    goto :goto_2

    :cond_3
    const v7, 0x7f13003a

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v0

    aput-object v6, v10, v3

    invoke-virtual {v2, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔﹳ()V

    :cond_4
    sget-object v2, Lˈʿ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v3, :cond_5

    sget-object v2, Lˈʿ/ⁱˊ;->ˑﹳ:Lˈʿ/ⁱˊ;

    goto :goto_3

    :cond_5
    sget-object v2, Lˈʿ/ⁱˊ;->ˈ:Lˈʿ/ⁱˊ;

    :goto_3
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˆﾞ:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v0

    aput-object v7, v8, v3

    const p1, 0x7f13003c

    invoke-virtual {v6, p1, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lˈʿ/ﾞᴵ;->ﹳٴ:Lar/tvplayer/core/domain/ʽﹳ;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2, p1}, Lˈʿ/ⁱˊ;->ʽ(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eq v1, p1, :cond_7

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ـˆ(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˏי()V

    :cond_7
    return-void
.end method

.method public final ʽ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    if-le v0, v2, :cond_2

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    int-to-float v0, v0

    iget-object v4, v3, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput v0, v4, Lˋⁱ/ᵎﹶ;->ˆʾ:F

    invoke-virtual {v3}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, v3, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v4, v1, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eq v4, v0, :cond_2

    iput-object v0, v1, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v3, v0}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040170

    invoke-static {v1, v3, v0}, Lʽٴ/ˈ;->ˆʾ(Landroid/content/Context;II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    invoke-static {v1, v0}, Lᵎⁱ/ﹳٴ;->ⁱˊ(II)I

    move-result v0

    :cond_3
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳﹳ:Lˋⁱ/ʼˎ;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻʿ:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʽﹳ()V

    return-void
.end method

.method public final ʽﹳ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶᐧ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶᐧ:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final ʾᵎ(Landroid/text/Editable;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈʿ:Lʽˊ/ᴵˊ;

    check-cast v0, Lʻʿ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˋ:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˏ:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼˈ:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼˈ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˉـ:Lˑʿ/ʼˎ;

    invoke-static {v1, p1}, Lˑʿ/ᵢˏ;->ﹳٴ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˏ:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿ:Lˑʿ/ʼˎ;

    invoke-static {v1, p1}, Lˑʿ/ᵢˏ;->ﹳٴ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final ˆʾ(IZ)I
    .locals 1

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {p2}, Lʽˊ/ʼᐧ;->ʽ()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {p2}, Lʽˊ/ʾᵎ;->ﹳٴ()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p2

    goto :goto_0
.end method

.method public final ˈ(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->יﹳ:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ʼˎ(IZ)I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ˆʾ(IZ)I

    move-result p1

    iput p1, v3, Landroid/graphics/Rect;->right:I

    return-object v3

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˑﹳ()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, v3, Landroid/graphics/Rect;->right:I

    return-object v3

    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ʼˎ(IZ)I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽᵔ:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->ˆʾ(IZ)I

    move-result p1

    iput p1, v3, Landroid/graphics/Rect;->right:I

    return-object v3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final ˉˆ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget v1, v0, Lʽˊ/יـ;->ˉˆ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lʽˊ/יـ;->ʼᐧ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˏי()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lˉˆ/ٴﹳ;->ﹳٴ:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Lˉˆ/ˏי;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Lˉˆ/ˏי;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final ˑﹳ()I
    .locals 6

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHintMaxLines()I

    move-result v0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Lˈᐧ/ʽ;->ﾞᴵ()F

    move-result v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    return v0

    :cond_2
    invoke-virtual {v2}, Lˈᐧ/ʽ;->ﾞᴵ()F

    move-result v0

    iget-object v3, v2, Lˈᐧ/ʽ;->ˑٴ:Landroid/text/TextPaint;

    iget v5, v2, Lˈᐧ/ʽ;->ʼˎ:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, v2, Lˈᐧ/ʽ;->יـ:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, v2, Lˈᐧ/ʽ;->ᴵˑ:F

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_3
    invoke-virtual {v2}, Lˈᐧ/ʽ;->ﾞᴵ()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final יـ()Z
    .locals 10

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱˉ:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧˎ:I

    if-eq v6, v0, :cond_3

    :cond_2
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱˉ:Landroid/graphics/drawable/ColorDrawable;

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧˎ:I

    invoke-virtual {v6, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v6, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱˉ:Landroid/graphics/drawable/ColorDrawable;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    aget-object v8, v0, v5

    aget-object v9, v0, v3

    aget-object v0, v0, v4

    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱˉ:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    aget-object v7, v0, v5

    aget-object v8, v0, v3

    aget-object v0, v0, v4

    invoke-virtual {v6, v2, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱˉ:Landroid/graphics/drawable/ColorDrawable;

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    invoke-virtual {v6}, Lʽˊ/ʼᐧ;->ˑﹳ()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, v6, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lʽˊ/ʼᐧ;->ˈ()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    iget-object v7, v6, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    if-eqz v7, :cond_d

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_d

    iget-object v7, v6, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Lʽˊ/ʼᐧ;->ˑﹳ()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v2, v6, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    goto :goto_2

    :cond_8
    iget v8, v6, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Lʽˊ/ʼᐧ;->ˈ()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v2, v6, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    add-int v7, v2, v6

    :cond_a
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˊ:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_b

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎʿ:I

    if-eq v8, v7, :cond_b

    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎʿ:I

    invoke-virtual {v6, v1, v1, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    aget-object v1, v2, v1

    aget-object v3, v2, v5

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˊ:Landroid/graphics/drawable/ColorDrawable;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v3, v6, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return v5

    :cond_b
    if-nez v6, :cond_c

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˊ:Landroid/graphics/drawable/ColorDrawable;

    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎʿ:I

    invoke-virtual {v6, v1, v1, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c
    aget-object v3, v2, v3

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˊ:Landroid/graphics/drawable/ColorDrawable;

    if-eq v3, v6, :cond_f

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿـ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    aget-object v1, v2, v1

    aget-object v3, v2, v5

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v3, v6, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return v5

    :cond_d
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˊ:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v3, v6, v3

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˊ:Landroid/graphics/drawable/ColorDrawable;

    if-ne v3, v7, :cond_e

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v3, v6, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿـ:Landroid/graphics/drawable/Drawable;

    aget-object v4, v6, v4

    invoke-virtual {v0, v1, v3, v7, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_e
    move v5, v0

    :goto_3
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˊ:Landroid/graphics/drawable/ColorDrawable;

    return v5

    :cond_f
    return v0
.end method

.method public final ـˆ(ZZ)V
    .locals 9

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    if-eqz v5, :cond_2

    invoke-virtual {v6, v5}, Lˈᐧ/ʽ;->ٴﹶ(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 v5, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳⁱ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    const v7, -0x101009e

    filled-new-array {v7}, [I

    move-result-object v7

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼᵢ:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼᵢ:I

    :goto_2
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lˈᐧ/ʽ;->ٴﹶ(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-object v0, v0, Lʽˊ/יـ;->ﹳᐧ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v5

    :goto_3
    invoke-virtual {v6, v0}, Lˈᐧ/ʽ;->ٴﹶ(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lˈᐧ/ʽ;->ٴﹶ(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱי:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    iget-object v7, v6, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    if-eq v7, v0, :cond_8

    iput-object v0, v6, Lˈᐧ/ʽ;->ٴﹶ:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v2}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎʾ:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    if-nez p2, :cond_10

    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    const/4 p2, 0x0

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑˆ:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->ⁱˊ(F)V

    goto :goto_5

    :cond_c
    invoke-virtual {v6, p2}, Lˈᐧ/ʽ;->ˉʿ(F)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    check-cast p1, Lʽˊ/ᵎﹶ;

    iget-object p1, p1, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    iget-object p1, p1, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    check-cast p1, Lʽˊ/ᵎﹶ;

    invoke-virtual {p1, p2, p2, p2, p2}, Lʽˊ/ᵎﹶ;->ʽﹳ(FFFF)V

    :cond_d
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    if-eqz p1, :cond_e

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـˏ:Z

    if-eqz p2, :cond_e

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˋ:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿ:Lˑʿ/ʼˎ;

    invoke-static {p1, p2}, Lˑʿ/ᵢˏ;->ﹳٴ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳـ:Lˉˆ/ᐧﾞ;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iput-boolean v3, v7, Lʽˊ/ʾᵎ;->ٴʼ:Z

    invoke-virtual {v7}, Lʽˊ/ʾᵎ;->ﾞᴵ()V

    iput-boolean v3, v0, Lʽˊ/ʼᐧ;->ˊˋ:Z

    invoke-virtual {v0}, Lʽˊ/ʼᐧ;->ˉˆ()V

    return-void

    :cond_f
    :goto_6
    if-nez p2, :cond_11

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    if-eqz p2, :cond_10

    goto :goto_7

    :cond_10
    return-void

    :cond_11
    :goto_7
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑˆ:Z

    if-eqz p1, :cond_13

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->ⁱˊ(F)V

    goto :goto_8

    :cond_13
    invoke-virtual {v6, p2}, Lˈᐧ/ʽ;->ˉʿ(F)V

    :goto_8
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﾞʻ()V

    :cond_14
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez p1, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    :goto_9
    invoke-virtual {p0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->ʾᵎ(Landroid/text/Editable;)V

    iput-boolean v2, v7, Lʽˊ/ʾᵎ;->ٴʼ:Z

    invoke-virtual {v7}, Lʽˊ/ʾᵎ;->ﾞᴵ()V

    iput-boolean v2, v0, Lʽˊ/ʼᐧ;->ˊˋ:Z

    invoke-virtual {v0}, Lʽˊ/ʼᐧ;->ˉˆ()V

    return-void
.end method

.method public final ٴﹶ()V
    .locals 6

    .prologue
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    instance-of v0, v0, Lʽˊ/ᵎﹶ;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    sget v4, Lʽˊ/ᵎﹶ;->ـﹶ:I

    new-instance v4, Lʽˊ/ˑﹳ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lˋⁱ/ᵔʾ;

    invoke-direct {v0}, Lˋⁱ/ᵔʾ;-><init>()V

    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {v4, v0, v5}, Lʽˊ/ˑﹳ;-><init>(Lˋⁱ/ᵔʾ;Landroid/graphics/RectF;)V

    new-instance v0, Lʽˊ/ﾞᴵ;

    invoke-direct {v0, v4}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵎﹶ;)V

    iput-object v4, v0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    goto :goto_1

    :cond_1
    new-instance v0, Lˋⁱ/ʼˎ;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    invoke-direct {v0, v4}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    :goto_1
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳﹳ:Lˋⁱ/ʼˎ;

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const-string v3, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-static {v1, v2, v3}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lˋⁱ/ʼˎ;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑʼ:Lˋⁱ/ᵔʾ;

    invoke-direct {v0, v3}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    new-instance v0, Lˋⁱ/ʼˎ;

    invoke-direct {v0}, Lˋⁱ/ʼˎ;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳﹳ:Lˋⁱ/ʼˎ;

    new-instance v0, Lˋⁱ/ʼˎ;

    invoke-direct {v0}, Lˋⁱ/ʼˎ;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹳﹳ:Lˋⁱ/ʼˎ;

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻˋ:Lˋⁱ/ʼˎ;

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʽﹳ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵢˏ()V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070464

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽᵔ:I

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ᴵᵔ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070463

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽᵔ:I

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﹳٴ()V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʻٴ()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    instance-of v3, v0, Landroid/widget/AutoCompleteTextView;

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_a

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-ne v3, v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_9
    if-ne v3, v2, :cond_a

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final ᵎﹶ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˏᵢ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵʼ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    instance-of v0, v0, Lʽˊ/ᵎﹶ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔʾ(Lˉˆ/ᐧﾞ;I)V
    .locals 1

    .prologue
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, -0xff01

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    :goto_0
    const p2, 0x7f140252

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060095

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final ᵔᵢ(Z)Lˋⁱ/ʼˎ;
    .locals 14

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    instance-of v2, v1, Lʽˊ/ʻٴ;

    if-eqz v2, :cond_1

    check-cast v1, Lʽˊ/ʻٴ;

    invoke-virtual {v1}, Lʽˊ/ʻٴ;->getPopupElevation()F

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    new-instance v3, Lˋⁱ/ٴﹶ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lˋⁱ/ٴﹶ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lˋⁱ/ٴﹶ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lˋⁱ/ٴﹶ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lˋⁱ/ﾞᴵ;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lˋⁱ/ﾞᴵ;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lˋⁱ/ﾞᴵ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lˋⁱ/ﾞᴵ;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lˋⁱ/ﹳٴ;

    invoke-direct {v11, p1}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance v12, Lˋⁱ/ﹳٴ;

    invoke-direct {v12, p1}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance p1, Lˋⁱ/ﹳٴ;

    invoke-direct {p1, v0}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance v13, Lˋⁱ/ﹳٴ;

    invoke-direct {v13, v0}, Lˋⁱ/ﹳٴ;-><init>(F)V

    new-instance v0, Lˋⁱ/ᵔʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lˋⁱ/ᵔʾ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    iput-object v4, v0, Lˋⁱ/ᵔʾ;->ⁱˊ:Lﹳˋ/ٴﹶ;

    iput-object v5, v0, Lˋⁱ/ᵔʾ;->ʽ:Lﹳˋ/ٴﹶ;

    iput-object v6, v0, Lˋⁱ/ᵔʾ;->ˈ:Lﹳˋ/ٴﹶ;

    iput-object v11, v0, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    iput-object v12, v0, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    iput-object v13, v0, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    iput-object p1, v0, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    iput-object v7, v0, Lˋⁱ/ᵔʾ;->ʼˎ:Lˋⁱ/ﾞᴵ;

    iput-object v8, v0, Lˋⁱ/ᵔʾ;->ˆʾ:Lˋⁱ/ﾞᴵ;

    iput-object v9, v0, Lˋⁱ/ᵔʾ;->ٴﹶ:Lˋⁱ/ﾞᴵ;

    iput-object v10, v0, Lˋⁱ/ᵔʾ;->ﾞʻ:Lˋⁱ/ﾞᴵ;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    instance-of v3, p1, Lʽˊ/ʻٴ;

    if-eqz v3, :cond_2

    check-cast p1, Lʽˊ/ʻٴ;

    invoke-virtual {p1}, Lʽˊ/ʻٴ;->getDropDownBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez p1, :cond_3

    sget-object p1, Lˋⁱ/ʼˎ;->ᴵʼ:Landroid/graphics/Paint;

    const-class p1, Lˋⁱ/ʼˎ;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const v4, 0x7f040170

    invoke-static {v4, v3, p1}, Lˈˋ/ʾˊ;->ʾˋ(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object p1

    invoke-static {v3, p1}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_3
    new-instance v4, Lˋⁱ/ʼˎ;

    invoke-direct {v4}, Lˋⁱ/ʼˎ;-><init>()V

    invoke-virtual {v4, v3}, Lˋⁱ/ʼˎ;->ﾞʻ(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v1}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    invoke-virtual {v4, v0}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    iget-object p1, v4, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, p1, Lˋⁱ/ᵎﹶ;->ᵎﹶ:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p1, Lˋⁱ/ᵎﹶ;->ᵎﹶ:Landroid/graphics/Rect;

    :cond_4
    iget-object p1, v4, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object p1, p1, Lˋⁱ/ᵎﹶ;->ᵎﹶ:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v4}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    return-object v4
.end method

.method public final ᵔﹳ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋᵔ:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊˋ:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->ᵔʾ(Lˉˆ/ᐧﾞ;I)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʿᵢ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎᵔ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final ᵢˏ()V
    .locals 10

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼᵢ:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->ʼʼ(ZZ)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ٴᴵ:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_8

    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->ʼʼ(ZZ)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵢ:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶ:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    goto :goto_4

    :cond_b
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʻʿ:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑ:I

    :goto_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_c

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﹳᐧ()V

    :cond_c
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v5, v4, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, v4, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v7, v4, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lʽˊ/ʼᐧ;->ˉʿ()V

    iget-object v8, v4, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v9, v4, Lʽˊ/ʼᐧ;->ˈٴ:Landroid/content/res/ColorStateList;

    invoke-static {v7, v8, v9}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget-object v8, v4, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    invoke-static {v7, v6, v8}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4}, Lʽˊ/ʼᐧ;->ⁱˊ()Lʽˊ/ᵔﹳ;

    move-result-object v7

    instance-of v7, v7, Lʽˊ/ٴﹶ;

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v6, v4}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_d
    iget-object v7, v4, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    iget-object v4, v4, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6, v7, v4}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_e
    :goto_5
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵˊ:Lʽˊ/ʾᵎ;

    iget-object v5, v4, Lʽˊ/ʾᵎ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, v4, Lʽˊ/ʾᵎ;->ˈٴ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v4, v4, Lʽˊ/ʾᵎ;->ᴵᵔ:Landroid/content/res/ColorStateList;

    invoke-static {v5, v6, v4}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʾˊ:I

    iput v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    goto :goto_6

    :cond_f
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->י:I

    iput v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    :goto_6
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    if-eq v5, v4, :cond_11

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵎﹶ()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﾞˋ:Z

    if-nez v4, :cond_11

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵎﹶ()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    check-cast v4, Lʽˊ/ᵎﹶ;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lʽˊ/ᵎﹶ;->ʽﹳ(FFFF)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ﾞʻ()V

    :cond_11
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    if-ne v4, v2, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ﹶˎ:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    goto :goto_7

    :cond_12
    if-eqz v3, :cond_13

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˋˊ:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    goto :goto_7

    :cond_13
    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽˑ:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    goto :goto_7

    :cond_14
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ⁱᴵ:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʼـ:I

    :cond_15
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ʽ()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    instance-of v3, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v3, :cond_17

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_18
    :goto_9
    return-void
.end method

.method public final ⁱˊ(F)V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget v1, v0, Lˈᐧ/ʽ;->ⁱˊ:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04045f

    sget-object v5, Lˑˏ/ﹳٴ;->ⁱˊ:Lᵎʻ/ﹳٴ;

    invoke-static {v3, v4, v5}, Lﹳˋ/ʽʽ;->ـˆ(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040455

    const/16 v5, 0xa7

    invoke-static {v3, v4, v5}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    new-instance v3, Lʽˊ/ᵢˏ;

    invoke-direct {v3, v2, p0}, Lʽˊ/ᵢˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    iget v0, v0, Lˈᐧ/ʽ;->ⁱˊ:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v2

    const/4 v0, 0x1

    aput p1, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˎˉ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ـᵎ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHintMaxLines()I

    move-result v0

    const v2, 0x7f07045f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070462

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070461

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ᴵᵔ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070460

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    invoke-virtual {v3}, Lˈᐧ/ʽ;->ﾞᴵ()F

    move-result v3

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈٴ:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final ﹳᐧ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﾞ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040139

    invoke-static {v0, v1}, Lˈˋ/ʾˊ;->ʼʼ(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_3

    invoke-static {v0, v3}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˑٴ:Lˉˆ/ᐧﾞ;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵔٴ:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧᴵ:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6

    move-object v0, v2

    :cond_6
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final ﾞʻ()V
    .locals 12

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˈـ:Lˈᐧ/ʽ;

    iget-object v3, v2, Lˈᐧ/ʽ;->ᴵˊ:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lˈᐧ/ʽ;->ʽ(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v2, Lˈᐧ/ʽ;->ˈٴ:Z

    iget-object v4, v2, Lˈᐧ/ʽ;->ˈ:Landroid/graphics/Rect;

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v7, 0x5

    const v8, 0x800005

    const/16 v9, 0x11

    if-eq v1, v9, :cond_6

    and-int/lit8 v10, v1, 0x7

    if-ne v10, v6, :cond_1

    goto :goto_3

    :cond_1
    and-int v10, v1, v8

    if-eq v10, v8, :cond_4

    and-int/lit8 v10, v1, 0x5

    if-ne v10, v7, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v10, v2, Lˈᐧ/ʽ;->ᵎᵔ:F

    :goto_0
    sub-float/2addr v3, v10

    goto :goto_4

    :cond_3
    iget v3, v4, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v3, v3

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    iget v3, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_5
    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v10, v2, Lˈᐧ/ʽ;->ᵎᵔ:F

    goto :goto_0

    :cond_6
    :goto_3
    int-to-float v3, v0

    div-float/2addr v3, v5

    iget v10, v2, Lˈᐧ/ʽ;->ᵎᵔ:F

    div-float/2addr v10, v5

    goto :goto_0

    :goto_4
    iget v10, v4, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v10, p0, Lcom/google/android/material/textfield/TextInputLayout;->ʽⁱ:Landroid/graphics/RectF;

    iput v3, v10, Landroid/graphics/RectF;->left:F

    iget v11, v4, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    iput v11, v10, Landroid/graphics/RectF;->top:F

    if-eq v1, v9, :cond_c

    and-int/lit8 v9, v1, 0x7

    if-ne v9, v6, :cond_7

    goto :goto_8

    :cond_7
    and-int v0, v1, v8

    if-eq v0, v8, :cond_a

    and-int/lit8 v0, v1, 0x5

    if-ne v0, v7, :cond_8

    goto :goto_7

    :cond_8
    iget-boolean v0, v2, Lˈᐧ/ʽ;->ˈٴ:Z

    if-eqz v0, :cond_9

    iget v0, v4, Landroid/graphics/Rect;->right:I

    :goto_5
    int-to-float v0, v0

    goto :goto_9

    :cond_9
    iget v0, v2, Lˈᐧ/ʽ;->ᵎᵔ:F

    :goto_6
    add-float/2addr v0, v3

    goto :goto_9

    :cond_a
    :goto_7
    iget-boolean v0, v2, Lˈᐧ/ʽ;->ˈٴ:Z

    if-eqz v0, :cond_b

    iget v0, v2, Lˈᐧ/ʽ;->ᵎᵔ:F

    goto :goto_6

    :cond_b
    iget v0, v4, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_c
    :goto_8
    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, v2, Lˈᐧ/ʽ;->ᵎᵔ:F

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    :goto_9
    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v10, Landroid/graphics/RectF;->right:F

    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v2}, Lˈᐧ/ʽ;->ﾞᴵ()F

    move-result v1

    add-float/2addr v1, v0

    iput v1, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v0, v2, Lˈᐧ/ʽ;->ʿᵢ:Landroid/text/StaticLayout;

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Lˈᐧ/ʽ;->ˉˆ()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v2, Lˈᐧ/ʽ;->ʿᵢ:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    iget v1, v2, Lˈᐧ/ʽ;->ʼˎ:F

    iget v3, v2, Lˈᐧ/ʽ;->ᵔᵢ:F

    div-float/2addr v1, v3

    mul-float/2addr v1, v0

    iget-boolean v0, v2, Lˈᐧ/ʽ;->ˈٴ:Z

    if-eqz v0, :cond_d

    iget v0, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->left:F

    goto :goto_a

    :cond_d
    iget v0, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->right:F

    :cond_e
    :goto_a
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_10

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    goto :goto_b

    :cond_f
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᵎʻ:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, v10, Landroid/graphics/RectF;->left:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    iput v0, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ᐧﹶ:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v10, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iput v1, v10, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ˊᵔ:Lˋⁱ/ʼˎ;

    check-cast v0, Lʽˊ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lʽˊ/ᵎﹶ;->ʽﹳ(FFFF)V

    :cond_10
    :goto_b
    return-void
.end method

.method public final ﾞᴵ()Lˑʿ/ʼˎ;
    .locals 4

    new-instance v0, Lˑʿ/ʼˎ;

    invoke-direct {v0}, Lˑʿ/ˋᵔ;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040457

    const/16 v3, 0x57

    invoke-static {v1, v2, v3}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lˑʿ/ʻٴ;->ʽʽ:J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040461

    sget-object v3, Lˑˏ/ﹳٴ;->ﹳٴ:Landroid/view/animation/LinearInterpolator;

    invoke-static {v1, v2, v3}, Lﹳˋ/ʽʽ;->ـˆ(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, v0, Lˑʿ/ʻٴ;->ˈٴ:Landroid/animation/TimeInterpolator;

    return-object v0
.end method
