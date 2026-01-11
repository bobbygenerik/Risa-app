.class public abstract Lˉـ/ⁱˊ;
.super Lˋᵔ/ⁱˊ;
.source "SourceFile"


# static fields
.field public static final ʼᐧ:Lﹳˋ/ʼˎ;

.field public static final ˉˆ:Lᵎˉ/ⁱˊ;

.field public static final ᵔʾ:Landroid/graphics/Rect;


# instance fields
.field public final ʼˎ:Lcom/google/android/material/chip/Chip;

.field public ˆʾ:Lˉـ/ﹳٴ;

.field public final ˈ:Landroid/graphics/Rect;

.field public ˉʿ:I

.field public final ˑﹳ:Landroid/graphics/Rect;

.field public ٴﹶ:I

.field public final ᵎﹶ:[I

.field public final ᵔᵢ:Landroid/view/accessibility/AccessibilityManager;

.field public ﾞʻ:I

.field public final ﾞᴵ:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lˉـ/ⁱˊ;->ᵔʾ:Landroid/graphics/Rect;

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˉـ/ⁱˊ;->ˉˆ:Lᵎˉ/ⁱˊ;

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Lˉـ/ⁱˊ;->ʼᐧ:Lﹳˋ/ʼˎ;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Lˋᵔ/ⁱˊ;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lˉـ/ⁱˊ;->ˈ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lˉـ/ⁱˊ;->ˑﹳ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lˉـ/ⁱˊ;->ﾞᴵ:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lˉـ/ⁱˊ;->ᵎﹶ:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lˉـ/ⁱˊ;->ٴﹶ:I

    iput v0, p0, Lˉـ/ⁱˊ;->ﾞʻ:I

    iput v0, p0, Lˉـ/ⁱˊ;->ˉʿ:I

    iput-object p1, p0, Lˉـ/ⁱˊ;->ʼˎ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lˉـ/ⁱˊ;->ᵔᵢ:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract ʼᐧ(IZ)V
.end method

.method public final ˆʾ(I)Z
    .locals 2

    .prologue
    iget v0, p0, Lˉـ/ⁱˊ;->ﾞʻ:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Lˉـ/ⁱˊ;->ﾞʻ:I

    invoke-virtual {p0, p1, v1}, Lˉـ/ⁱˊ;->ʼᐧ(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 2

    .prologue
    iget-object v0, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object p1, p0

    check-cast p1, Lˆᵢ/ˈ;

    iget-object p1, p1, Lˆᵢ/ˈ;->ᵔﹳ:Lcom/google/android/material/chip/Chip;

    iget-object v1, p1, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lˊˋ/ᵔᵢ;->ˆʾ(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lˊˋ/ᵔᵢ;->יـ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˉʿ(ILandroid/graphics/Rect;)Z
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lˉـ/ⁱˊ;->ﾞʻ(Ljava/util/ArrayList;)V

    new-instance v4, Lיـ/יـ;

    invoke-direct {v4}, Lיـ/יـ;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lˉـ/ⁱˊ;->ٴﹶ(I)Lˊˋ/ᵔᵢ;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8, v7}, Lיـ/יـ;->ˑﹳ(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lˉـ/ⁱˊ;->ﾞʻ:I

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Lיـ/יـ;->ˈ(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˊˋ/ᵔᵢ;

    :goto_1
    sget-object v8, Lˉـ/ⁱˊ;->ˉˆ:Lᵎˉ/ⁱˊ;

    sget-object v9, Lˉـ/ⁱˊ;->ʼᐧ:Lﹳˋ/ʼˎ;

    iget-object v10, v0, Lˉـ/ⁱˊ;->ʼˎ:Lcom/google/android/material/chip/Chip;

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-eq v1, v13, :cond_15

    if-eq v1, v11, :cond_15

    const/16 v11, 0x82

    const/16 v14, 0x42

    const/16 v15, 0x21

    const/16 v6, 0x11

    if-eq v1, v6, :cond_2

    if-eq v1, v15, :cond_2

    if-eq v1, v14, :cond_2

    if-ne v1, v11, :cond_3

    :cond_2
    move/from16 v17, v13

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iget v5, v0, Lˉـ/ⁱˊ;->ﾞʻ:I

    const-string v12, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    if-eq v5, v7, :cond_4

    invoke-virtual {v0, v5}, Lˉـ/ⁱˊ;->ᵔʾ(I)Lˊˋ/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2, v13}, Lˊˋ/ᵔᵢ;->ﾞᴵ(Landroid/graphics/Rect;)V

    :goto_3
    const/4 v10, -0x1

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v1, v6, :cond_9

    if-eq v1, v15, :cond_8

    if-eq v1, v14, :cond_7

    if-ne v1, v11, :cond_6

    const/4 v5, 0x0

    const/4 v10, -0x1

    invoke-virtual {v13, v5, v10, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v2, 0x0

    const/4 v10, -0x1

    invoke-virtual {v13, v10, v2, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    const/4 v10, -0x1

    invoke-virtual {v13, v7, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    const/4 v10, -0x1

    invoke-virtual {v13, v2, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eq v1, v6, :cond_d

    if-eq v1, v15, :cond_c

    if-eq v1, v14, :cond_b

    if-ne v1, v11, :cond_a

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v7, 0x0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    :goto_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Lיـ/יـ;->ʽʽ:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move v9, v7

    const/16 v16, 0x0

    :goto_6
    if-ge v9, v5, :cond_14

    invoke-virtual {v4, v9}, Lיـ/יـ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˊˋ/ᵔᵢ;

    if-ne v11, v3, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v6}, Lˊˋ/ᵔᵢ;->ﾞᴵ(Landroid/graphics/Rect;)V

    invoke-static {v1, v13, v6}, Lˈˆ/ﾞᴵ;->ʽʽ(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v1, v13, v2}, Lˈˆ/ﾞᴵ;->ʽʽ(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v1, v13, v6, v2}, Lˈˆ/ﾞᴵ;->ﹳٴ(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v1, v13, v2, v6}, Lˈˆ/ﾞᴵ;->ﹳٴ(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_12

    goto :goto_8

    :cond_12
    invoke-static {v1, v13, v6}, Lˈˆ/ﾞᴵ;->ᵎⁱ(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v12

    invoke-static {v1, v13, v6}, Lˈˆ/ﾞᴵ;->ٴʼ(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v14

    mul-int/lit8 v15, v12, 0xd

    mul-int/2addr v15, v12

    mul-int/2addr v14, v14

    add-int/2addr v14, v15

    invoke-static {v1, v13, v2}, Lˈˆ/ﾞᴵ;->ᵎⁱ(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v12

    invoke-static {v1, v13, v2}, Lˈˆ/ﾞᴵ;->ٴʼ(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v15

    mul-int/lit8 v17, v12, 0xd

    mul-int v17, v17, v12

    mul-int/2addr v15, v15

    add-int v15, v15, v17

    if-ge v14, v15, :cond_13

    :goto_7
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v16, v11

    :cond_13
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_14
    move v2, v10

    :goto_9
    move-object/from16 v1, v16

    goto/16 :goto_10

    :cond_15
    move/from16 v17, v13

    const/4 v2, -0x1

    const/4 v7, 0x0

    sget-object v5, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    move/from16 v6, v17

    if-ne v5, v6, :cond_16

    const/4 v5, 0x1

    goto :goto_a

    :cond_16
    move v5, v7

    :goto_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Lיـ/יـ;->ʽʽ:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v7

    :goto_b
    if-ge v10, v6, :cond_17

    invoke-virtual {v4, v10}, Lיـ/יـ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lˊˋ/ᵔᵢ;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_17
    new-instance v6, Lˉـ/ʽ;

    invoke-direct {v6, v5, v8}, Lˉـ/ʽ;-><init>(ZLᵎˉ/ⁱˊ;)V

    invoke-static {v9, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1b

    if-ne v1, v11, :cond_1a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_18

    move v10, v2

    goto :goto_c

    :cond_18
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v10

    :goto_c
    add-int/2addr v10, v6

    if-ge v10, v1, :cond_19

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_f

    :cond_19
    const/4 v6, 0x0

    goto :goto_f

    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_1c

    :goto_d
    const/16 v17, 0x1

    goto :goto_e

    :cond_1c
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_d

    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_19

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    :goto_f
    move-object/from16 v16, v6

    check-cast v16, Lˊˋ/ᵔᵢ;

    goto :goto_9

    :goto_10
    if-nez v1, :cond_1d

    const/high16 v7, -0x80000000

    goto :goto_13

    :cond_1d
    iget v3, v4, Lיـ/יـ;->ʽʽ:I

    move v5, v7

    :goto_11
    if-ge v5, v3, :cond_1f

    iget-object v6, v4, Lיـ/יـ;->ᴵˊ:[Ljava/lang/Object;

    aget-object v6, v6, v5

    if-ne v6, v1, :cond_1e

    move v12, v5

    goto :goto_12

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1f
    move v12, v2

    :goto_12
    iget-object v1, v4, Lיـ/יـ;->ʾˋ:[I

    aget v7, v1, v12

    :goto_13
    invoke-virtual {v0, v7}, Lˉـ/ⁱˊ;->ᵔﹳ(I)Z

    move-result v1

    return v1
.end method

.method public abstract ˉˆ(ILˊˋ/ᵔᵢ;)V
.end method

.method public final ٴﹶ(I)Lˊˋ/ᵔᵢ;
    .locals 9

    .prologue
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Lˊˋ/ᵔᵢ;

    invoke-direct {v1, v0}, Lˊˋ/ᵔᵢ;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    const-string v3, "android.view.View"

    invoke-virtual {v1, v3}, Lˊˋ/ᵔᵢ;->ˆʾ(Ljava/lang/CharSequence;)V

    sget-object v3, Lˉـ/ⁱˊ;->ᵔʾ:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lˉـ/ⁱˊ;->ʼˎ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1}, Lˉـ/ⁱˊ;->ˉˆ(ILˊˋ/ᵔᵢ;)V

    invoke-virtual {v1}, Lˊˋ/ᵔᵢ;->ᵎﹶ()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v5, p0, Lˉـ/ⁱˊ;->ˑﹳ:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Lˊˋ/ᵔᵢ;->ﾞᴵ(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v5

    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_d

    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-nez v5, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iput p1, v1, Lˊˋ/ᵔᵢ;->ⁱˊ:I

    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v5, p0, Lˉـ/ⁱˊ;->ٴﹶ:I

    const/4 v7, 0x0

    if-ne v5, p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v1, v6}, Lˊˋ/ᵔᵢ;->ﹳٴ(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Lˊˋ/ᵔᵢ;->ﹳٴ(I)V

    :goto_1
    iget v5, p0, Lˉـ/ⁱˊ;->ﾞʻ:I

    if-ne v5, p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v7

    :goto_2
    if-eqz p1, :cond_4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lˊˋ/ᵔᵢ;->ﹳٴ(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v2}, Lˊˋ/ᵔᵢ;->ﹳٴ(I)V

    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    iget-object p1, p0, Lˉـ/ⁱˊ;->ᵎﹶ:[I

    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Lˉـ/ⁱˊ;->ˈ:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v5}, Lˊˋ/ᵔᵢ;->ﾞᴵ(Landroid/graphics/Rect;)V

    aget v3, p1, v7

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v3, v6

    aget v6, p1, v2

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_6
    iget-object v3, p0, Lˉـ/ⁱˊ;->ﾞᴵ:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_b

    aget v6, p1, v7

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    aget p1, p1, v2

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr p1, v7

    invoke-virtual {v3, v6, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_4
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_a

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_4

    :cond_a
    if-eqz p1, :cond_b

    iget-object p1, v1, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_b
    :goto_5
    return-object v1

    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔʾ(I)Lˊˋ/ᵔᵢ;
    .locals 6

    .prologue
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lˉـ/ⁱˊ;->ʼˎ:Lcom/google/android/material/chip/Chip;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Lˊˋ/ᵔᵢ;

    invoke-direct {v1, v0}, Lˊˋ/ᵔᵢ;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/Chip;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Lˉـ/ⁱˊ;->ﾞʻ(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lˉـ/ⁱˊ;->ٴﹶ(I)Lˊˋ/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔﹳ(I)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˉـ/ⁱˊ;->ʼˎ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lˉـ/ⁱˊ;->ﾞʻ:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lˉـ/ⁱˊ;->ˆʾ(I)Z

    :cond_2
    if-ne p1, v1, :cond_3

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    iput p1, p0, Lˉـ/ⁱˊ;->ﾞʻ:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lˉـ/ⁱˊ;->ʼᐧ(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    return v0
.end method

.method public final ⁱˊ(Landroid/view/View;)Landroidx/leanback/widget/ˉˆ;
    .locals 0

    .prologue
    iget-object p1, p0, Lˉـ/ⁱˊ;->ˆʾ:Lˉـ/ﹳٴ;

    if-nez p1, :cond_0

    new-instance p1, Lˉـ/ﹳٴ;

    invoke-direct {p1, p0}, Lˉـ/ﹳٴ;-><init>(Lˉـ/ⁱˊ;)V

    iput-object p1, p0, Lˉـ/ⁱˊ;->ˆʾ:Lˉـ/ﹳٴ;

    :cond_0
    iget-object p1, p0, Lˉـ/ⁱˊ;->ˆʾ:Lˉـ/ﹳٴ;

    return-object p1
.end method

.method public final ﹳᐧ(II)V
    .locals 5

    .prologue
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lˉـ/ⁱˊ;->ᵔᵢ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lˉـ/ⁱˊ;->ʼˎ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Lˉـ/ⁱˊ;->ᵔʾ(I)Lˊˋ/ᵔᵢ;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lˊˋ/ᵔᵢ;->ᵎﹶ()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_1
    invoke-interface {v1, v0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public abstract ﾞʻ(Ljava/util/ArrayList;)V
.end method
