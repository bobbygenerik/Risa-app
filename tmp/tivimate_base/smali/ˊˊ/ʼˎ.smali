.class public final Lˊˊ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˏ/ʽﹳ;
.implements Lˊˊ/ﹳٴ;


# instance fields
.field public final ʽʽ:Lˊˊ/ᵎﹶ;

.field public final ʾˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ˆﾞ:[B

.field public final ˈٴ:Lcom/bumptech/glide/ʼˎ;

.field public final ˉٴ:[F

.field public final ˊʻ:Lʻˆ/ﾞᴵ;

.field public ٴʼ:Landroid/graphics/SurfaceTexture;

.field public final ٴᵢ:[F

.field public final ᴵˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ᴵᵔ:Lʻˆ/ﾞᴵ;

.field public volatile ᵎˊ:I

.field public ᵎⁱ:I

.field public ᵔי:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lˊˊ/ʼˎ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lˊˊ/ʼˎ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lˊˊ/ᵎﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˊˊ/ʼˎ;->ʽʽ:Lˊˊ/ᵎﹶ;

    new-instance v0, Lcom/bumptech/glide/ʼˎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    new-instance v1, Lʻˆ/ﾞᴵ;

    invoke-direct {v1}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    iput-object v0, p0, Lˊˊ/ʼˎ;->ˈٴ:Lcom/bumptech/glide/ʼˎ;

    new-instance v0, Lʻˆ/ﾞᴵ;

    invoke-direct {v0}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object v0, p0, Lˊˊ/ʼˎ;->ᴵᵔ:Lʻˆ/ﾞᴵ;

    new-instance v0, Lʻˆ/ﾞᴵ;

    invoke-direct {v0}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object v0, p0, Lˊˊ/ʼˎ;->ˊʻ:Lʻˆ/ﾞᴵ;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lˊˊ/ʼˎ;->ٴᵢ:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lˊˊ/ʼˎ;->ˉٴ:[F

    const/4 v0, 0x0

    iput v0, p0, Lˊˊ/ʼˎ;->ᵎˊ:I

    const/4 v0, -0x1

    iput v0, p0, Lˊˊ/ʼˎ;->ᵔי:I

    return-void
.end method


# virtual methods
.method public final ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V
    .locals 35

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    iget-object v4, v0, Lˊˊ/ʼˎ;->ᴵᵔ:Lʻˆ/ﾞᴵ;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lʻˆ/ﾞᴵ;->ﹳٴ(JLjava/lang/Object;)V

    iget-object v4, v3, Lʽⁱ/ﹳᐧ;->ᴵˊ:[B

    iget v3, v3, Lʽⁱ/ﹳᐧ;->ʽʽ:I

    iget-object v5, v0, Lˊˊ/ʼˎ;->ˆﾞ:[B

    iget v6, v0, Lˊˊ/ʼˎ;->ᵔי:I

    iput-object v4, v0, Lˊˊ/ʼˎ;->ˆﾞ:[B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, v0, Lˊˊ/ʼˎ;->ᵎˊ:I

    :cond_0
    iput v3, v0, Lˊˊ/ʼˎ;->ᵔי:I

    if-ne v6, v3, :cond_1

    iget-object v3, v0, Lˊˊ/ʼˎ;->ˆﾞ:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lˊˊ/ʼˎ;->ˆﾞ:[B

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    iget v8, v0, Lˊˊ/ʼˎ;->ᵔי:I

    new-instance v9, Lᐧˎ/ﹳᐧ;

    invoke-direct {v9, v3}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v9, v3}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v9}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    invoke-virtual {v9, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    const v10, 0x70726f6a

    if-ne v3, v10, :cond_5

    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    iget v3, v9, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v10, v9, Lᐧˎ/ﹳᐧ;->ʽ:I

    :goto_0
    if-ge v3, v10, :cond_6

    invoke-virtual {v9}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v11

    add-int/2addr v11, v3

    if-le v11, v3, :cond_6

    if-le v11, v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    const v12, 0x79746d70

    if-eq v3, v12, :cond_4

    const v12, 0x6d736870

    if-ne v3, v12, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v9, v11}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    move v3, v11

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v9, v11}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    invoke-static {v9}, Lﹳˋ/ʽʽ;->ʽﹳ(Lᐧˎ/ﹳᐧ;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-static {v9}, Lﹳˋ/ʽʽ;->ʽﹳ(Lᐧˎ/ﹳᐧ;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_6
    :goto_2
    move-object v3, v7

    :goto_3
    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v9, v6, :cond_9

    if-eq v9, v4, :cond_8

    goto :goto_4

    :cond_8
    new-instance v7, Lˊˊ/ﾞᴵ;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˊˊ/ˑﹳ;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˊˊ/ˑﹳ;

    invoke-direct {v7, v9, v3, v8}, Lˊˊ/ﾞᴵ;-><init>(Lˊˊ/ˑﹳ;Lˊˊ/ˑﹳ;I)V

    goto :goto_4

    :cond_9
    new-instance v7, Lˊˊ/ﾞᴵ;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˊˊ/ˑﹳ;

    invoke-direct {v7, v3, v3, v8}, Lˊˊ/ﾞᴵ;-><init>(Lˊˊ/ˑﹳ;Lˊˊ/ˑﹳ;I)V

    :cond_a
    :goto_4
    if-eqz v7, :cond_b

    invoke-static {v7}, Lˊˊ/ᵎﹶ;->ⁱˊ(Lˊˊ/ﾞᴵ;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_d

    :cond_b
    iget v3, v0, Lˊˊ/ʼˎ;->ᵔי:I

    const/high16 v7, 0x43340000    # 180.0f

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x43b40000    # 360.0f

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/16 v9, 0x24

    int-to-float v10, v9

    div-float v10, v7, v10

    const/16 v11, 0x48

    int-to-float v12, v11

    div-float v12, v8, v12

    const/16 v13, 0x3e70

    new-array v13, v13, [F

    const/16 v14, 0x29a0

    new-array v14, v14, [F

    move v15, v5

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_5
    if-ge v15, v9, :cond_12

    int-to-float v9, v15

    mul-float/2addr v9, v10

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v7, v18

    sub-float v9, v9, v19

    add-int/lit8 v5, v15, 0x1

    int-to-float v6, v5

    mul-float/2addr v6, v10

    sub-float v6, v6, v19

    const/4 v11, 0x0

    :goto_6
    const/16 v4, 0x49

    if-ge v11, v4, :cond_11

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v4, v16

    move/from16 v5, v17

    const/4 v6, 0x0

    const/4 v7, 0x2

    :goto_7
    if-ge v6, v7, :cond_10

    if-nez v6, :cond_c

    move v7, v9

    :goto_8
    move/from16 v23, v8

    goto :goto_9

    :cond_c
    move/from16 v7, v21

    goto :goto_8

    :goto_9
    int-to-float v8, v11

    mul-float/2addr v8, v12

    const v16, 0x40490fdb    # (float)Math.PI

    add-float v16, v8, v16

    div-float v17, v23, v18

    move/from16 v24, v8

    sub-float v8, v16, v17

    add-int/lit8 v16, v4, 0x1

    move/from16 v25, v9

    const/high16 v9, 0x42480000    # 50.0f

    move/from16 v26, v10

    float-to-double v9, v9

    move-wide/from16 v27, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v29, v29, v27

    move-wide/from16 v31, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v29

    double-to-float v9, v9

    neg-float v9, v9

    aput v9, v13, v4

    add-int/lit8 v9, v4, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    move-wide/from16 v33, v7

    mul-double v7, v29, v27

    double-to-float v7, v7

    aput v7, v13, v16

    add-int/lit8 v7, v4, 0x3

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v27

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move v10, v9

    mul-double v8, v27, v16

    double-to-float v8, v8

    aput v8, v13, v10

    add-int/lit8 v8, v5, 0x1

    div-float v9, v24, v23

    aput v9, v14, v5

    add-int/lit8 v9, v5, 0x2

    add-int v10, v15, v6

    int-to-float v10, v10

    mul-float v10, v10, v26

    div-float v10, v10, v22

    aput v10, v14, v8

    if-nez v11, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    const/16 v8, 0x48

    goto :goto_a

    :cond_e
    const/16 v8, 0x48

    goto :goto_b

    :goto_a
    if-ne v11, v8, :cond_f

    const/4 v10, 0x1

    if-ne v6, v10, :cond_f

    :goto_b
    const/4 v10, 0x3

    invoke-static {v13, v4, v13, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x6

    const/4 v10, 0x2

    invoke-static {v14, v5, v14, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x4

    goto :goto_c

    :cond_f
    const/4 v10, 0x2

    move v4, v7

    move v5, v9

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move v7, v10

    move/from16 v8, v23

    move/from16 v9, v25

    move/from16 v10, v26

    goto/16 :goto_7

    :cond_10
    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v26, v10

    const/16 v8, 0x48

    move v10, v7

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v10, v26

    goto/16 :goto_6

    :cond_11
    move/from16 v20, v5

    move/from16 v15, v20

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v9, 0x24

    const/16 v11, 0x48

    goto/16 :goto_5

    :cond_12
    new-instance v4, Lʻˆ/ﾞᴵ;

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-direct {v4, v5, v13, v14, v10}, Lʻˆ/ﾞᴵ;-><init>(I[F[FI)V

    new-instance v7, Lˊˊ/ﾞᴵ;

    new-instance v6, Lˊˊ/ˑﹳ;

    new-array v8, v10, [Lʻˆ/ﾞᴵ;

    aput-object v4, v8, v5

    invoke-direct {v6, v8}, Lˊˊ/ˑﹳ;-><init>([Lʻˆ/ﾞᴵ;)V

    invoke-direct {v7, v6, v6, v3}, Lˊˊ/ﾞᴵ;-><init>(Lˊˊ/ˑﹳ;Lˊˊ/ˑﹳ;I)V

    :goto_d
    iget-object v3, v0, Lˊˊ/ʼˎ;->ˊʻ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v3, v1, v2, v7}, Lʻˆ/ﾞᴵ;->ﹳٴ(JLjava/lang/Object;)V

    return-void
.end method

.method public final ˈ()V
    .locals 2

    iget-object v0, p0, Lˊˊ/ʼˎ;->ᴵᵔ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v0}, Lʻˆ/ﾞᴵ;->ⁱˊ()V

    iget-object v0, p0, Lˊˊ/ʼˎ;->ˈٴ:Lcom/bumptech/glide/ʼˎ;

    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʻˆ/ﾞᴵ;

    invoke-virtual {v1}, Lʻˆ/ﾞᴵ;->ⁱˊ()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    iget-object v0, p0, Lˊˊ/ʼˎ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final ˑﹳ()Landroid/graphics/SurfaceTexture;
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    :try_start_0
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V

    iget-object v0, p0, Lˊˊ/ʼˎ;->ʽʽ:Lˊˊ/ᵎﹶ;

    invoke-virtual {v0}, Lˊˊ/ᵎﹶ;->ﹳٴ()V

    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V

    aget v0, v1, v2

    const v1, 0x8d65

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ⁱˊ(II)V

    iput v0, p0, Lˊˊ/ʼˎ;->ᵎⁱ:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SceneRenderer"

    const-string v2, "Failed to initialize the renderer"

    invoke-static {v1, v2, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lˊˊ/ʼˎ;->ᵎⁱ:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lˊˊ/ʼˎ;->ٴʼ:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lˊˊ/ᵔᵢ;

    invoke-direct {v1, p0}, Lˊˊ/ᵔᵢ;-><init>(Lˊˊ/ʼˎ;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lˊˊ/ʼˎ;->ٴʼ:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final ⁱˊ([F)V
    .locals 16

    .prologue
    move-object/from16 v1, p0

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :try_start_0
    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SceneRenderer"

    const-string v3, "Failed to draw a frame"

    invoke-static {v2, v3, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v1, Lˊˊ/ʼˎ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_7

    iget-object v0, v1, Lˊˊ/ʼˎ;->ٴʼ:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :try_start_1
    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "SceneRenderer"

    const-string v6, "Failed to draw a frame"

    invoke-static {v5, v6, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, v1, Lˊˊ/ʼˎ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lˊˊ/ʼˎ;->ٴᵢ:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_0
    iget-object v0, v1, Lˊˊ/ʼˎ;->ٴʼ:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    iget-object v7, v1, Lˊˊ/ʼˎ;->ᴵᵔ:Lʻˆ/ﾞᴵ;

    monitor-enter v7

    :try_start_2
    invoke-virtual {v7, v3, v5, v6}, Lʻˆ/ﾞᴵ;->ˑﹳ(ZJ)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v7, v1, Lˊˊ/ʼˎ;->ˈٴ:Lcom/bumptech/glide/ʼˎ;

    iget-object v8, v1, Lˊˊ/ʼˎ;->ٴᵢ:[F

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v0, v7, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʻˆ/ﾞᴵ;

    invoke-virtual {v0, v9, v10}, Lʻˆ/ﾞᴵ;->ᵔᵢ(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v9, v7, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, [F

    aget v9, v0, v3

    aget v11, v0, v2

    neg-float v11, v11

    aget v0, v0, v4

    neg-float v0, v0

    invoke-static {v9, v11, v0}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_2

    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v13, v13

    div-float/2addr v9, v12

    div-float v14, v11, v12

    div-float v15, v0, v12

    const/4 v11, 0x0

    move v12, v13

    move v13, v9

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_2

    :cond_2
    invoke-static {v10, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_2
    iget-boolean v0, v7, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v9, v7, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v9, [F

    invoke-static {v0, v9}, Lcom/bumptech/glide/ʼˎ;->ʽ([F[F)V

    iput-boolean v2, v7, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    :cond_3
    iget-object v0, v7, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, [F

    iget-object v0, v7, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, [F

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_4
    :goto_3
    iget-object v0, v1, Lˊˊ/ʼˎ;->ˊʻ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v0, v5, v6}, Lʻˆ/ﾞᴵ;->ᵔᵢ(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊˊ/ﾞᴵ;

    if-eqz v0, :cond_7

    iget-object v5, v1, Lˊˊ/ʼˎ;->ʽʽ:Lˊˊ/ᵎﹶ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lˊˊ/ᵎﹶ;->ⁱˊ(Lˊˊ/ﾞᴵ;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    iget v6, v0, Lˊˊ/ﾞᴵ;->ʽ:I

    iput v6, v5, Lˊˊ/ᵎﹶ;->ﹳٴ:I

    new-instance v6, Lʻˆ/ﾞᴵ;

    iget-object v7, v0, Lˊˊ/ﾞᴵ;->ﹳٴ:Lˊˊ/ˑﹳ;

    iget-object v7, v7, Lˊˊ/ˑﹳ;->ﹳٴ:[Lʻˆ/ﾞᴵ;

    aget-object v7, v7, v3

    invoke-direct {v6, v7}, Lʻˆ/ﾞᴵ;-><init>(Lʻˆ/ﾞᴵ;)V

    iput-object v6, v5, Lˊˊ/ᵎﹶ;->ⁱˊ:Lʻˆ/ﾞᴵ;

    iget-boolean v5, v0, Lˊˊ/ﾞᴵ;->ˈ:Z

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance v5, Lʻˆ/ﾞᴵ;

    iget-object v0, v0, Lˊˊ/ﾞᴵ;->ⁱˊ:Lˊˊ/ˑﹳ;

    iget-object v0, v0, Lˊˊ/ˑﹳ;->ﹳٴ:[Lʻˆ/ﾞᴵ;

    aget-object v0, v0, v3

    invoke-direct {v5, v0}, Lʻˆ/ﾞᴵ;-><init>(Lʻˆ/ﾞᴵ;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_4
    iget-object v8, v1, Lˊˊ/ʼˎ;->ˉٴ:[F

    iget-object v12, v1, Lˊˊ/ʼˎ;->ٴᵢ:[F

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v5, v1, Lˊˊ/ʼˎ;->ʽʽ:Lˊˊ/ᵎﹶ;

    iget v0, v1, Lˊˊ/ʼˎ;->ᵎⁱ:I

    iget-object v6, v1, Lˊˊ/ʼˎ;->ˉٴ:[F

    const-string v7, "ProjectionRenderer"

    iget-object v8, v5, Lˊˊ/ᵎﹶ;->ⁱˊ:Lʻˆ/ﾞᴵ;

    if-nez v8, :cond_8

    goto/16 :goto_9

    :cond_8
    iget v9, v5, Lˊˊ/ᵎﹶ;->ﹳٴ:I

    if-ne v9, v2, :cond_9

    sget-object v4, Lˊˊ/ᵎﹶ;->ˆʾ:[F

    goto :goto_5

    :cond_9
    if-ne v9, v4, :cond_a

    sget-object v4, Lˊˊ/ᵎﹶ;->ٴﹶ:[F

    goto :goto_5

    :cond_a
    sget-object v4, Lˊˊ/ᵎﹶ;->ʼˎ:[F

    :goto_5
    iget v9, v5, Lˊˊ/ᵎﹶ;->ˑﹳ:I

    invoke-static {v9, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v4, v5, Lˊˊ/ᵎﹶ;->ˈ:I

    invoke-static {v4, v2, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, v5, Lˊˊ/ᵎﹶ;->ᵔᵢ:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :try_start_4
    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V
    :try_end_4
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v2, "Failed to bind uniforms"

    nop

    :goto_6
    iget v9, v5, Lˊˊ/ᵎﹶ;->ﾞᴵ:I

    iget-object v0, v8, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/nio/FloatBuffer;

    const/4 v10, 0x3

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0xc

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :try_start_5
    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V
    :try_end_5
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v2, "Failed to load position data"

    nop

    :goto_7
    iget v9, v5, Lˊˊ/ᵎﹶ;->ᵎﹶ:I

    iget-object v0, v8, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/nio/FloatBuffer;

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :try_start_6
    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V
    :try_end_6
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    const-string v2, "Failed to load texture data"

    nop

    :goto_8
    iget v0, v8, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    iget v2, v8, Lʻˆ/ﾞᴵ;->ʾˋ:I

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :try_start_7
    invoke-static {}, Lᐧˎ/ﹳٴ;->ˑﹳ()V
    :try_end_7
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    const-string v2, "Failed to render"

    nop

    :goto_9
    return-void
.end method

.method public final ﹳٴ(J[F)V
    .locals 1

    iget-object v0, p0, Lˊˊ/ʼˎ;->ˈٴ:Lcom/bumptech/glide/ʼˎ;

    iget-object v0, v0, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʻˆ/ﾞᴵ;

    invoke-virtual {v0, p1, p2, p3}, Lʻˆ/ﾞᴵ;->ﹳٴ(JLjava/lang/Object;)V

    return-void
.end method
