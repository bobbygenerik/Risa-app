.class public final Lᵔᵢ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋᵔ/ˉˆ;
.implements Lᵔʾ/ˏי;


# instance fields
.field public final synthetic ʾˋ:Lᵔᵢ/ᵢˏ;


# direct methods
.method public synthetic constructor <init>(Lᵔᵢ/ᵢˏ;)V
    .locals 0

    iput-object p1, p0, Lᵔᵢ/ʼᐧ;->ʾˋ:Lᵔᵢ/ᵢˏ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Lᵔʾ/ˆʾ;Z)V
    .locals 0

    iget-object p2, p0, Lᵔᵢ/ʼᐧ;->ʾˋ:Lᵔᵢ/ᵢˏ;

    invoke-virtual {p2, p1}, Lᵔᵢ/ᵢˏ;->ᵔﹳ(Lᵔʾ/ˆʾ;)V

    return-void
.end method

.method public ˉˆ(Lᵔʾ/ˆʾ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᵢ/ʼᐧ;->ʾˋ:Lᵔᵢ/ᵢˏ;

    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public ﾞʻ(Landroid/view/View;Lˋᵔ/ᐧﹶ;)Lˋᵔ/ᐧﹶ;
    .locals 19

    .prologue
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v3

    move-object/from16 v4, p0

    iget-object v5, v4, Lᵔᵢ/ʼᐧ;->ʾˋ:Lᵔᵢ/ᵢˏ;

    iget-object v6, v5, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v7

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v8, 0x1d

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_11

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_f

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ـˊ:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v5, Lᵔᵢ/ᵢˏ;->ـˊ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v5, Lᵔᵢ/ᵢˏ;->ᵎʿ:Landroid/graphics/Rect;

    :cond_0
    iget-object v13, v5, Lᵔᵢ/ᵢˏ;->ـˊ:Landroid/graphics/Rect;

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ᵎʿ:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ⁱˊ()I

    move-result v14

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ʽ()I

    move-result v10

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ﹳٴ()I

    move-result v9

    invoke-virtual {v13, v14, v15, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, v5, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v8, :cond_1

    sget-boolean v10, Lˉˆ/ˆˎ;->ﹳٴ:Z

    invoke-static {v9, v13, v0}, Lˉˆ/ˆﹳ;->ﹳٴ(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move/from16 v17, v12

    goto :goto_2

    :cond_1
    sget-boolean v10, Lˉˆ/ˆˎ;->ﹳٴ:Z

    const/4 v14, 0x2

    const-string v15, "ViewUtils"

    if-nez v10, :cond_2

    sput-boolean v12, Lˉˆ/ˆˎ;->ﹳٴ:Z

    :try_start_0
    const-class v10, Landroid/view/View;

    const-string v8, "computeFitSystemWindows"

    move/from16 v17, v12

    new-array v12, v14, [Ljava/lang/Class;

    const-class v18, Landroid/graphics/Rect;

    aput-object v18, v12, v16

    aput-object v18, v12, v17

    invoke-virtual {v10, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Lˉˆ/ˆˎ;->ⁱˊ:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lˉˆ/ˆˎ;->ⁱˊ:Ljava/lang/reflect/Method;

    move/from16 v10, v17

    invoke-virtual {v8, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v8, "Could not find method computeFitSystemWindows. Oh well."

    nop

    :cond_2
    :goto_0
    sget-object v8, Lˉˆ/ˆˎ;->ⁱˊ:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_3

    :try_start_1
    new-array v10, v14, [Ljava/lang/Object;

    aput-object v13, v10, v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v17, 0x1

    :try_start_2
    aput-object v0, v10, v17

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/16 v17, 0x1

    :goto_1
    const-string v8, "Could not invoke computeFitSystemWindows"

    nop

    goto :goto_2

    :cond_3
    const/16 v17, 0x1

    :goto_2
    iget v0, v13, Landroid/graphics/Rect;->top:I

    iget v8, v13, Landroid/graphics/Rect;->left:I

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget-object v10, v5, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    sget-object v12, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v10}, Lˋᵔ/ˈٴ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ᐧﹶ;

    move-result-object v10

    if-nez v10, :cond_4

    move/from16 v12, v16

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Lˋᵔ/ᐧﹶ;->ⁱˊ()I

    move-result v12

    :goto_3
    if-nez v10, :cond_5

    move/from16 v10, v16

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Lˋᵔ/ᐧﹶ;->ʽ()I

    move-result v10

    :goto_4
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v13, v0, :cond_7

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v13, v8, :cond_7

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v13, v9, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v8, v16

    goto :goto_6

    :cond_7
    :goto_5
    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v8, v17

    :goto_6
    if-lez v0, :cond_8

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    if-nez v0, :cond_8

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v14, 0x33

    const/4 v15, -0x1

    invoke-direct {v0, v15, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v10, v5, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    iget-object v12, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    invoke-virtual {v10, v12, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_8
    const/16 v9, 0x8

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v13, v14, :cond_9

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v13, v12, :cond_9

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v13, v10, :cond_a

    :cond_9
    iput v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v10, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_7
    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    if-eqz v0, :cond_b

    move/from16 v12, v17

    goto :goto_8

    :cond_b
    move/from16 v12, v16

    :goto_8
    if-eqz v12, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v10

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_c

    const v10, 0x7f060006

    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_9

    :cond_c
    const v10, 0x7f060005

    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    :goto_9
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    iget-boolean v0, v5, Lᵔᵢ/ᵢˏ;->ˈˏ:Z

    if-nez v0, :cond_e

    if-eqz v12, :cond_e

    move/from16 v7, v16

    :cond_e
    move/from16 v17, v8

    move v0, v12

    move/from16 v12, v16

    goto :goto_a

    :cond_f
    move/from16 v17, v12

    const/16 v9, 0x8

    const/16 v16, 0x0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v12, v16

    if-eqz v0, :cond_10

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v0, v12

    goto :goto_a

    :cond_10
    move v0, v12

    move/from16 v17, v0

    :goto_a
    if-eqz v17, :cond_12

    iget-object v6, v5, Lᵔᵢ/ᵢˏ;->ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_11
    const/16 v9, 0x8

    const/4 v12, 0x0

    move v0, v12

    :cond_12
    :goto_b
    iget-object v5, v5, Lᵔᵢ/ᵢˏ;->ˏᵢ:Landroid/view/View;

    if-eqz v5, :cond_14

    if-eqz v0, :cond_13

    move v9, v12

    :cond_13
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    if-eq v3, v7, :cond_19

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ʽ()I

    move-result v3

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ﹳٴ()I

    move-result v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x22

    if-lt v6, v8, :cond_15

    new-instance v6, Lˋᵔ/ʻᵎ;

    invoke-direct {v6, v2}, Lˋᵔ/ʻᵎ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_c

    :cond_15
    const/16 v8, 0x1f

    if-lt v6, v8, :cond_16

    new-instance v6, Lˋᵔ/ᴵʼ;

    invoke-direct {v6, v2}, Lˋᵔ/ᴵʼ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_c

    :cond_16
    const/16 v8, 0x1e

    if-lt v6, v8, :cond_17

    new-instance v6, Lˋᵔ/ˏᵢ;

    invoke-direct {v6, v2}, Lˋᵔ/ˏᵢ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_c

    :cond_17
    const/16 v8, 0x1d

    if-lt v6, v8, :cond_18

    new-instance v6, Lˋᵔ/ᐧᴵ;

    invoke-direct {v6, v2}, Lˋᵔ/ᐧᴵ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_c

    :cond_18
    new-instance v6, Lˋᵔ/ᵎᵔ;

    invoke-direct {v6, v2}, Lˋᵔ/ᵎᵔ;-><init>(Lˋᵔ/ᐧﹶ;)V

    :goto_c
    invoke-static {v0, v7, v3, v5}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    invoke-virtual {v6, v0}, Lˋᵔ/ˊᵔ;->ᵎﹶ(Lᵎⁱ/ⁱˊ;)V

    invoke-virtual {v6}, Lˋᵔ/ˊᵔ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object v0

    goto :goto_d

    :cond_19
    move-object v0, v2

    :goto_d
    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-static {v1, v2}, Lˋᵔ/ʾˋ;->ⁱˊ(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {v1, v3}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    :cond_1a
    return-object v0
.end method
