.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Lʽʽ/ﹳٴ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "L\u02bd\u02bd/\ufe73\u0674;"
    }
.end annotation


# instance fields
.field public ʻٴ:I

.field public final ʻᵎ:Landroid/util/SparseIntArray;

.field public final ʼʼ:Lˋⁱ/ᵔʾ;

.field public final ʼˈ:F

.field public final ʼˎ:Lˋⁱ/ʼˎ;

.field public final ʼᐧ:Z

.field public final ʽ:F

.field public final ʽʽ:I

.field public final ʽﹳ:Z

.field public final ʾˋ:Lʻˑ/ﹳٴ;

.field public final ʾᵎ:Z

.field public final ʿ:Ljava/util/ArrayList;

.field public ʿᵢ:Landroid/view/VelocityTracker;

.field public final ˆʾ:Landroid/content/res/ColorStateList;

.field public ˆﾞ:Z

.field public final ˈ:I

.field public ˈʿ:Lˉـ/ˑﹳ;

.field public ˈٴ:I

.field public ˈⁱ:I

.field public ˉʿ:I

.field public final ˉˆ:Z

.field public ˉـ:Ljava/lang/ref/WeakReference;

.field public final ˉٴ:F

.field public final ˊʻ:F

.field public ˊˋ:Z

.field public final ˊᵔ:Landroid/util/SparseIntArray;

.field public ˋᵔ:I

.field public final ˏי:Z

.field public ˏᵢ:Ljava/util/HashMap;

.field public ˑٴ:Z

.field public ˑﹳ:I

.field public final יـ:Z

.field public ـˆ:I

.field public ـˏ:I

.field public final ـﹶ:Lᵔˉ/ⁱˊ;

.field public ٴʼ:Z

.field public ٴᵢ:I

.field public final ٴﹶ:I

.field public ᐧᴵ:Z

.field public ᐧﾞ:I

.field public final ᴵʼ:Landroid/util/SparseIntArray;

.field public final ᴵˊ:Landroid/animation/ValueAnimator;

.field public ᴵˑ:Ljava/lang/ref/WeakReference;

.field public ᴵᵔ:I

.field public final ᵎˊ:Z

.field public ᵎᵔ:I

.field public ᵎⁱ:Z

.field public ᵎﹶ:I

.field public final ᵔʾ:Z

.field public final ᵔי:Z

.field public ᵔٴ:I

.field public final ᵔᵢ:I

.field public final ᵔﹳ:Z

.field public ᵢˏ:Z

.field public ⁱˊ:Z

.field public ﹳـ:I

.field public final ﹳٴ:I

.field public final ﹳᐧ:Z

.field public final ﾞʻ:I

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳٴ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴﹶ:I

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞʻ:I

    new-instance v2, Lʻˑ/ﹳٴ;

    invoke-direct {v2, p0}, Lʻˑ/ﹳٴ;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾˋ:Lʻˑ/ﹳٴ;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊʻ:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ:F

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎˊ:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔי:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˈ:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿ:Ljava/util/ArrayList;

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵʼ:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʻᵎ:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊᵔ:Landroid/util/SparseIntArray;

    new-instance v0, Lᵔˉ/ⁱˊ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lᵔˉ/ⁱˊ;-><init>(Lʽʽ/ﹳٴ;I)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـﹶ:Lᵔˉ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳٴ:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴﹶ:I

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞʻ:I

    new-instance v3, Lʻˑ/ﹳٴ;

    invoke-direct {v3, p0}, Lʻˑ/ﹳٴ;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾˋ:Lʻˑ/ﹳٴ;

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊʻ:F

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ:F

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎˊ:Z

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔי:Z

    const/4 v5, 0x4

    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const v6, 0x3dcccccd    # 0.1f

    iput v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˈ:F

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿ:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵʼ:Landroid/util/SparseIntArray;

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʻᵎ:Landroid/util/SparseIntArray;

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊᵔ:Landroid/util/SparseIntArray;

    new-instance v6, Lᵔˉ/ⁱˊ;

    invoke-direct {v6, p0, v1}, Lᵔˉ/ⁱˊ;-><init>(Lʽʽ/ﹳٴ;I)V

    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـﹶ:Lᵔˉ/ⁱˊ;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔᵢ:I

    sget-object v6, Lיﹶ/ﹳٴ;->ﹳٴ:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p1, v6, v7}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˆʾ:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 v8, 0x16

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f040093

    const v9, 0x7f1404b6

    invoke-static {p1, p2, v8, v9}, Lˋⁱ/ᵔʾ;->ᵎﹶ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋⁱ/ˉʿ;

    move-result-object p2

    invoke-virtual {p2}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ:Lˋⁱ/ᵔʾ;

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ:Lˋⁱ/ᵔʾ;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v8, Lˋⁱ/ʼˎ;

    invoke-direct {v8, p2}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    iput-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    invoke-virtual {v8, p1}, Lˋⁱ/ʼˎ;->ﾞʻ(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˆʾ:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_3

    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    invoke-virtual {v8, p2}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010031

    invoke-virtual {v8, v9, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v8, p2}, Lˋⁱ/ʼˎ;->setTint(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏי()F

    move-result p2

    const/4 v8, 0x2

    new-array v9, v8, [F

    aput p2, v9, v0

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˊ:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˊ:Landroid/animation/ValueAnimator;

    new-instance v10, Lʽˊ/ᵢˏ;

    invoke-direct {v10, v8, p0}, Lʽˊ/ᵢˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ:F

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴﹶ:I

    :cond_4
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞʻ:I

    :cond_5
    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_6

    iget v8, v8, Landroid/util/TypedValue;->data:I

    if-ne v8, v2, :cond_6

    invoke-virtual {p0, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˊ(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˊ(I)V

    :goto_1
    const/16 v2, 0x9

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    const/4 v8, 0x5

    if-eq v4, v2, :cond_8

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-ne v2, v8, :cond_7

    invoke-virtual {p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽʽ(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ()V

    :cond_8
    const/16 v2, 0xe

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔʾ:Z

    const/4 v2, 0x7

    invoke-virtual {v6, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    const/4 v9, 0x6

    if-ne v4, v2, :cond_9

    goto :goto_3

    :cond_9
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->יـ()V

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-ne v2, v9, :cond_b

    goto :goto_2

    :cond_b
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    :goto_2
    invoke-virtual {p0, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ(IZ)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ()V

    :goto_3
    const/16 v2, 0xd

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴʼ:Z

    invoke-virtual {v6, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎˊ:Z

    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔי:Z

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳٴ:I

    const/16 v2, 0x8

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_10

    cmpl-float v3, v2, p2

    if-gez v3, :cond_10

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊʻ:F

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    int-to-float v3, v3

    sub-float/2addr p2, v2

    mul-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ:I

    :cond_c
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const-string v2, "offset must be greater than or equal to 0"

    const/16 v3, 0x10

    if-eqz p2, :cond_e

    iget v4, p2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_e

    iget p2, p2, Landroid/util/TypedValue;->data:I

    if-ltz p2, :cond_d

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽʽ:I

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ(IZ)V

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-virtual {v6, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_f

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽʽ:I

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ(IZ)V

    :goto_4
    const/16 p2, 0xc

    const/16 v2, 0x1f4

    invoke-virtual {v6, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈ:I

    const/16 p2, 0x12

    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉˆ:Z

    const/16 p2, 0x13

    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼᐧ:Z

    const/16 p2, 0x14

    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔﹳ:Z

    const/16 p2, 0x15

    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ:Z

    const/16 p2, 0xf

    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->יـ:Z

    invoke-virtual {v6, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏי:Z

    const/16 p2, 0x11

    invoke-virtual {v6, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽﹳ:Z

    const/16 p2, 0x18

    invoke-virtual {v6, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾᵎ:Z

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽ:F

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ratio must be a float value between 0 and 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ʾᵎ(IIII)I
    .locals 0

    .prologue
    invoke-static {p0, p1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 p3, 0x40000000    # 2.0f

    if-eq p1, p3, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static ـˆ(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˆ(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ʻٴ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    if-gt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ()I

    move-result p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ()I

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1, v0}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final ʼʼ()I
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ:I

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˆ:I

    :goto_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽʽ:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final ʼˎ(Landroid/view/View;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉـ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˆﾞ:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ʼᐧ(Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ()I

    move-result v0

    const/4 v1, 0x3

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉـ:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    if-ne p2, p3, :cond_d

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊˋ:Z

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˋᵔ:I

    const/4 p3, 0x6

    if-lez p2, :cond_3

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    if-eqz p2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ:I

    if-le p2, v0, :cond_c

    goto/16 :goto_1

    :cond_3
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x3e8

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽ:F

    invoke-virtual {p2, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎᵔ:I

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v1, 0x5

    goto :goto_2

    :cond_5
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˋᵔ:I

    const/4 v0, 0x4

    if-nez p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    if-eqz v2, :cond_6

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_9

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ:I

    if-ge p2, v2, :cond_7

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge p2, v0, :cond_b

    goto :goto_2

    :cond_7
    sub-int v1, p2, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge v1, p2, :cond_9

    goto :goto_1

    :cond_8
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    if-eqz p2, :cond_a

    :cond_9
    move v1, v0

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge v1, p2, :cond_9

    :cond_b
    :goto_1
    move v1, p3

    :cond_c
    :goto_2
    const/4 p2, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊʻ(ILandroid/view/View;Z)V

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊˋ:Z

    :cond_d
    :goto_3
    return-void
.end method

.method public final ʽ(Lʽʽ/ˈ;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    return-void
.end method

.method public final ʽʽ(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BottomSheetBehavior"

    nop

    return-void

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵢˏ(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v1, Lʼⁱ/ˉٴ;

    invoke-direct {v1, p0, p1, v0}, Lʼⁱ/ˉٴ;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-virtual {v1}, Lʼⁱ/ˉٴ;->run()V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    return-void

    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STATE_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_7

    const-string p1, "DRAGGING"

    goto :goto_3

    :cond_7
    const-string p1, "SETTLING"

    :goto_3
    const-string v0, " should not be set externally."

    invoke-static {v2, p1, v0}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ʽﹳ()I
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎﹶ:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳـ:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˏ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʻٴ:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔʾ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉˆ:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉʿ:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑﹳ:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔᵢ:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑﹳ:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʻٴ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final ʾˋ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v0, v0, v2

    if-nez v0, :cond_1

    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final ˆʾ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 5

    .prologue
    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉـ:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eq p3, p4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p7

    sub-int v0, p7, p5

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎˊ:Z

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔי:Z

    if-lez p5, :cond_6

    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊˋ:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    if-ne p3, p4, :cond_3

    invoke-virtual {p3, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_3

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˆﾞ:Z

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ()I

    move-result p3

    if-ge v0, p3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ()I

    move-result p3

    sub-int/2addr p7, p3

    aput p7, p6, p1

    neg-int p3, p7

    sget-object p4, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    const/4 p3, 0x3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    goto :goto_3

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    aput p5, p6, p1

    neg-int p3, p5

    sget-object p4, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    goto :goto_3

    :cond_6
    if-gez p5, :cond_b

    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊˋ:Z

    if-nez v4, :cond_7

    if-nez v2, :cond_7

    if-ne p3, p4, :cond_7

    if-eqz v3, :cond_7

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˆﾞ:Z

    return-void

    :cond_7
    if-nez v3, :cond_b

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    if-le v0, p3, :cond_9

    iget-boolean p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    if-eqz p4, :cond_8

    goto :goto_1

    :cond_8
    sub-int/2addr p7, p3

    aput p7, p6, p1

    neg-int p3, p7

    sget-object p4, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    goto :goto_3

    :cond_9
    :goto_1
    if-nez v1, :cond_a

    :goto_2
    return-void

    :cond_a
    aput p5, p6, p1

    neg-int p3, p5

    sget-object p4, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    :cond_b
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʻٴ(I)V

    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˋᵔ:I

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊˋ:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˆﾞ:Z

    return-void
.end method

.method public final ˈٴ(I)V
    .locals 6

    .prologue
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    :cond_1
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_3

    :goto_0
    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ(Z)V

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ(Z)V

    :cond_6
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ(IZ)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ()V

    return-void

    :cond_7
    invoke-static {v4, p1}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ˉʿ(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    check-cast p2, Lﹶᵔ/ﹳٴ;

    const/4 p1, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳٴ:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_2

    :cond_1
    iget v4, p2, Lﹶᵔ/ﹳٴ;->ˈٴ:I

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑﹳ:I

    :cond_2
    if-eq v2, v3, :cond_3

    and-int/lit8 v4, v2, 0x2

    if-ne v4, v0, :cond_4

    :cond_3
    iget-boolean v4, p2, Lﹶᵔ/ﹳٴ;->ᴵᵔ:Z

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    :cond_4
    if-eq v2, v3, :cond_5

    and-int/lit8 v4, v2, 0x4

    if-ne v4, p1, :cond_6

    :cond_5
    iget-boolean v4, p2, Lﹶᵔ/ﹳٴ;->ˊʻ:Z

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    :cond_6
    if-eq v2, v3, :cond_7

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    :cond_7
    iget-boolean v2, p2, Lﹶᵔ/ﹳٴ;->ٴᵢ:Z

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴʼ:Z

    :cond_8
    :goto_0
    iget p2, p2, Lﹶᵔ/ﹳٴ;->ʽʽ:I

    if-eq p2, v1, :cond_a

    if-ne p2, v0, :cond_9

    goto :goto_1

    :cond_9
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    return-void

    :cond_a
    :goto_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    return-void
.end method

.method public final ˉˆ(Landroid/view/View;II)Z
    .locals 0

    .prologue
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˋᵔ:I

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊˋ:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final ˉٴ(IZ)V
    .locals 6

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾᵎ:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾˋ()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵢˏ:Z

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵢˏ:Z

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˊ:Landroid/animation/ValueAnimator;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->reverse()V

    return-void

    :cond_4
    iget-object p2, v1, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget p2, p2, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏי()F

    move-result v5

    :cond_5
    new-array p1, v0, [F

    aput p2, p1, v2

    aput v5, p1, v3

    invoke-virtual {v4, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵢˏ:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏי()F

    move-result v5

    :cond_8
    iget-object p1, v1, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget p2, p1, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_9

    iput v5, p1, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    iput-boolean v3, v1, Lˋⁱ/ʼˎ;->ˊʻ:Z

    iput-boolean v3, v1, Lˋⁱ/ʼˎ;->ٴᵢ:Z

    invoke-virtual {v1}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_9
    :goto_1
    return-void
.end method

.method public final ˊʻ(ILandroid/view/View;Z)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵢˏ(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {v1, p2, v0}, Lˉـ/ˑﹳ;->ˉˆ(II)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iput-object p2, v1, Lˉـ/ˑﹳ;->ﹳᐧ:Landroid/view/View;

    const/4 p2, -0x1

    iput p2, v1, Lˉـ/ˑﹳ;->ʽ:I

    const/4 p2, 0x0

    invoke-virtual {v1, p3, v0, p2, p2}, Lˉـ/ˑﹳ;->ᵔᵢ(IIII)Z

    move-result p2

    if-nez p2, :cond_1

    iget p3, v1, Lˉـ/ˑﹳ;->ﹳٴ:I

    if-nez p3, :cond_1

    iget-object p3, v1, Lˉـ/ˑﹳ;->ﹳᐧ:Landroid/view/View;

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    iput-object p3, v1, Lˉـ/ˑﹳ;->ﹳᐧ:Landroid/view/View;

    :cond_1
    if-eqz p2, :cond_2

    :goto_0
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ(IZ)V

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾˋ:Lʻˑ/ﹳٴ;

    invoke-virtual {p2, p1}, Lʻˑ/ﹳٴ;->ﹳٴ(I)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    return-void
.end method

.method public final ˏי()F
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾˋ()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    iget-object v3, v2, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    aget v2, v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v3, v3, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v3}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v3

    iget-object v3, v3, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    invoke-virtual {v2}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v3, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    cmpl-float v5, v2, v1

    if-lez v5, :cond_1

    div-float/2addr v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    iget-object v5, v2, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    if-eqz v5, :cond_2

    aget v2, v5, v3

    goto :goto_2

    :cond_2
    iget-object v3, v2, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v3, v3, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v3}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v3

    iget-object v3, v3, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    invoke-virtual {v2}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v3, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v2

    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    div-float v1, v0, v2

    :cond_3
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method public final ˑﹳ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    return-void
.end method

.method public final יـ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽﹳ()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    return-void
.end method

.method public final ٴʼ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->יـ()V

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final ٴᵢ()V
    .locals 10

    .prologue
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    const/high16 v2, 0x40000

    invoke-static {v0, v2}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʻᵎ:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-static {v0, v4}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵʼ:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eq v5, v3, :cond_2

    invoke-static {v0, v5}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_2
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊᵔ:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v3, :cond_3

    invoke-static {v0, v6}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {v0, v1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    const/4 v6, 0x6

    if-nez v3, :cond_4

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-eq v3, v6, :cond_4

    const v3, 0x7f13002c

    invoke-virtual {p0, v0, v3, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ(Landroid/view/View;II)I

    move-result v3

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    sget-object v3, Lˊˋ/ʽ;->ʼˎ:Lˊˋ/ʽ;

    new-instance v7, Lʼٴ/ʾᵎ;

    const/16 v8, 0xd

    invoke-direct {v7, v4, v8, p0}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v3, v7}, Lˋᵔ/ᵎˊ;->ٴﹶ(Landroid/view/View;Lˊˋ/ʽ;Lˊˋ/ﹳᐧ;)V

    :cond_5
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const v4, 0x7f130028

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v3, v8, :cond_8

    const v9, 0x7f13002a

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0, v4, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ(Landroid/view/View;II)I

    move-result v3

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, v0, v9, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ(Landroid/view/View;II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_7
    invoke-virtual {p0, v0, v9, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ(Landroid/view/View;II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_8
    invoke-virtual {p0, v0, v4, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ(Landroid/view/View;II)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final ٴﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 0

    return-void
.end method

.method public final ᴵˊ(I)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞᴵ:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞᴵ:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞᴵ:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑﹳ:I

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞᴵ:Z

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑﹳ:I

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴʼ()V

    return-void
.end method

.method public final ᴵᵔ(Landroid/view/View;F)Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴʼ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽﹳ()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˈ:F

    mul-float/2addr p2, v2

    add-float/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public final ᵎⁱ(Z)V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏᵢ:Ljava/util/HashMap;

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏᵢ:Ljava/util/HashMap;

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏᵢ:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏᵢ:Ljava/util/HashMap;

    :cond_6
    :goto_2
    return-void
.end method

.method public final ᵎﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07007d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎﹶ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔʾ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞᴵ:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉˆ:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼᐧ:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔﹳ:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->יـ:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˏי:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽﹳ:Z

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lar/tvplayer/core/domain/ʽﹳ;

    invoke-direct {v4, p0, v0}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(Ljava/lang/Object;Z)V

    new-instance v0, Lʻᴵ/ˆʾ;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, Lʻᴵ/ˆʾ;->ﹳٴ:I

    iput v6, v0, Lʻᴵ/ˆʾ;->ⁱˊ:I

    iput v7, v0, Lʻᴵ/ˆʾ;->ʽ:I

    new-instance v5, Lﹶﾞ/ⁱי;

    const/16 v6, 0x13

    invoke-direct {v5, v4, v0, v6, v3}, Lﹶﾞ/ⁱי;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p2, v5}, Lˋᵔ/ʽʽ;->ˆʾ(Landroid/view/View;Lˋᵔ/ˉˆ;)V

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_1

    :cond_3
    new-instance v0, Lˈᐧ/ﾞʻ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1
    new-instance v0, Lﹶᵔ/ⁱˊ;

    invoke-direct {v0, p2}, Lﹶᵔ/ⁱˊ;-><init>(Landroid/view/View;)V

    invoke-static {p2, v0}, Lˋᵔ/ᵎˊ;->ˉˆ(Landroid/view/View;Lʽⁱ/ᵎﹶ;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵˑ:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v4, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f040453

    const/16 v5, 0x12c

    invoke-static {v0, v4, v5}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    const v4, 0x7f040458

    const/16 v5, 0x96

    invoke-static {v0, v4, v5}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    const v4, 0x7f040457

    const/16 v5, 0x64

    invoke-static {v0, v4, v5}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0701e5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    const v4, 0x7f0701e6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼˎ:Lˋⁱ/ʼˎ;

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getElevation()F

    move-result v5

    :cond_4
    invoke-virtual {v0, v5}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˆʾ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    invoke-static {p2, v0}, Lˋᵔ/ʽʽ;->ᵎﹶ(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ()V

    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    if-nez v0, :cond_8

    new-instance v0, Lˉـ/ˑﹳ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـﹶ:Lᵔˉ/ⁱˊ;

    invoke-direct {v0, v4, p1, v5}, Lˉـ/ˑﹳ;-><init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lˈˊ/ᵔʾ;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔﹳ(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳـ:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˏ:I

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    sub-int p1, p3, p1

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˆ:I

    if-ge p1, v4, :cond_c

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﹳᐧ:Z

    iget v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞʻ:I

    const/4 v6, -0x1

    if-eqz p1, :cond_a

    if-ne v5, v6, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_3
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˏ:I

    goto :goto_5

    :cond_a
    sub-int/2addr p3, v4

    if-ne v5, v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_4
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˏ:I

    :cond_c
    :goto_5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˏ:I

    sub-int/2addr p1, p3

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ:I

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    int-to-float p1, p1

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˊʻ:F

    sub-float/2addr v2, p3

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ:I

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->יـ()V

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ()I

    move-result p1

    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6

    :cond_d
    const/4 p3, 0x6

    if-ne p1, p3, :cond_e

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ:I

    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6

    :cond_e
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    if-eqz p3, :cond_f

    const/4 p3, 0x5

    if-ne p1, p3, :cond_f

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6

    :cond_f
    const/4 p3, 0x4

    if-ne p1, p3, :cond_10

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6

    :cond_10
    if-eq p1, v1, :cond_11

    const/4 p3, 0x2

    if-ne p1, p3, :cond_12

    :cond_11
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_12
    :goto_6
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    invoke-virtual {p0, p1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉٴ(IZ)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ـˆ(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉـ:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_13

    return v1

    :cond_13
    invoke-static {v3, p1}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ᵔʾ(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    new-instance p1, Lﹶᵔ/ﹳٴ;

    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-direct {p1, p0}, Lﹶᵔ/ﹳٴ;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object p1
.end method

.method public final ᵔᵢ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, p4

    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴﹶ:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p3, v2, p4, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾᵎ(IIII)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p4

    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ﾞʻ:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p5, p1, p4, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʾᵎ(IIII)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->measure(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎˊ:Z

    if-nez v4, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v3, p2}, Lˉـ/ˑﹳ;->ˆʾ(Landroid/view/MotionEvent;)V

    :cond_3
    if-nez v0, :cond_4

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎᵔ:I

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    if-nez v1, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎˊ:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-ne v1, v2, :cond_7

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    iget v3, v1, Lˉـ/ˑﹳ;->ⁱˊ:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lˉـ/ˑﹳ;->ⁱˊ(Landroid/view/View;I)V

    :cond_7
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    xor-int/2addr p1, v2

    return p1
.end method

.method public final ᵢˏ(I)I
    .locals 2

    .prologue
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᴵᵔ:I

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state to get top offset: "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈⁱ:I

    return p1

    :cond_2
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴᵢ:I

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʼʼ()I

    move-result p1

    return p1
.end method

.method public final ﹳᐧ(Landroid/view/View;II)I
    .locals 10

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lʼٴ/ʾᵎ;

    const/16 p2, 0xd

    invoke-direct {v5, p3, p2, p0}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    invoke-static {p1}, Lˋᵔ/ᵎˊ;->ﾞᴵ(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊˋ/ʽ;

    iget-object v1, v1, Lˊˋ/ʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lˊˋ/ʽ;

    invoke-virtual {p2}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result p2

    move v3, p2

    goto :goto_4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, p3

    move v0, v2

    :goto_1
    sget-object v3, Lˋᵔ/ᵎˊ;->ˈ:[I

    const/16 v6, 0x20

    if-ge v1, v6, :cond_5

    if-ne v0, v2, :cond_5

    aget v3, v3, v1

    const/4 v6, 0x1

    move v7, p3

    move v8, v6

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˊˋ/ʽ;

    invoke-virtual {v9}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result v9

    if-eq v9, v3, :cond_2

    move v9, v6

    goto :goto_3

    :cond_2
    move v9, p3

    :goto_3
    and-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    move v0, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_4
    if-eq v3, v2, :cond_9

    new-instance v1, Lˊˋ/ʽ;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lˊˋ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lˊˋ/ﹳᐧ;Ljava/lang/Class;)V

    invoke-static {p1}, Lˋᵔ/ᵎˊ;->ˈ(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p2

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_5

    :cond_6
    instance-of v0, p2, Lˋᵔ/ﹳٴ;

    if-eqz v0, :cond_7

    check-cast p2, Lˋᵔ/ﹳٴ;

    iget-object p2, p2, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    goto :goto_5

    :cond_7
    new-instance v0, Lˋᵔ/ⁱˊ;

    invoke-direct {v0, p2}, Lˋᵔ/ⁱˊ;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object p2, v0

    :goto_5
    if-nez p2, :cond_8

    new-instance p2, Lˋᵔ/ⁱˊ;

    invoke-direct {p2}, Lˋᵔ/ⁱˊ;-><init>()V

    :cond_8
    invoke-static {p1, p2}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    invoke-virtual {v1}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result p2

    invoke-static {p1, p2}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {p1}, Lˋᵔ/ᵎˊ;->ﾞᴵ(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p3}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    :cond_9
    return v3
.end method

.method public final ﾞᴵ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎˊ:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_1

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎᵔ:I

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʿᵢ:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧᴵ:Z

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎᵔ:I

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    if-eqz p2, :cond_8

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    return v1

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-eq v8, v5, :cond_6

    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉـ:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto :goto_0

    :cond_5
    move-object v8, v3

    :goto_0
    if-eqz v8, :cond_6

    invoke-virtual {p1, v8, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉˆ(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎᵔ:I

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧᴵ:Z

    :cond_6
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎᵔ:I

    if-ne v7, v4, :cond_7

    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    invoke-virtual {p1, p2, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉˆ(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v2

    goto :goto_1

    :cond_7
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p3}, Lˉـ/ˑﹳ;->ʼᐧ(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˉـ:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_a
    if-ne v0, v5, :cond_b

    if-eqz v3, :cond_b

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    if-nez p2, :cond_b

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-eq p2, v2, :cond_b

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉˆ(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᐧﾞ:I

    if-eq p1, v4, :cond_b

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    iget p2, p2, Lˉـ/ˑﹳ;->ⁱˊ:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    :goto_3
    return v2

    :cond_b
    return v1

    :cond_c
    :goto_4
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑٴ:Z

    return v1
.end method
