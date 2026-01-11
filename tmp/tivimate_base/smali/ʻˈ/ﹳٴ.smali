.class public abstract Lʻˈ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:[I

.field public static final ʽ:[I

.field public static final ˆʾ:[I

.field public static final ˈ:[I

.field public static final ˑﹳ:[I

.field public static final ٴﹶ:[I

.field public static final ᵎﹶ:[I

.field public static final ᵔᵢ:[I

.field public static final ⁱˊ:[I

.field public static final ﹳٴ:[I

.field public static final ﾞᴵ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lʻˈ/ﹳٴ;->ﹳٴ:[I

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lʻˈ/ﹳٴ;->ⁱˊ:[I

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lʻˈ/ﹳٴ;->ʽ:[I

    const v1, 0x1010003

    const v2, 0x1010405

    const v3, 0x101051e

    filled-new-array {v1, v2, v3}, [I

    move-result-object v3

    sput-object v3, Lʻˈ/ﹳٴ;->ˈ:[I

    const v3, 0x1010199

    filled-new-array {v3}, [I

    move-result-object v3

    sput-object v3, Lʻˈ/ﹳٴ;->ˑﹳ:[I

    const v3, 0x10101cd

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sput-object v1, Lʻˈ/ﹳٴ;->ﾞᴵ:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lʻˈ/ﹳٴ;->ᵎﹶ:[I

    const v0, 0x10102e2

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lʻˈ/ﹳٴ;->ᵔᵢ:[I

    const v0, 0x10102de

    const v1, 0x10102df

    const v3, 0x10102e0

    const v4, 0x10102e1

    filled-new-array {v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lʻˈ/ﹳٴ;->ʼˎ:[I

    const v0, 0x1010024

    const v1, 0x10104d8

    const v5, 0x1010141

    filled-new-array {v0, v5, v3, v1}, [I

    move-result-object v0

    sput-object v0, Lʻˈ/ﹳٴ;->ˆʾ:[I

    const v0, 0x1010474

    const v1, 0x1010475

    filled-new-array {v4, v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lʻˈ/ﹳٴ;->ٴﹶ:[I

    return-void

    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
        0x101051e
    .end array-data

    :array_3
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public static ʽ(I)Z
    .locals 1

    .prologue
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ˈ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 20

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    sget-object v4, Lʻˈ/ﹳٴ;->ᵎﹶ:[I

    invoke-static {v0, v1, v2, v4}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget-object v5, Lʻˈ/ﹳٴ;->ٴﹶ:[I

    invoke-static {v0, v1, v2, v5}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p4, :cond_0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    const-string v2, "duration"

    invoke-static {v3, v2}, Lˉٴ/ⁱˊ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    const/16 v6, 0x12c

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    :goto_1
    int-to-long v6, v6

    const-string v2, "startOffset"

    const-string v8, "http://schemas.android.com/apk/res/android"

    invoke-interface {v3, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v10

    :goto_2
    int-to-long v11, v2

    const-string v2, "valueType"

    invoke-interface {v3, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    invoke-virtual {v4, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v13

    :goto_3
    const-string v14, "valueFrom"

    invoke-interface {v3, v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    if-eqz v14, :cond_c

    const-string v14, "valueTo"

    invoke-interface {v3, v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    const/4 v14, 0x6

    const/4 v9, 0x5

    if-ne v2, v13, :cond_b

    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_4

    move/from16 v16, v5

    goto :goto_4

    :cond_4
    move/from16 v16, v10

    :goto_4
    if-eqz v16, :cond_5

    iget v2, v2, Landroid/util/TypedValue;->type:I

    goto :goto_5

    :cond_5
    move v2, v10

    :goto_5
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_6

    move/from16 v17, v5

    goto :goto_6

    :cond_6
    move/from16 v17, v10

    :goto_6
    if-eqz v17, :cond_7

    iget v13, v13, Landroid/util/TypedValue;->type:I

    goto :goto_7

    :cond_7
    move v13, v10

    :goto_7
    if-eqz v16, :cond_8

    invoke-static {v2}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    if-eqz v17, :cond_a

    invoke-static {v13}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v2, v15

    goto :goto_8

    :cond_a
    move v2, v10

    :cond_b
    :goto_8
    const-string v13, ""

    invoke-static {v4, v2, v9, v14, v13}, Lʻˈ/ﹳٴ;->ⁱˊ(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    if-eqz v9, :cond_c

    new-array v13, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v9, v13, v10

    invoke-virtual {v1, v13}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_c
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string v6, "repeatCount"

    invoke-interface {v3, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v4, v15, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    goto :goto_9

    :cond_d
    move v6, v10

    :goto_9
    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-string v6, "repeatMode"

    invoke-interface {v3, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    goto :goto_a

    :cond_e
    move v7, v5

    :goto_a
    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz v0, :cond_1a

    move-object v6, v1

    check-cast v6, Landroid/animation/ObjectAnimator;

    const-string v7, "pathData"

    invoke-static {v0, v3, v7, v5}, Lˉٴ/ⁱˊ;->ˈ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    const-string v9, "propertyXName"

    const/4 v11, 0x2

    invoke-static {v0, v3, v9, v11}, Lˉٴ/ⁱˊ;->ˈ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v12, "propertyYName"

    invoke-static {v0, v3, v12, v15}, Lˉٴ/ⁱˊ;->ˈ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eq v2, v11, :cond_f

    const/4 v11, 0x4

    :cond_f
    if-nez v9, :cond_11

    if-eqz v12, :cond_10

    goto :goto_b

    :cond_10
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_b
    invoke-static {v7}, Lᴵˋ/ˊʻ;->ˆʾ(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    new-instance v7, Landroid/graphics/PathMeasure;

    invoke-direct {v7, v2, v10}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v13

    :goto_c
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    add-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v15

    if-nez v15, :cond_18

    new-instance v7, Landroid/graphics/PathMeasure;

    invoke-direct {v7, v2, v10}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v2, v14, v2

    float-to-int v2, v2

    add-int/2addr v2, v5

    const/16 v15, 0x64

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v15, v2, [F

    new-array v13, v2, [F

    move/from16 p4, v5

    move/from16 p3, v10

    const/4 v10, 0x2

    new-array v5, v10, [F

    add-int/lit8 v10, v2, -0x1

    int-to-float v10, v10

    div-float/2addr v14, v10

    move/from16 v10, p3

    move-object/from16 v17, v1

    move/from16 v16, v14

    const/16 p2, 0x0

    move v14, v10

    :goto_d
    const/4 v1, 0x0

    if-ge v10, v2, :cond_13

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move/from16 v19, v2

    sub-float v2, p2, v18

    invoke-virtual {v7, v2, v5, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v1, v5, p3

    aput v1, v15, v10

    aget v1, v5, p4

    aput v1, v13, v10

    add-float v1, p2, v16

    add-int/lit8 v2, v14, 0x1

    move/from16 p2, v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_12

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->nextContour()Z

    move v14, v2

    :cond_12
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v19

    goto :goto_d

    :cond_13
    if-eqz v9, :cond_14

    invoke-static {v9, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto :goto_e

    :cond_14
    move-object v2, v1

    :goto_e
    if-eqz v12, :cond_15

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    :cond_15
    if-nez v2, :cond_16

    move/from16 v5, p4

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, p3

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_f
    move/from16 v2, p3

    goto :goto_10

    :cond_16
    move/from16 v5, p4

    if-nez v1, :cond_17

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, p3

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_f

    :cond_17
    const/4 v10, 0x2

    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, p3

    aput-object v1, v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_f

    :cond_18
    move/from16 p3, v10

    goto/16 :goto_c

    :cond_19
    move-object/from16 v17, v1

    move/from16 p3, v10

    const-string v1, "propertyName"

    move/from16 v2, p3

    invoke-static {v0, v3, v1, v2}, Lˉٴ/ⁱˊ;->ˈ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_10

    :cond_1a
    move-object/from16 v17, v1

    move v2, v10

    :goto_10
    const-string v1, "interpolator"

    invoke-interface {v3, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v4, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_11

    :cond_1b
    move v10, v2

    :goto_11
    if-lez v10, :cond_1c

    move-object/from16 v1, p0

    invoke-static {v1, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_12

    :cond_1c
    move-object/from16 v2, v17

    :goto_12
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1d
    return-object v2
.end method

.method public static ⁱˊ(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 11

    .prologue
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-eqz v5, :cond_3

    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne p1, v6, :cond_7

    if-eqz v3, :cond_4

    invoke-static {v0}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    if-eqz v5, :cond_6

    invoke-static {v4}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move p1, v7

    goto :goto_4

    :cond_6
    move p1, v2

    :cond_7
    :goto_4
    if-nez p1, :cond_8

    move v6, v1

    goto :goto_5

    :cond_8
    move v6, v2

    :goto_5
    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne p1, v8, :cond_e

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lᴵˋ/ˊʻ;->ʼˎ(Ljava/lang/String;)[Lᵎⁱ/ˈ;

    move-result-object p2

    invoke-static {p0}, Lᴵˋ/ˊʻ;->ʼˎ(Ljava/lang/String;)[Lᵎⁱ/ˈ;

    move-result-object p3

    if-nez p2, :cond_9

    if-eqz p3, :cond_d

    :cond_9
    if-eqz p2, :cond_c

    new-instance v0, Lʻˈ/ᵎﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_b

    invoke-static {p2, p3}, Lᴵˋ/ˊʻ;->ˈ([Lᵎⁱ/ˈ;[Lᵎⁱ/ˈ;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-array p0, v8, [Ljava/lang/Object;

    aput-object p2, p0, v2

    aput-object p3, p0, v1

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " Can\'t morph from "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p2, p0, v2

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p3, :cond_d

    new-instance p0, Lʻˈ/ᵎﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v2

    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v9

    :cond_e
    if-ne p1, v7, :cond_f

    sget-object p1, Lʻˈ/ᵔᵢ;->ﹳٴ:Lʻˈ/ᵔᵢ;

    goto :goto_6

    :cond_f
    move-object p1, v9

    :goto_6
    const/4 v7, 0x5

    const/4 v10, 0x0

    if-eqz v6, :cond_15

    if-eqz v3, :cond_13

    if-ne v0, v7, :cond_10

    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_7

    :cond_10
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    :goto_7
    if-eqz v5, :cond_12

    if-ne v4, v7, :cond_11

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_8

    :cond_11
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    :goto_8
    new-array p3, v8, [F

    aput p2, p3, v2

    aput p0, p3, v1

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    :goto_9
    move-object v9, p0

    goto/16 :goto_e

    :cond_12
    new-array p0, v1, [F

    aput p2, p0, v2

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_9

    :cond_13
    if-ne v4, v7, :cond_14

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_a

    :cond_14
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    :goto_a
    new-array p2, v1, [F

    aput p0, p2, v2

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_9

    :cond_15
    if-eqz v3, :cond_1b

    if-ne v0, v7, :cond_16

    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_b

    :cond_16
    invoke-static {v0}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_b

    :cond_17
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :goto_b
    if-eqz v5, :cond_1a

    if-ne v4, v7, :cond_18

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_c

    :cond_18
    invoke-static {v4}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_c

    :cond_19
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    :goto_c
    filled-new-array {p2, p0}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    goto :goto_e

    :cond_1a
    filled-new-array {p2}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    goto :goto_e

    :cond_1b
    if-eqz v5, :cond_1e

    if-ne v4, v7, :cond_1c

    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_d

    :cond_1c
    invoke-static {v4}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_d

    :cond_1d
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    :goto_d
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    :cond_1e
    :goto_e
    if-eqz v9, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {v9, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1f
    return-object v9
.end method

.method public static ﹳٴ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 27

    .prologue
    move-object/from16 v7, p5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v11, 0x0

    if-ne v1, v2, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v8, :cond_0

    goto :goto_1

    :cond_0
    move v1, v11

    goto/16 :goto_23

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "objectAnimator"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v5}, Lʻˈ/ﹳٴ;->ˈ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-object/from16 v12, p3

    :goto_2
    move-object v0, v4

    :goto_3
    move/from16 v20, v8

    goto/16 :goto_22

    :cond_3
    const-string v5, "animator"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v5}, Lʻˈ/ﹳٴ;->ˈ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object v6, v2

    move-object v12, v5

    move-object v5, v1

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v12, p3

    const-string v13, "set"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "http://schemas.android.com/apk/res/android"

    if-eqz v13, :cond_6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Lʻˈ/ﹳٴ;->ᵔᵢ:[I

    move-object/from16 v3, p4

    invoke-static {v5, v6, v3, v1}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const-string v1, "ordering"

    invoke-interface {v12, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v13, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    move-object v2, v6

    move v6, v1

    move-object v4, v3

    move-object v3, v12

    move-object v1, v5

    :goto_4
    move-object v5, v0

    move-object/from16 v0, p0

    goto :goto_5

    :cond_5
    move-object v2, v6

    move v6, v11

    move-object v4, v3

    move-object v1, v5

    move-object v3, v12

    goto :goto_4

    :goto_5
    invoke-static/range {v0 .. v6}, Lʻˈ/ﹳٴ;->ﹳٴ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-object v6, v2

    move-object v12, v3

    move-object v0, v5

    move-object v5, v1

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_6
    const-string v13, "propertyValuesHolder"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-eq v9, v2, :cond_32

    if-eq v9, v3, :cond_32

    if-eq v9, v4, :cond_7

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_6

    :cond_7
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    sget-object v9, Lʻˈ/ﹳٴ;->ʼˎ:[I

    invoke-static {v5, v6, v1, v9}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const-string v11, "propertyName"

    invoke-static {v9, v12, v11, v2}, Lˉٴ/ⁱˊ;->ˈ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "valueType"

    invoke-interface {v12, v14, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x4

    if-eqz v3, :cond_8

    invoke-virtual {v9, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_7

    :cond_8
    move v3, v2

    :goto_7
    move-object/from16 v18, v1

    move v1, v3

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_8
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move/from16 v20, v8

    const/4 v8, 0x3

    if-eq v2, v8, :cond_1c

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1c

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "keyframe"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "value"

    sget-object v8, Lʻˈ/ﹳٴ;->ˆʾ:[I

    move-object/from16 v22, v13

    const/4 v13, 0x4

    if-ne v1, v13, :cond_b

    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {v5, v6, v1, v8}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v12, v2}, Lˉٴ/ⁱˊ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v23

    move-object/from16 v13, v23

    :goto_9
    if-eqz v13, :cond_a

    iget v13, v13, Landroid/util/TypedValue;->type:I

    invoke-static {v13}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x3

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v13

    :cond_b
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    invoke-static {v5, v6, v13, v8}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const-string v13, "fraction"

    invoke-static {v12, v13}, Lˉٴ/ⁱˊ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    const/high16 v5, -0x40800000    # -1.0f

    if-nez v13, :cond_c

    goto :goto_b

    :cond_c
    const/4 v13, 0x3

    invoke-virtual {v8, v13, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    :goto_b
    invoke-static {v12, v2}, Lˉٴ/ⁱˊ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    const/4 v13, 0x0

    goto :goto_c

    :cond_d
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v23

    move-object/from16 v13, v23

    :goto_c
    if-eqz v13, :cond_e

    const/16 v19, 0x1

    :goto_d
    const/4 v6, 0x4

    goto :goto_e

    :cond_e
    const/16 v19, 0x0

    goto :goto_d

    :goto_e
    if-ne v1, v6, :cond_10

    if-eqz v19, :cond_f

    iget v13, v13, Landroid/util/TypedValue;->type:I

    invoke-static {v13}, Lʻˈ/ﹳٴ;->ʽ(I)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v13, 0x3

    goto :goto_f

    :cond_f
    const/4 v13, 0x0

    goto :goto_f

    :cond_10
    move v13, v1

    :goto_f
    if-eqz v19, :cond_15

    if-eqz v13, :cond_13

    const/4 v6, 0x1

    if-eq v13, v6, :cond_11

    const/4 v6, 0x3

    if-eq v13, v6, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    invoke-interface {v12, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v2, v16

    goto :goto_10

    :cond_12
    const/4 v13, 0x0

    move v2, v13

    :goto_10
    invoke-static {v5, v2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_12

    :cond_13
    const/4 v13, 0x0

    invoke-interface {v12, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v8, v13, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    goto :goto_11

    :cond_14
    const/4 v2, 0x0

    :goto_11
    invoke-static {v5, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_12

    :cond_15
    if-nez v13, :cond_16

    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_12

    :cond_16
    invoke-static {v5}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v2

    :goto_12
    const-string v5, "interpolator"

    invoke-interface {v12, v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    const/4 v6, 0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    goto :goto_13

    :cond_17
    const/4 v5, 0x0

    :goto_13
    move-object/from16 v6, p0

    if-lez v5, :cond_18

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_18
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_1a

    if-nez v4, :cond_19

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_19
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_14

    :cond_1b
    move-object/from16 v6, p0

    move-object/from16 v22, v13

    :goto_14
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, v20

    move-object/from16 v13, v22

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v6, p0

    move-object/from16 v22, v13

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2c

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Keyframe;

    invoke-virtual {v8}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    move/from16 v19, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v23, v13, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-gez v23, :cond_20

    const/16 v21, 0x0

    cmpg-float v13, v13, v21

    if-gez v13, :cond_1d

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v8, v13}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_16

    :cond_1d
    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v6, :cond_1e

    invoke-static/range {v24 .. v24}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v8

    goto :goto_15

    :cond_1e
    invoke-virtual/range {v23 .. v23}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v2, :cond_1f

    invoke-static/range {v24 .. v24}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v8

    goto :goto_15

    :cond_1f
    invoke-static/range {v24 .. v24}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v8

    :goto_15
    invoke-virtual {v4, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v19, 0x1

    move/from16 v19, v8

    :cond_20
    :goto_16
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v8

    const/4 v13, 0x0

    cmpl-float v21, v8, v13

    if-eqz v21, :cond_24

    cmpg-float v8, v8, v13

    if-gez v8, :cond_21

    invoke-virtual {v5, v13}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_19

    :cond_21
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v6, :cond_22

    invoke-static {v13}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v2

    :goto_17
    const/4 v13, 0x0

    goto :goto_18

    :cond_22
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v2, :cond_23

    invoke-static {v13}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_17

    :cond_23
    invoke-static {v13}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_17

    :goto_18
    invoke-virtual {v4, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v19, v19, 0x1

    :cond_24
    :goto_19
    move/from16 v2, v19

    new-array v5, v2, [Landroid/animation/Keyframe;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v2, :cond_2b

    aget-object v4, v5, v13

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-gez v6, :cond_25

    if-nez v13, :cond_26

    invoke-virtual {v4, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_25
    move/from16 v19, v2

    move/from16 v21, v8

    goto :goto_1e

    :cond_26
    add-int/lit8 v6, v2, -0x1

    if-ne v13, v6, :cond_27

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    move/from16 v19, v2

    const/16 v21, 0x0

    goto :goto_1e

    :cond_27
    const/high16 v8, 0x3f800000    # 1.0f

    add-int/lit8 v4, v13, 0x1

    move v8, v13

    :goto_1b
    if-ge v4, v6, :cond_29

    aget-object v19, v5, v4

    invoke-virtual/range {v19 .. v19}, Landroid/animation/Keyframe;->getFraction()F

    move-result v19

    const/16 v21, 0x0

    cmpl-float v19, v19, v21

    if-ltz v19, :cond_28

    goto :goto_1c

    :cond_28
    add-int/lit8 v8, v4, 0x1

    move/from16 v26, v8

    move v8, v4

    move/from16 v4, v26

    goto :goto_1b

    :cond_29
    const/16 v21, 0x0

    :goto_1c
    add-int/lit8 v4, v8, 0x1

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-int/lit8 v6, v13, -0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    sub-float/2addr v4, v6

    sub-int v6, v8, v13

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-float/2addr v4, v6

    move v6, v13

    :goto_1d
    if-gt v6, v8, :cond_2a

    move/from16 v19, v2

    aget-object v2, v5, v6

    add-int/lit8 v23, v6, -0x1

    aget-object v23, v5, v23

    invoke-virtual/range {v23 .. v23}, Landroid/animation/Keyframe;->getFraction()F

    move-result v23

    move/from16 v25, v4

    add-float v4, v23, v25

    invoke-virtual {v2, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v19

    move/from16 v4, v25

    goto :goto_1d

    :cond_2a
    move/from16 v19, v2

    :goto_1e
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v19

    goto :goto_1a

    :cond_2b
    invoke-static {v11, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v13, 0x3

    if-ne v1, v13, :cond_2d

    sget-object v1, Lʻˈ/ᵔᵢ;->ﹳٴ:Lʻˈ/ᵔᵢ;

    invoke-virtual {v2, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_1f

    :cond_2c
    const/4 v13, 0x3

    const/4 v2, 0x0

    :cond_2d
    :goto_1f
    const/4 v1, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_2e

    invoke-static {v9, v3, v1, v6, v11}, Lʻˈ/ﹳٴ;->ⁱˊ(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    :cond_2e
    if-eqz v2, :cond_30

    if-nez v15, :cond_2f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_20

    :cond_31
    move-object/from16 v18, v1

    move v6, v3

    move/from16 v17, v4

    move/from16 v20, v8

    move v1, v11

    move-object/from16 v22, v13

    move v13, v2

    :goto_20
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v5, p1

    move v11, v1

    move v3, v6

    move v2, v13

    move/from16 v4, v17

    move-object/from16 v1, v18

    move/from16 v8, v20

    move-object/from16 v13, v22

    move-object/from16 v6, p2

    goto/16 :goto_6

    :cond_32
    move v6, v3

    move/from16 v20, v8

    move v1, v11

    if-eqz v15, :cond_33

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    move v11, v1

    :goto_21
    if-ge v11, v2, :cond_34

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    :cond_33
    const/4 v3, 0x0

    :cond_34
    if-eqz v3, :cond_35

    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_35

    move-object v1, v0

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_35
    move v11, v6

    :goto_22
    if-eqz v7, :cond_37

    if-nez v11, :cond_37

    if-nez v10, :cond_36

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_36
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    move/from16 v8, v20

    goto/16 :goto_0

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown animator name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_23
    if-eqz v7, :cond_3b

    if-eqz v10, :cond_3b

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/Animator;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v11, v1

    :goto_24
    if-ge v1, v3, :cond_39

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Landroid/animation/Animator;

    add-int/lit8 v5, v11, 0x1

    aput-object v4, v2, v11

    move v11, v5

    goto :goto_24

    :cond_39
    if-nez p6, :cond_3a

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :cond_3a
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_3b
    return-object v0
.end method
