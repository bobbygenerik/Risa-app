.class public final Lˋᵔ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Landroid/view/VelocityTracker;

.field public ˈ:F

.field public ˑﹳ:I

.field public ᵎﹶ:I

.field public final ᵔᵢ:[I

.field public final ⁱˊ:Lˋᵔ/ʼˎ;

.field public final ﹳٴ:Landroid/content/Context;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lˋᵔ/ʼˎ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lˋᵔ/ᵔᵢ;->ˑﹳ:I

    iput v0, p0, Lˋᵔ/ᵔᵢ;->ﾞᴵ:I

    iput v0, p0, Lˋᵔ/ᵔᵢ;->ᵎﹶ:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ᵔᵢ;->ᵔᵢ:[I

    iput-object p1, p0, Lˋᵔ/ᵔᵢ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lˋᵔ/ᵔᵢ;->ⁱˊ:Lˋᵔ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/view/MotionEvent;I)V
    .locals 27

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    iget v5, v0, Lˋᵔ/ᵔᵢ;->ﾞᴵ:I

    const/16 v6, 0x22

    const/high16 v8, 0x400000

    iget-object v10, v0, Lˋᵔ/ᵔᵢ;->ᵔᵢ:[I

    if-ne v5, v3, :cond_1

    iget v5, v0, Lˋᵔ/ᵔᵢ;->ᵎﹶ:I

    if-ne v5, v4, :cond_1

    iget v5, v0, Lˋᵔ/ᵔᵢ;->ˑﹳ:I

    if-eq v5, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_1
    :goto_0
    iget-object v5, v0, Lˋᵔ/ᵔᵢ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    const/16 v16, 0x1

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x0

    const-string v12, "android"

    const-string v7, "dimen"

    const/4 v9, -0x1

    if-lt v11, v6, :cond_2

    sget-object v19, Lˋᵔ/ᵔי;->ﹳٴ:Ljava/lang/reflect/Method;

    invoke-static {v13, v14, v2, v15}, Lˊˋ/ﾞᴵ;->ᵎﹶ(Landroid/view/ViewConfiguration;III)I

    move-result v14

    goto :goto_3

    :cond_2
    sget-object v19, Lˋᵔ/ᵔי;->ﹳٴ:Ljava/lang/reflect/Method;

    invoke-static {v14}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14, v2, v15}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-ne v15, v8, :cond_3

    const/16 v15, 0x1a

    if-ne v2, v15, :cond_3

    const-string v15, "config_viewMinRotaryEncoderFlingVelocity"

    invoke-virtual {v14, v15, v7, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    goto :goto_1

    :cond_3
    move v15, v9

    :goto_1
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v15, v9, :cond_4

    if-eqz v15, :cond_5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    if-gez v14, :cond_6

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    goto :goto_3

    :cond_5
    :goto_2
    const v14, 0x7fffffff

    :cond_6
    :goto_3
    aput v14, v10, v17

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    if-lt v11, v6, :cond_7

    invoke-static {v13, v14, v2, v15}, Lˊˋ/ﾞᴵ;->ﾞᴵ(Landroid/view/ViewConfiguration;III)I

    move-result v5

    goto :goto_6

    :cond_7
    invoke-static {v14}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v11

    const/high16 v14, -0x80000000

    if-eqz v11, :cond_a

    invoke-virtual {v11, v2, v15}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-ne v15, v8, :cond_8

    const/16 v15, 0x1a

    if-ne v2, v15, :cond_8

    const-string v11, "config_viewMaxRotaryEncoderFlingVelocity"

    invoke-virtual {v5, v11, v7, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_8
    move v7, v9

    :goto_4
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v7, v9, :cond_9

    if-eqz v7, :cond_a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-gez v5, :cond_b

    goto :goto_5

    :cond_9
    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    goto :goto_6

    :cond_a
    :goto_5
    move v5, v14

    :cond_b
    :goto_6
    aput v5, v10, v16

    iput v3, v0, Lˋᵔ/ᵔᵢ;->ﾞᴵ:I

    iput v4, v0, Lˋᵔ/ᵔᵢ;->ᵎﹶ:I

    iput v2, v0, Lˋᵔ/ᵔᵢ;->ˑﹳ:I

    move/from16 v12, v16

    :goto_7
    aget v3, v10, v17

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_c

    iget-object v1, v0, Lˋᵔ/ᵔᵢ;->ʽ:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Lˋᵔ/ᵔᵢ;->ʽ:Landroid/view/VelocityTracker;

    return-void

    :cond_c
    iget-object v3, v0, Lˋᵔ/ᵔᵢ;->ʽ:Landroid/view/VelocityTracker;

    if-nez v3, :cond_d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v0, Lˋᵔ/ᵔᵢ;->ʽ:Landroid/view/VelocityTracker;

    :cond_d
    iget-object v3, v0, Lˋᵔ/ᵔᵢ;->ʽ:Landroid/view/VelocityTracker;

    sget-object v4, Lˋᵔ/ʻٴ;->ﹳٴ:Ljava/util/Map;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v7, 0x14

    if-lt v4, v6, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    if-ne v4, v8, :cond_12

    sget-object v4, Lˋᵔ/ʻٴ;->ﹳٴ:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    new-instance v8, Lˋᵔ/ـˆ;

    invoke-direct {v8}, Lˋᵔ/ـˆ;-><init>()V

    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˋᵔ/ـˆ;

    iget-object v8, v4, Lˋᵔ/ـˆ;->ⁱˊ:[J

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget v9, v4, Lˋᵔ/ـˆ;->ˈ:I

    if-eqz v9, :cond_10

    iget v9, v4, Lˋᵔ/ـˆ;->ˑﹳ:I

    aget-wide v19, v8, v9

    sub-long v19, v13, v19

    const-wide/16 v21, 0x28

    cmp-long v9, v19, v21

    if-lez v9, :cond_10

    move/from16 v9, v17

    iput v9, v4, Lˋᵔ/ـˆ;->ˈ:I

    iput v5, v4, Lˋᵔ/ـˆ;->ʽ:F

    :cond_10
    iget v9, v4, Lˋᵔ/ـˆ;->ˑﹳ:I

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v9, v7

    iput v9, v4, Lˋᵔ/ـˆ;->ˑﹳ:I

    iget v11, v4, Lˋᵔ/ـˆ;->ˈ:I

    if-eq v11, v7, :cond_11

    add-int/lit8 v11, v11, 0x1

    iput v11, v4, Lˋᵔ/ـˆ;->ˈ:I

    :cond_11
    iget-object v11, v4, Lˋᵔ/ـˆ;->ﹳٴ:[F

    const/16 v15, 0x1a

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    aput v1, v11, v9

    iget v1, v4, Lˋᵔ/ـˆ;->ˑﹳ:I

    aput-wide v13, v8, v1

    :cond_12
    :goto_8
    const/16 v1, 0x3e8

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v3, v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget-object v8, Lˋᵔ/ʻٴ;->ﹳٴ:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˋᵔ/ـˆ;

    if-eqz v8, :cond_1e

    iget-object v9, v8, Lˋᵔ/ـˆ;->ﹳٴ:[F

    iget-object v11, v8, Lˋᵔ/ـˆ;->ⁱˊ:[J

    iget v13, v8, Lˋᵔ/ـˆ;->ˈ:I

    const/4 v14, 0x2

    if-ge v13, v14, :cond_13

    :goto_9
    move/from16 p1, v4

    move v7, v5

    move/from16 v24, v7

    goto/16 :goto_d

    :cond_13
    iget v15, v8, Lˋᵔ/ـˆ;->ˑﹳ:I

    add-int/lit8 v18, v15, 0x14

    add-int/lit8 v13, v13, -0x1

    sub-int v18, v18, v13

    rem-int/lit8 v18, v18, 0x14

    aget-wide v19, v11, v15

    :goto_a
    aget-wide v21, v11, v18

    sub-long v23, v19, v21

    const-wide/16 v25, 0x64

    cmp-long v13, v23, v25

    if-lez v13, :cond_14

    iget v13, v8, Lˋᵔ/ـˆ;->ˈ:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v8, Lˋᵔ/ـˆ;->ˈ:I

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v18, v18, 0x14

    goto :goto_a

    :cond_14
    iget v13, v8, Lˋᵔ/ـˆ;->ˈ:I

    if-ge v13, v14, :cond_15

    goto :goto_9

    :cond_15
    if-ne v13, v14, :cond_17

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v18, v18, 0x14

    aget-wide v13, v11, v18

    cmp-long v7, v21, v13

    if-nez v7, :cond_16

    goto :goto_9

    :cond_16
    aget v7, v9, v18

    sub-long v13, v13, v21

    long-to-float v9, v13

    div-float/2addr v7, v9

    move/from16 p1, v4

    move/from16 v24, v5

    goto/16 :goto_d

    :cond_17
    move/from16 p1, v4

    move v15, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_b
    iget v4, v8, Lˋᵔ/ـˆ;->ˈ:I

    add-int/lit8 v4, v4, -0x1

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, -0x40800000    # -1.0f

    if-ge v13, v4, :cond_1b

    add-int v4, v13, v18

    rem-int/lit8 v22, v4, 0x14

    aget-wide v22, v11, v22

    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v4, v7

    aget-wide v24, v11, v4

    cmp-long v24, v24, v22

    if-nez v24, :cond_18

    move/from16 v24, v5

    goto :goto_c

    :cond_18
    add-int/lit8 v14, v14, 0x1

    cmpg-float v24, v15, v5

    if-gez v24, :cond_19

    move/from16 v20, v21

    :cond_19
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v24, v5

    mul-float v5, v21, v19

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v20, v20, v5

    aget v5, v9, v4

    aget-wide v6, v11, v4

    sub-long v6, v6, v22

    long-to-float v4, v6

    div-float/2addr v5, v4

    sub-float v4, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v15, v5

    move/from16 v4, v16

    if-ne v14, v4, :cond_1a

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v15, v4

    :cond_1a
    :goto_c
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v24

    const/16 v6, 0x22

    const/16 v7, 0x14

    const/16 v16, 0x1

    goto :goto_b

    :cond_1b
    move/from16 v24, v5

    cmpg-float v4, v15, v24

    if-gez v4, :cond_1c

    move/from16 v20, v21

    :cond_1c
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v4, v4, v19

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v7, v20, v4

    :goto_d
    int-to-float v1, v1

    mul-float/2addr v7, v1

    iput v7, v8, Lˋᵔ/ـˆ;->ʽ:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, v7, v1

    if-gez v1, :cond_1d

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    iput v1, v8, Lˋᵔ/ـˆ;->ʽ:F

    goto :goto_e

    :cond_1d
    iget v1, v8, Lˋᵔ/ـˆ;->ʽ:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1f

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v8, Lˋᵔ/ـˆ;->ʽ:F

    goto :goto_e

    :cond_1e
    move/from16 v24, v5

    :cond_1f
    :goto_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v1, v4, :cond_20

    invoke-static {v3, v2}, Lˊˋ/ﾞᴵ;->ʽ(Landroid/view/VelocityTracker;I)F

    move-result v1

    goto :goto_10

    :cond_20
    if-nez v2, :cond_21

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    goto :goto_10

    :cond_21
    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    goto :goto_10

    :cond_22
    sget-object v1, Lˋᵔ/ʻٴ;->ﹳٴ:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋᵔ/ـˆ;

    if-eqz v1, :cond_24

    const/16 v15, 0x1a

    if-eq v2, v15, :cond_23

    goto :goto_f

    :cond_23
    iget v1, v1, Lˋᵔ/ـˆ;->ʽ:F

    goto :goto_10

    :cond_24
    :goto_f
    move/from16 v1, v24

    :goto_10
    iget-object v2, v0, Lˋᵔ/ᵔᵢ;->ⁱˊ:Lˋᵔ/ʼˎ;

    invoke-interface {v2}, Lˋᵔ/ʼˎ;->ٴﹶ()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    if-nez v12, :cond_25

    iget v4, v0, Lˋᵔ/ᵔᵢ;->ˈ:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_26

    cmpl-float v1, v1, v24

    if-eqz v1, :cond_26

    :cond_25
    invoke-interface {v2}, Lˋᵔ/ʼˎ;->ˉʿ()V

    :cond_26
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v17, 0x0

    aget v4, v10, v17

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_28

    :cond_27
    return-void

    :cond_28
    const/16 v16, 0x1

    aget v1, v10, v16

    neg-int v4, v1

    int-to-float v4, v4

    int-to-float v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-interface {v2, v1}, Lˋᵔ/ʼˎ;->ᵔᵢ(F)Z

    move-result v2

    if-eqz v2, :cond_29

    move v5, v1

    goto :goto_11

    :cond_29
    move/from16 v5, v24

    :goto_11
    iput v5, v0, Lˋᵔ/ᵔᵢ;->ˈ:F

    return-void
.end method
