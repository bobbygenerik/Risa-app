.class public final Lᴵᵔ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵᵔ/ʼᐧ;


# instance fields
.field public final ﹳٴ:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 25

    .prologue
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const v4, 0x3b03126f    # 0.002f

    const/4 v6, 0x0

    if-lt v2, v3, :cond_0

    invoke-static {v1, v4}, Lᴵᵔ/ˏי;->ﹳٴ(Landroid/graphics/Path;F)[F

    move-result-object v1

    move/from16 p2, v6

    goto/16 :goto_7

    :cond_0
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v1, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v8

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v9

    if-nez v9, :cond_10

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v1, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    div-float v1, v7, v4

    float-to-int v1, v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    const/16 v9, 0x64

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v9, Ljava/util/ArrayList;

    mul-int/lit8 v10, v1, 0x3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x2

    new-array v11, v10, [F

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float v12, v7, v12

    new-array v13, v10, [F

    new-array v10, v10, [F

    move/from16 p1, v4

    move v4, v6

    move v14, v4

    move/from16 v16, v14

    move v15, v8

    :goto_1
    if-ge v14, v1, :cond_9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v8, v15, v17

    invoke-virtual {v2, v8, v11, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 p2, v6

    add-int/lit8 v6, v8, -0x1

    if-lez v14, :cond_4

    aget v17, v11, p2

    aget v18, v11, p1

    const/16 v19, 0x3

    add-int/lit8 v5, v8, -0x2

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    aget v22, v10, p2

    aget v23, v13, p2

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const v23, 0x38d1b717    # 1.0E-4f

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_1

    aget v22, v10, p1

    aget v24, v13, p1

    sub-float v22, v22, v24

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    cmpl-float v22, v22, v23

    if-lez v22, :cond_2

    :cond_1
    move/from16 v18, v1

    goto :goto_2

    :cond_2
    sub-float v17, v17, v20

    sub-float v18, v18, v21

    aget v20, v10, p1

    mul-float v17, v17, v20

    aget v20, v10, p2

    mul-float v18, v18, v20

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v17, v17, v23

    if-gez v17, :cond_1

    if-eqz v16, :cond_3

    add-int/lit8 v8, v8, -0x3

    div-float v17, v15, v7

    move/from16 v18, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aget v1, v11, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aget v1, v11, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    move/from16 v18, v1

    div-float v1, v15, v7

    aget v5, v11, p2

    aget v6, v11, p1

    invoke-static {v9, v1, v5, v6}, Lʼ/ᵎﹶ;->ᵎﹶ(Ljava/util/ArrayList;FFF)V

    move/from16 v16, p1

    goto :goto_4

    :cond_4
    move/from16 v18, v1

    const/16 v19, 0x3

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int v1, v14, v1

    if-lez v1, :cond_5

    if-eqz v16, :cond_5

    move/from16 v5, v19

    invoke-static {v5, v9}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v7

    const/4 v6, 0x4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v12, v1

    :goto_3
    add-float/2addr v5, v1

    cmpg-float v6, v5, v15

    if-gez v6, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float v6, v5, v6

    invoke-virtual {v2, v6, v11, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    div-float v6, v5, v7

    aget v8, v11, p2

    move/from16 v16, v1

    aget v1, v11, p1

    invoke-static {v9, v6, v8, v1}, Lʼ/ᵎﹶ;->ᵎﹶ(Ljava/util/ArrayList;FFF)V

    move/from16 v1, v16

    goto :goto_3

    :cond_5
    div-float v1, v15, v7

    aget v5, v11, p2

    aget v6, v11, p1

    invoke-static {v9, v1, v5, v6}, Lʼ/ᵎﹶ;->ᵎﹶ(Ljava/util/ArrayList;FFF)V

    :cond_6
    move/from16 v16, p2

    :goto_4
    add-float/2addr v15, v12

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v15, v5

    if-lez v5, :cond_7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    invoke-virtual {v2, v4, v11, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    div-float/2addr v5, v7

    aget v4, v11, p2

    aget v6, v11, p1

    invoke-static {v9, v5, v4, v6}, Lʼ/ᵎﹶ;->ᵎﹶ(Ljava/util/ArrayList;FFF)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move v4, v1

    :cond_7
    aget v1, v10, p2

    aput v1, v13, p2

    aget v1, v10, p1

    aput v1, v13, p1

    cmpl-float v1, v15, v7

    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, p2

    move/from16 v1, v18

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    move/from16 p2, v6

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    move/from16 v2, p2

    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iput-object v1, v0, Lᴵᵔ/יـ;->ﹳٴ:[F

    array-length v1, v1

    const/16 v19, 0x3

    div-int/lit8 v1, v1, 0x3

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Lᴵᵔ/יـ;->ⁱˊ(I)F

    move-result v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lᴵᵔ/יـ;->ﹳٴ(FF)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v5}, Lᴵᵔ/יـ;->ʽ(I)F

    move-result v2

    invoke-static {v2, v6}, Lᴵᵔ/יـ;->ﹳٴ(FF)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lᴵᵔ/יـ;->ⁱˊ(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lᴵᵔ/יـ;->ﹳٴ(FF)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v2}, Lᴵᵔ/יـ;->ʽ(I)F

    move-result v2

    invoke-static {v2, v4}, Lᴵᵔ/יـ;->ﹳٴ(FF)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v6

    move v8, v2

    move v6, v5

    :goto_8
    if-ge v6, v1, :cond_e

    iget-object v3, v0, Lᴵᵔ/יـ;->ﹳٴ:[F

    mul-int/lit8 v4, v6, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v6}, Lᴵᵔ/יـ;->ⁱˊ(I)F

    move-result v4

    cmpl-float v5, v3, v8

    if-nez v5, :cond_c

    cmpl-float v5, v4, v2

    if-nez v5, :cond_b

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_9
    cmpg-float v2, v4, v2

    if-ltz v2, :cond_d

    add-int/lit8 v6, v6, 0x1

    move v8, v3

    move v2, v4

    goto :goto_8

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Path cannot loop back on itself."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    return-void

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move v5, v6

    const/16 v19, 0x3

    goto/16 :goto_0
.end method

.method public static ﹳٴ(FF)Z
    .locals 0

    .prologue
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    .prologue
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lᴵᵔ/יـ;->ﹳٴ:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v1, v3

    if-le v4, v2, :cond_3

    add-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lᴵᵔ/יـ;->ⁱˊ(I)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lᴵᵔ/יـ;->ⁱˊ(I)F

    move-result v2

    invoke-virtual {p0, v3}, Lᴵᵔ/יـ;->ⁱˊ(I)F

    move-result v4

    sub-float/2addr v2, v4

    cmpl-float v0, v2, v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lᴵᵔ/יـ;->ʽ(I)F

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0, v3}, Lᴵᵔ/יـ;->ⁱˊ(I)F

    move-result v0

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    invoke-virtual {p0, v3}, Lᴵᵔ/יـ;->ʽ(I)F

    move-result v0

    invoke-virtual {p0, v1}, Lᴵᵔ/יـ;->ʽ(I)F

    move-result v1

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public final ʽ(I)F
    .locals 1

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lᴵᵔ/יـ;->ﹳٴ:[F

    aget p1, v0, p1

    return p1
.end method

.method public final ⁱˊ(I)F
    .locals 1

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lᴵᵔ/יـ;->ﹳٴ:[F

    aget p1, v0, p1

    return p1
.end method
