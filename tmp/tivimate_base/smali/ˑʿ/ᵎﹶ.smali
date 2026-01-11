.class public final Lˑʿ/ᵎﹶ;
.super Lˑʿ/ʻٴ;
.source "SourceFile"


# static fields
.field public static final ʻᵎ:[Ljava/lang/String;

.field public static final ˈˏ:Landroidx/leanback/widget/ʿᵢ;

.field public static final ˊᵔ:Landroidx/leanback/widget/ʿᵢ;

.field public static final ـﹶ:Landroidx/leanback/widget/ʿᵢ;

.field public static final ﹳﹳ:Landroidx/leanback/widget/ʿᵢ;

.field public static final ﹶᐧ:Landroidx/leanback/widget/ʿᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:windowX"

    const-string v1, "android:changeBounds:windowY"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:clip"

    const-string v4, "android:changeBounds:parent"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lˑʿ/ᵎﹶ;->ʻᵎ:[Ljava/lang/String;

    new-instance v0, Landroidx/leanback/widget/ʿᵢ;

    const/16 v1, 0xa

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "topLeft"

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/ʿᵢ;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lˑʿ/ᵎﹶ;->ˊᵔ:Landroidx/leanback/widget/ʿᵢ;

    new-instance v0, Landroidx/leanback/widget/ʿᵢ;

    const/16 v1, 0xb

    const-string v4, "bottomRight"

    invoke-direct {v0, v2, v4, v1}, Landroidx/leanback/widget/ʿᵢ;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lˑʿ/ᵎﹶ;->ـﹶ:Landroidx/leanback/widget/ʿᵢ;

    new-instance v0, Landroidx/leanback/widget/ʿᵢ;

    const/16 v1, 0xc

    invoke-direct {v0, v2, v4, v1}, Landroidx/leanback/widget/ʿᵢ;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lˑʿ/ᵎﹶ;->ˈˏ:Landroidx/leanback/widget/ʿᵢ;

    new-instance v0, Landroidx/leanback/widget/ʿᵢ;

    const/16 v1, 0xd

    invoke-direct {v0, v2, v3, v1}, Landroidx/leanback/widget/ʿᵢ;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lˑʿ/ᵎﹶ;->ﹶᐧ:Landroidx/leanback/widget/ʿᵢ;

    new-instance v0, Landroidx/leanback/widget/ʿᵢ;

    const-string v1, "position"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v1, v3}, Landroidx/leanback/widget/ʿᵢ;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lˑʿ/ᵎﹶ;->ﹳﹳ:Landroidx/leanback/widget/ʿᵢ;

    return-void
.end method

.method public static ﹳـ(Lˑʿ/ᴵᵔ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lˑʿ/ᴵᵔ;->ⁱˊ:Landroid/view/View;

    iget-object p0, p0, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v2, "android:changeBounds:bounds"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android:changeBounds:parent"

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˑʿ/ᴵᵔ;)V
    .locals 0

    invoke-static {p1}, Lˑʿ/ᵎﹶ;->ﹳـ(Lˑʿ/ᴵᵔ;)V

    return-void
.end method

.method public final ˉʿ(Landroid/view/ViewGroup;Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;)Landroid/animation/Animator;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_13

    iget-object v1, v1, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v2, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    const-string v4, "android:changeBounds:parent"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_13

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v2, Lˑʿ/ᴵᵔ;->ⁱˊ:Landroid/view/View;

    const-string v4, "android:changeBounds:bounds"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v10, v6

    sub-int v13, v5, v8

    sub-int v14, v11, v7

    sub-int v15, v4, v9

    move/from16 p1, v13

    const-string v13, "android:changeBounds:clip"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/16 p2, 0x0

    if-eqz v12, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    :cond_3
    if-ne v6, v7, :cond_5

    if-eq v8, v9, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v16, p2

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v16, 0x1

    :goto_1
    if-ne v10, v11, :cond_6

    if-eq v5, v4, :cond_8

    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_7
    move/from16 v16, p2

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    if-nez v1, :cond_b

    if-eqz v3, :cond_b

    :cond_a
    add-int/lit8 v16, v16, 0x1

    :cond_b
    move/from16 v1, v16

    if-lez v1, :cond_13

    instance-of v3, v2, Landroid/widget/TextView;

    const/16 p3, 0x1

    sget-object v13, Lˑʿ/ᵎﹶ;->ﹳﹳ:Landroidx/leanback/widget/ʿᵢ;

    if-eqz v3, :cond_d

    if-ne v6, v7, :cond_c

    if-eq v10, v11, :cond_d

    :cond_c
    add-int/2addr v14, v7

    add-int/2addr v15, v8

    invoke-static {v2, v7, v8, v14, v15}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    iget-object v1, v0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    int-to-float v3, v7

    int-to-float v4, v8

    int-to-float v5, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v3, v5}, Lᵎˉ/ⁱˊ;->ˉʿ(FFFF)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v2, v13, v1}, Lˑʿ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_4

    :cond_d
    invoke-static {v2, v6, v8, v10, v5}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    if-ne v12, v14, :cond_e

    move/from16 v1, p1

    if-ne v1, v15, :cond_e

    iget-object v1, v0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    int-to-float v3, v6

    int-to-float v4, v8

    int-to-float v5, v7

    int-to-float v6, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, Lᵎˉ/ⁱˊ;->ˉʿ(FFFF)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v2, v13, v1}, Lˑʿ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_4

    :cond_e
    new-instance v1, Lˑʿ/ﾞᴵ;

    invoke-direct {v1, v2}, Lˑʿ/ﾞᴵ;-><init>(Landroid/view/View;)V

    iget-object v12, v0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    int-to-float v6, v6

    int-to-float v8, v8

    int-to-float v7, v7

    int-to-float v9, v9

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8, v7, v9}, Lᵎˉ/ⁱˊ;->ˉʿ(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Lˑʿ/ᵎﹶ;->ˊᵔ:Landroidx/leanback/widget/ʿᵢ;

    invoke-static {v1, v7, v6}, Lˑʿ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, v0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    int-to-float v8, v10

    int-to-float v5, v5

    int-to-float v9, v11

    int-to-float v4, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v5, v9, v4}, Lᵎˉ/ⁱˊ;->ˉʿ(FFFF)Landroid/graphics/Path;

    move-result-object v4

    sget-object v5, Lˑʿ/ᵎﹶ;->ـﹶ:Landroidx/leanback/widget/ʿᵢ;

    invoke-static {v1, v5, v4}, Lˑʿ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v3, [Landroid/animation/Animator;

    aput-object v6, v5, p2

    aput-object v1, v5, p3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/google/android/material/timepicker/ﾞᴵ;

    invoke-direct {v1, v3}, Lcom/google/android/material/timepicker/ﾞᴵ;-><init>(I)V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v4

    goto :goto_4

    :cond_f
    if-ne v6, v7, :cond_11

    if-eq v8, v9, :cond_10

    goto :goto_3

    :cond_10
    iget-object v1, v0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    int-to-float v3, v10

    int-to-float v5, v5

    int-to-float v6, v11

    int-to-float v4, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5, v6, v4}, Lᵎˉ/ⁱˊ;->ˉʿ(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Lˑʿ/ᵎﹶ;->ˈˏ:Landroidx/leanback/widget/ʿᵢ;

    invoke-static {v2, v3, v1}, Lˑʿ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_4

    :cond_11
    :goto_3
    iget-object v1, v0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    int-to-float v3, v6

    int-to-float v4, v8

    int-to-float v5, v7

    int-to-float v6, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, Lᵎˉ/ⁱˊ;->ˉʿ(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Lˑʿ/ᵎﹶ;->ﹶᐧ:Landroidx/leanback/widget/ʿᵢ;

    invoke-static {v2, v3, v1}, Lˑʿ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move/from16 v3, p3

    invoke-static {v2, v3}, Lˈˆ/ﾞᴵ;->ᴵˑ(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ʽﹳ()Lˑʿ/ʻٴ;

    move-result-object v4

    new-instance v5, Lˑʿ/ʽ;

    invoke-direct {v5, v2, v3}, Lˑʿ/ʽ;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v4, v5}, Lˑʿ/ʻٴ;->ﹳٴ(Lˑʿ/יـ;)V

    :cond_12
    return-object v1

    :cond_13
    :goto_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public final ˑﹳ(Lˑʿ/ᴵᵔ;)V
    .locals 0

    invoke-static {p1}, Lˑʿ/ᵎﹶ;->ﹳـ(Lˑʿ/ᴵᵔ;)V

    return-void
.end method

.method public final ـˆ()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lˑʿ/ᵎﹶ;->ʻᵎ:[Ljava/lang/String;

    return-object v0
.end method

.method public final ᵢˏ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
