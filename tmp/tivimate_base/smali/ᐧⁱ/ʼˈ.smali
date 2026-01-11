.class public final Lᐧⁱ/ʼˈ;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lᐧⁱ/ᵔי;


# instance fields
.field public ʽʽ:Ljava/util/List;

.field public final ʾˋ:Lᐧⁱ/ˈ;

.field public ˈٴ:Lᐧⁱ/ˑﹳ;

.field public ˊʻ:F

.field public final ᴵˊ:Lᐧⁱ/ˋᵔ;

.field public ᴵᵔ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lᐧⁱ/ʼˈ;->ʽʽ:Ljava/util/List;

    sget-object v1, Lᐧⁱ/ˑﹳ;->ᵎﹶ:Lᐧⁱ/ˑﹳ;

    iput-object v1, p0, Lᐧⁱ/ʼˈ;->ˈٴ:Lᐧⁱ/ˑﹳ;

    const v1, 0x3d5a511a    # 0.0533f

    iput v1, p0, Lᐧⁱ/ʼˈ;->ᴵᵔ:F

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Lᐧⁱ/ʼˈ;->ˊʻ:F

    new-instance v1, Lᐧⁱ/ˈ;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lᐧⁱ/ˈ;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lᐧⁱ/ʼˈ;->ʾˋ:Lᐧⁱ/ˈ;

    new-instance v3, Lᐧⁱ/ˋᵔ;

    invoke-direct {v3, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lᐧⁱ/ʼˈ;->ᴵˊ:Lᐧⁱ/ˋᵔ;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lᐧⁱ/ʼˈ;->ʽʽ:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lᐧⁱ/ʼˈ;->ʽ()V

    :cond_0
    return-void
.end method

.method public final ʽ()V
    .locals 51

    .prologue
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lᐧⁱ/ʼˈ;->ˈٴ:Lᐧⁱ/ˑﹳ;

    iget v2, v2, Lᐧⁱ/ˑﹳ;->ﹳٴ:I

    invoke-static {v2}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lᐧⁱ/ʼˈ;->ᴵᵔ:F

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lᐧⁱ/ʼˈ;->ⁱˊ(IF)Ljava/lang/String;

    move-result-object v3

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v0, Lᐧⁱ/ʼˈ;->ˈٴ:Lᐧⁱ/ˑﹳ;

    iget v8, v7, Lᐧⁱ/ˑﹳ;->ˈ:I

    iget v7, v7, Lᐧⁱ/ˑﹳ;->ˑﹳ:I

    const/4 v9, 0x4

    const-string v10, "unset"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v8, v13, :cond_3

    if-eq v8, v12, :cond_2

    if-eq v8, v11, :cond_1

    if-eq v8, v9, :cond_0

    move-object v7, v10

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "-0.05em -0.05em 0.15em "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "0.06em 0.08em 0.15em "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "0.1em 0.12em 0.15em "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v7, v8, v4

    sget-object v7, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v7, v14, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v4

    aput-object v3, v8, v13

    aput-object v6, v8, v12

    aput-object v7, v8, v11

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Lᐧⁱ/ʼˈ;->ˈٴ:Lᐧⁱ/ˑﹳ;

    iget v3, v3, Lᐧⁱ/ˑﹳ;->ⁱˊ:I

    invoke-static {v3}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "background-color:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ".default_bg,.default_bg *"

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v4

    :goto_1
    iget-object v8, v0, Lᐧⁱ/ʼˈ;->ʽʽ:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_53

    iget-object v8, v0, Lᐧⁱ/ʼˈ;->ʽʽ:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lⁱˉ/ⁱˊ;

    iget v14, v8, Lⁱˉ/ⁱˊ;->ᵔᵢ:F

    iget v15, v8, Lⁱˉ/ⁱˊ;->ᵎﹶ:I

    move/from16 v16, v5

    iget v5, v8, Lⁱˉ/ⁱˊ;->ʼᐧ:I

    const v17, -0x800001

    cmpl-float v18, v14, v17

    const/high16 v19, 0x42c80000    # 100.0f

    if-eqz v18, :cond_4

    mul-float v14, v14, v19

    :goto_2
    move/from16 v18, v9

    goto :goto_3

    :cond_4
    const/high16 v14, 0x42480000    # 50.0f

    goto :goto_2

    :goto_3
    iget v9, v8, Lⁱˉ/ⁱˊ;->ʼˎ:I

    const/16 v20, -0x32

    const/16 v21, -0x64

    if-eq v9, v13, :cond_6

    if-eq v9, v12, :cond_5

    move v9, v4

    goto :goto_4

    :cond_5
    move/from16 v9, v21

    goto :goto_4

    :cond_6
    move/from16 v9, v20

    :goto_4
    iget v11, v8, Lⁱˉ/ⁱˊ;->ˑﹳ:F

    cmpl-float v23, v11, v17

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    move/from16 v26, v4

    const-string v4, "%.2f%%"

    if-eqz v23, :cond_e

    iget v12, v8, Lⁱˉ/ⁱˊ;->ﾞᴵ:I

    if-eq v12, v13, :cond_c

    mul-float v11, v11, v19

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v11, v12, v26

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-ne v5, v13, :cond_9

    if-eq v15, v13, :cond_8

    const/4 v12, 0x2

    if-eq v15, v12, :cond_7

    move/from16 v15, v26

    goto :goto_5

    :cond_7
    move/from16 v15, v21

    goto :goto_5

    :cond_8
    const/4 v12, 0x2

    move/from16 v15, v20

    :goto_5
    neg-int v15, v15

    move/from16 v21, v15

    goto :goto_7

    :cond_9
    const/4 v12, 0x2

    if-eq v15, v13, :cond_b

    if-eq v15, v12, :cond_a

    move/from16 v20, v26

    goto :goto_6

    :cond_a
    move/from16 v20, v21

    :cond_b
    :goto_6
    move/from16 v21, v20

    :goto_7
    move/from16 v12, v26

    goto :goto_8

    :cond_c
    cmpl-float v12, v11, v25

    const-string v15, "%.2fem"

    if-ltz v12, :cond_d

    mul-float v11, v11, v16

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v11, v12, v26

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move/from16 v12, v26

    move/from16 v21, v12

    goto :goto_8

    :cond_d
    neg-float v11, v11

    sub-float v11, v11, v24

    mul-float v11, v11, v16

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v11, v12, v26

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move v12, v13

    move/from16 v21, v26

    goto :goto_8

    :cond_e
    iget v11, v0, Lᐧⁱ/ʼˈ;->ˊʻ:F

    sub-float v24, v24, v11

    mul-float v24, v24, v19

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v11, v12, v26

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :goto_8
    iget v15, v8, Lⁱˉ/ⁱˊ;->ˆʾ:F

    cmpl-float v17, v15, v17

    if-eqz v17, :cond_f

    mul-float v15, v15, v19

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move/from16 v17, v6

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v15, v6, v26

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_f
    move/from16 v17, v6

    const-string v4, "fit-content"

    :goto_9
    iget-object v6, v8, Lⁱˉ/ⁱˊ;->ⁱˊ:Landroid/text/Layout$Alignment;

    const-string v15, "start"

    const-string v20, "end"

    const-string v24, "center"

    if-nez v6, :cond_10

    move-object/from16 v28, v4

    move v4, v13

    move-object/from16 v6, v24

    const/4 v13, 0x2

    goto :goto_b

    :cond_10
    sget-object v27, Lᐧⁱ/ˊˋ;->ﹳٴ:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v27, v6

    if-eq v6, v13, :cond_12

    const/4 v13, 0x2

    if-eq v6, v13, :cond_11

    move-object/from16 v28, v4

    move-object/from16 v6, v24

    :goto_a
    const/4 v4, 0x1

    goto :goto_b

    :cond_11
    move-object/from16 v28, v4

    move-object/from16 v6, v20

    goto :goto_a

    :cond_12
    const/4 v13, 0x2

    move-object/from16 v28, v4

    move-object v6, v15

    goto :goto_a

    :goto_b
    if-eq v5, v4, :cond_14

    if-eq v5, v13, :cond_13

    const-string v4, "horizontal-tb"

    goto :goto_c

    :cond_13
    const-string v4, "vertical-lr"

    goto :goto_c

    :cond_14
    const-string v4, "vertical-rl"

    :goto_c
    iget v13, v8, Lⁱˉ/ⁱˊ;->ᵔʾ:I

    move-object/from16 v29, v4

    iget v4, v8, Lⁱˉ/ⁱˊ;->ˉˆ:F

    invoke-virtual {v0, v13, v4}, Lᐧⁱ/ʼˈ;->ⁱˊ(IF)Ljava/lang/String;

    move-result-object v4

    iget-boolean v13, v8, Lⁱˉ/ⁱˊ;->ﾞʻ:Z

    if-eqz v13, :cond_15

    iget v13, v8, Lⁱˉ/ⁱˊ;->ˉʿ:I

    goto :goto_d

    :cond_15
    iget-object v13, v0, Lᐧⁱ/ʼˈ;->ˈٴ:Lᐧⁱ/ˑﹳ;

    iget v13, v13, Lᐧⁱ/ˑﹳ;->ʽ:I

    :goto_d
    invoke-static {v13}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v13

    const-string v30, "right"

    const-string v31, "top"

    const-string v32, "left"

    move-object/from16 v33, v4

    const/4 v4, 0x1

    if-eq v5, v4, :cond_1a

    const/4 v4, 0x2

    if-eq v5, v4, :cond_18

    if-eqz v12, :cond_16

    const-string v31, "bottom"

    :cond_16
    move-object/from16 v30, v31

    move-object/from16 v31, v32

    :cond_17
    :goto_e
    const/4 v4, 0x2

    goto :goto_10

    :cond_18
    if-eqz v12, :cond_19

    goto :goto_e

    :cond_19
    :goto_f
    move-object/from16 v30, v32

    goto :goto_e

    :cond_1a
    if-eqz v12, :cond_17

    goto :goto_f

    :goto_10
    if-eq v5, v4, :cond_1c

    const/4 v4, 0x1

    if-ne v5, v4, :cond_1b

    goto :goto_11

    :cond_1b
    const-string v4, "width"

    goto :goto_12

    :cond_1c
    :goto_11
    const-string v4, "height"

    move/from16 v50, v21

    move/from16 v21, v9

    move/from16 v9, v50

    :goto_12
    iget-object v12, v8, Lⁱˉ/ⁱˊ;->ﹳٴ:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    move-object/from16 v34, v4

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sget-object v32, Lᐧⁱ/ٴʼ;->ﹳٴ:Ljava/util/regex/Pattern;

    move/from16 v32, v4

    const-string v4, "</span>"

    move-object/from16 v36, v6

    const-string v6, ";\'>"

    move/from16 v37, v9

    const-string v9, ""

    if-nez v12, :cond_1d

    new-instance v12, Lʻᴵ/ﹳٴ;

    move-object/from16 v38, v11

    const/4 v11, 0x7

    invoke-direct {v12, v11, v9}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    move-object/from16 v42, v3

    move-object/from16 v43, v7

    move-object/from16 v39, v9

    :goto_13
    move-object/from16 v40, v13

    move/from16 v41, v14

    move-object/from16 v49, v15

    goto/16 :goto_25

    :cond_1d
    move-object/from16 v38, v11

    instance-of v11, v12, Landroid/text/Spanned;

    if-nez v11, :cond_1e

    new-instance v11, Lʻᴵ/ﹳٴ;

    invoke-static {v12}, Lᐧⁱ/ٴʼ;->ﹳٴ(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v39, v9

    const/4 v9, 0x7

    invoke-direct {v11, v9, v12}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    move-object/from16 v42, v3

    move-object/from16 v43, v7

    move-object v12, v11

    goto :goto_13

    :cond_1e
    move-object/from16 v39, v9

    check-cast v12, Landroid/text/Spanned;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v40, v13

    const-class v13, Landroid/text/style/BackgroundColorSpan;

    move/from16 v41, v14

    move/from16 v14, v26

    invoke-interface {v12, v14, v11, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/BackgroundColorSpan;

    array-length v13, v11

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v13, :cond_1f

    aget-object v42, v11, v14

    invoke-virtual/range {v42 .. v42}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v42

    move-object/from16 v43, v11

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v43

    goto :goto_14

    :cond_1f
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "bg_"

    invoke-static {v13, v14}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v42, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v43, v13

    const-string v13, "."

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",."

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " *"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v43 .. v43}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v42

    goto :goto_15

    :cond_20
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v13, Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v12, v14, v11, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    array-length v13, v11

    const/4 v14, 0x0

    :goto_16
    if-ge v14, v13, :cond_46

    move-object/from16 v42, v3

    aget-object v3, v11, v14

    move-object/from16 v43, v7

    instance-of v7, v3, Landroid/text/style/StrikethroughSpan;

    const/16 v44, 0x0

    if-eqz v7, :cond_21

    const-string v45, "<span style=\'text-decoration:line-through;\'>"

    move-object/from16 v46, v45

    move/from16 v45, v7

    move-object/from16 v7, v46

    move-object/from16 v46, v11

    :goto_17
    move/from16 v47, v13

    :goto_18
    move/from16 v48, v14

    move-object/from16 v49, v15

    goto/16 :goto_1e

    :cond_21
    move/from16 v45, v7

    instance-of v7, v3, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_22

    move-object v7, v3

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-static {v7}, Lˉᵎ/ⁱˊ;->ᵔٴ(I)Ljava/lang/String;

    move-result-object v7

    sget-object v46, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v46, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v46, v11

    const-string v11, "<span style=\'color:"

    invoke-static {v11, v7, v6}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    :cond_22
    move-object/from16 v46, v11

    instance-of v7, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_23

    move-object v7, v3

    check-cast v7, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    sget-object v11, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span class=\'bg_"

    move/from16 v47, v13

    const-string v13, "\'>"

    invoke-static {v7, v11, v13}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    :cond_23
    move/from16 v47, v13

    instance-of v7, v3, Lⁱˉ/ˑﹳ;

    if-eqz v7, :cond_24

    const-string v7, "<span style=\'text-combine-upright:all;\'>"

    goto :goto_18

    :cond_24
    instance-of v7, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_26

    move-object v7, v3

    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    goto :goto_19

    :cond_25
    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v32

    :goto_19
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v7, v13, v26

    sget-object v7, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v7, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    :cond_26
    instance-of v7, v3, Landroid/text/style/RelativeSizeSpan;

    if-eqz v7, :cond_27

    move-object v7, v3

    check-cast v7, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v7}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v7

    mul-float v7, v7, v19

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v7, v13, v26

    sget-object v7, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v7, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_18

    :cond_27
    instance-of v7, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_29

    move-object v7, v3

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_28

    sget-object v11, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span style=\'font-family:\""

    const-string v13, "\";\'>"

    invoke-static {v11, v7, v13}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_18

    :cond_28
    :goto_1a
    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v7, v44

    goto/16 :goto_1e

    :cond_29
    instance-of v7, v3, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_2d

    move-object v7, v3

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_2c

    const/4 v13, 0x2

    if-eq v7, v13, :cond_2b

    const/4 v11, 0x3

    if-eq v7, v11, :cond_2a

    goto :goto_1a

    :cond_2a
    const-string v7, "<b><i>"

    goto/16 :goto_18

    :cond_2b
    const-string v7, "<i>"

    goto/16 :goto_18

    :cond_2c
    const-string v7, "<b>"

    goto/16 :goto_18

    :cond_2d
    instance-of v7, v3, Lⁱˉ/ᵎﹶ;

    if-eqz v7, :cond_31

    move-object v7, v3

    check-cast v7, Lⁱˉ/ᵎﹶ;

    iget v7, v7, Lⁱˉ/ᵎﹶ;->ⁱˊ:I

    const/4 v11, -0x1

    if-eq v7, v11, :cond_30

    const/4 v11, 0x1

    if-eq v7, v11, :cond_2f

    const/4 v13, 0x2

    if-eq v7, v13, :cond_2e

    goto :goto_1a

    :cond_2e
    const-string v7, "<ruby style=\'ruby-position:under;\'>"

    goto/16 :goto_18

    :cond_2f
    const-string v7, "<ruby style=\'ruby-position:over;\'>"

    goto/16 :goto_18

    :cond_30
    const-string v7, "<ruby style=\'ruby-position:unset;\'>"

    goto/16 :goto_18

    :cond_31
    instance-of v7, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_32

    const-string v7, "<u>"

    goto/16 :goto_18

    :cond_32
    instance-of v7, v3, Lⁱˉ/ᵔᵢ;

    if-eqz v7, :cond_28

    move-object v7, v3

    check-cast v7, Lⁱˉ/ᵔᵢ;

    iget v11, v7, Lⁱˉ/ᵔᵢ;->ﹳٴ:I

    iget v13, v7, Lⁱˉ/ᵔᵢ;->ⁱˊ:I

    move/from16 v48, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v49, v15

    const/4 v15, 0x1

    if-eq v13, v15, :cond_34

    const/4 v15, 0x2

    if-eq v13, v15, :cond_33

    goto :goto_1b

    :cond_33
    const-string v13, "open "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_34
    const/4 v15, 0x2

    const-string v13, "filled "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    if-eqz v11, :cond_38

    const/4 v13, 0x1

    if-eq v11, v13, :cond_37

    if-eq v11, v15, :cond_36

    const/4 v13, 0x3

    if-eq v11, v13, :cond_35

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_35
    const-string v11, "sesame"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_36
    const-string v11, "dot"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_37
    const-string v11, "circle"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_38
    const-string v11, "none"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v7, v7, Lⁱˉ/ᵔᵢ;->ʽ:I

    const/4 v13, 0x2

    if-eq v7, v13, :cond_39

    const-string v7, "over right"

    goto :goto_1d

    :cond_39
    const-string v7, "under left"

    :goto_1d
    new-array v14, v13, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v11, v14, v26

    const/16 v27, 0x1

    aput-object v7, v14, v27

    sget-object v7, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    invoke-static {v7, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1e
    if-nez v45, :cond_3b

    instance-of v11, v3, Landroid/text/style/ForegroundColorSpan;

    if-nez v11, :cond_3b

    instance-of v11, v3, Landroid/text/style/BackgroundColorSpan;

    if-nez v11, :cond_3b

    instance-of v11, v3, Lⁱˉ/ˑﹳ;

    if-nez v11, :cond_3b

    instance-of v11, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v11, :cond_3b

    instance-of v11, v3, Landroid/text/style/RelativeSizeSpan;

    if-nez v11, :cond_3b

    instance-of v11, v3, Lⁱˉ/ᵔᵢ;

    if-eqz v11, :cond_3a

    goto :goto_1f

    :cond_3a
    instance-of v11, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v11, :cond_3d

    move-object v11, v3

    check-cast v11, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v11}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3c

    :cond_3b
    :goto_1f
    move-object v11, v4

    goto :goto_21

    :cond_3c
    :goto_20
    move-object/from16 v11, v44

    goto :goto_21

    :cond_3d
    instance-of v11, v3, Landroid/text/style/StyleSpan;

    if-eqz v11, :cond_41

    move-object v11, v3

    check-cast v11, Landroid/text/style/StyleSpan;

    invoke-virtual {v11}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v11

    const/4 v15, 0x1

    if-eq v11, v15, :cond_40

    const/4 v13, 0x2

    if-eq v11, v13, :cond_3f

    const/4 v13, 0x3

    if-eq v11, v13, :cond_3e

    goto :goto_20

    :cond_3e
    const-string v44, "</i></b>"

    goto :goto_20

    :cond_3f
    const-string v44, "</i>"

    goto :goto_20

    :cond_40
    const-string v44, "</b>"

    goto :goto_20

    :cond_41
    instance-of v11, v3, Lⁱˉ/ᵎﹶ;

    if-eqz v11, :cond_42

    move-object v11, v3

    check-cast v11, Lⁱˉ/ᵎﹶ;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "<rt>"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v11, Lⁱˉ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v11}, Lᐧⁱ/ٴʼ;->ﹳٴ(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "</rt></ruby>"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    goto :goto_20

    :cond_42
    instance-of v11, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v11, :cond_3c

    const-string v44, "</u>"

    goto :goto_20

    :goto_21
    invoke-interface {v12, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v12, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-eqz v7, :cond_45

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lᐧⁱ/ˉٴ;

    invoke-direct {v14, v13, v3, v7, v11}, Lᐧⁱ/ˉٴ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᐧⁱ/ᵎⁱ;

    if-nez v7, :cond_43

    new-instance v7, Lᐧⁱ/ᵎⁱ;

    invoke-direct {v7}, Lᐧⁱ/ᵎⁱ;-><init>()V

    invoke-virtual {v9, v13, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_43
    iget-object v7, v7, Lᐧⁱ/ᵎⁱ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᐧⁱ/ᵎⁱ;

    if-nez v7, :cond_44

    new-instance v7, Lᐧⁱ/ᵎⁱ;

    invoke-direct {v7}, Lᐧⁱ/ᵎⁱ;-><init>()V

    invoke-virtual {v9, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_44
    iget-object v3, v7, Lᐧⁱ/ᵎⁱ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v14, v48, 0x1

    move-object/from16 v3, v42

    move-object/from16 v7, v43

    move-object/from16 v11, v46

    move/from16 v13, v47

    move-object/from16 v15, v49

    goto/16 :goto_16

    :cond_46
    move-object/from16 v42, v3

    move-object/from16 v43, v7

    move-object/from16 v49, v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_22
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v7, v13, :cond_49

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-interface {v12, v11, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Lᐧⁱ/ٴʼ;->ﹳٴ(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lᐧⁱ/ᵎⁱ;

    iget-object v14, v11, Lᐧⁱ/ᵎⁱ;->ⁱˊ:Ljava/util/ArrayList;

    iget-object v15, v11, Lᐧⁱ/ᵎⁱ;->ﹳٴ:Ljava/util/ArrayList;

    move/from16 v19, v7

    sget-object v7, Lᐧⁱ/ˉٴ;->ﾞᴵ:Lcom/parse/ʼᐧ;

    invoke-static {v14, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v7, v11, Lᐧⁱ/ᵎⁱ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x0

    :goto_23
    if-ge v14, v11, :cond_47

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v44, v7

    move-object/from16 v7, v32

    check-cast v7, Lᐧⁱ/ˉٴ;

    iget-object v7, v7, Lᐧⁱ/ˉٴ;->ˈ:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v44

    goto :goto_23

    :cond_47
    sget-object v7, Lᐧⁱ/ˉٴ;->ˑﹳ:Lcom/parse/ʼᐧ;

    invoke-static {v15, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_24
    if-ge v11, v7, :cond_48

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v11, v11, 0x1

    check-cast v14, Lᐧⁱ/ˉٴ;

    iget-object v14, v14, Lᐧⁱ/ˉٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_48
    add-int/lit8 v7, v19, 0x1

    move v11, v13

    goto :goto_22

    :cond_49
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v12, v11, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lᐧⁱ/ٴʼ;->ﹳٴ(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Lʻᴵ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x7

    invoke-direct {v12, v9, v3}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    :goto_25
    iget-object v3, v12, Lʻᴵ/ﹳٴ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_4b

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    goto :goto_27

    :cond_4a
    const/4 v9, 0x0

    goto :goto_28

    :cond_4b
    :goto_27
    const/4 v9, 0x1

    :goto_28
    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    goto :goto_26

    :cond_4c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v8, Lⁱˉ/ⁱˊ;->ᵔﹳ:F

    cmpl-float v14, v13, v25

    if-eqz v14, :cond_4f

    const/4 v15, 0x2

    const/4 v14, 0x1

    if-eq v5, v15, :cond_4e

    if-ne v5, v14, :cond_4d

    goto :goto_29

    :cond_4d
    const-string v5, "skewX"

    goto :goto_2a

    :cond_4e
    :goto_29
    const-string v5, "skewY"

    :goto_2a
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move/from16 v27, v14

    new-array v14, v15, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v5, v14, v26

    aput-object v13, v14, v27

    sget-object v5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%s(%.2fdeg)"

    invoke-static {v5, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2b

    :cond_4f
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v5, v39

    :goto_2b
    const/16 v13, 0xe

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v7, v13, v26

    aput-object v31, v13, v27

    const/16 v23, 0x2

    aput-object v9, v13, v23

    const/16 v22, 0x3

    aput-object v30, v13, v22

    aput-object v38, v13, v18

    const/4 v7, 0x5

    aput-object v34, v13, v7

    const/4 v7, 0x6

    aput-object v28, v13, v7

    const/16 v35, 0x7

    aput-object v36, v13, v35

    const/16 v7, 0x8

    aput-object v29, v13, v7

    const/16 v7, 0x9

    aput-object v33, v13, v7

    const/16 v7, 0xa

    aput-object v40, v13, v7

    const/16 v7, 0xb

    aput-object v11, v13, v7

    const/16 v7, 0xc

    aput-object v12, v13, v7

    const/16 v7, 0xd

    aput-object v5, v13, v7

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v5, v7, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<span class=\'default_bg\'>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lⁱˉ/ⁱˊ;->ʽ:Landroid/text/Layout$Alignment;

    if-eqz v5, :cond_52

    sget-object v7, Lᐧⁱ/ˊˋ;->ﹳٴ:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    const/4 v11, 0x1

    if-eq v5, v11, :cond_51

    const/4 v13, 0x2

    if-eq v5, v13, :cond_50

    move-object/from16 v15, v24

    goto :goto_2c

    :cond_50
    move-object/from16 v15, v20

    goto :goto_2c

    :cond_51
    const/4 v13, 0x2

    move-object/from16 v15, v49

    :goto_2c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "<span style=\'display:inline-block; text-align:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_52
    const/4 v13, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2d
    const-string v3, "</span></div>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v17, 0x1

    move v12, v13

    move/from16 v5, v16

    move/from16 v9, v18

    move/from16 v11, v22

    move-object/from16 v3, v42

    move-object/from16 v7, v43

    const/4 v4, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_53
    const-string v3, "</div></body></html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<html><head><style>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_54
    const-string v2, "</style></head>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v11, 0x1

    invoke-static {v1, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "base64"

    iget-object v4, v0, Lᐧⁱ/ʼˈ;->ᴵˊ:Lᐧⁱ/ˋᵔ;

    invoke-virtual {v4, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ⁱˊ(IF)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1}, Lᴵˋ/ˊʻ;->ˉٴ(IFII)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const-string p1, "unset"

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%.2fpx"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Ljava/util/List;Lᐧⁱ/ˑﹳ;FF)V
    .locals 5

    .prologue
    iput-object p2, p0, Lᐧⁱ/ʼˈ;->ˈٴ:Lᐧⁱ/ˑﹳ;

    iput p3, p0, Lᐧⁱ/ʼˈ;->ᴵᵔ:F

    iput p4, p0, Lᐧⁱ/ʼˈ;->ˊʻ:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱˉ/ⁱˊ;

    iget-object v4, v3, Lⁱˉ/ⁱˊ;->ˈ:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lᐧⁱ/ʼˈ;->ʽʽ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iput-object v1, p0, Lᐧⁱ/ʼˈ;->ʽʽ:Ljava/util/List;

    invoke-virtual {p0}, Lᐧⁱ/ʼˈ;->ʽ()V

    :cond_3
    iget-object p1, p0, Lᐧⁱ/ʼˈ;->ʾˋ:Lᐧⁱ/ˈ;

    invoke-virtual {p1, v0, p2, p3, p4}, Lᐧⁱ/ˈ;->ﹳٴ(Ljava/util/List;Lᐧⁱ/ˑﹳ;FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
