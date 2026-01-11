.class public final Lˑʿ/ﹳᐧ;
.super Lˑʿ/ـˆ;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Lˊᵔ/ᵔᵢ;

.field public final ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final synthetic ᵎﹶ:Lˑʿ/ᴵˊ;

.field public ⁱˊ:Z

.field public ﹳٴ:J

.field public ﾞᴵ:Lʻʿ/ᵔʾ;


# direct methods
.method public constructor <init>(Lˑʿ/ᴵˊ;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʿ/ﹳᐧ;->ᵎﹶ:Lˑʿ/ᴵˊ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(BI)V

    const/16 v0, 0x14

    new-array v1, v0, [J

    iput-object v1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    new-array v0, v0, [F

    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iput-object p1, p0, Lˑʿ/ﹳᐧ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    return-void
.end method


# virtual methods
.method public final ˈ(Lˑʿ/ʻٴ;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʿ/ﹳᐧ;->ʽ:Z

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 21

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    long-to-float v3, v3

    iget-object v4, v0, Lˑʿ/ﹳᐧ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v5, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v6, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v7, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, [J

    const/4 v8, 0x1

    add-int/2addr v5, v8

    const/16 v9, 0x14

    rem-int/2addr v5, v9

    iput v5, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    aput-wide v1, v7, v5

    aput v3, v6, v5

    new-instance v1, Lˊᵔ/ᵔᵢ;

    new-instance v2, Lˊᵔ/ᵎﹶ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lˊᵔ/ᵎﹶ;->ﹳٴ:F

    invoke-direct {v1, v2}, Lˊᵔ/ᵔᵢ;-><init>(Lˊᵔ/ᵎﹶ;)V

    iput-object v1, v0, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    new-instance v1, Lˊᵔ/ʼˎ;

    invoke-direct {v1}, Lˊᵔ/ʼˎ;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lˊᵔ/ʼˎ;->ﹳٴ(F)V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Lˊᵔ/ʼˎ;->ⁱˊ(F)V

    iget-object v2, v0, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    iput-object v1, v2, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iget-wide v10, v0, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    long-to-float v1, v10

    iput v1, v2, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iput-boolean v8, v2, Lˊᵔ/ᵔᵢ;->ʽ:Z

    iget-object v1, v2, Lˊᵔ/ᵔᵢ;->ﾞʻ:Ljava/util/ArrayList;

    iget-boolean v2, v2, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    if-nez v2, :cond_10

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    iget v2, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    const-wide/high16 v10, -0x8000000000000000L

    if-nez v2, :cond_2

    aget-wide v12, v7, v2

    cmp-long v5, v12, v10

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    aget-wide v12, v7, v2

    const/4 v5, 0x0

    move-wide v14, v12

    :goto_0
    aget-wide v16, v7, v2

    cmp-long v18, v16, v10

    if-nez v18, :cond_3

    goto :goto_1

    :cond_3
    sub-long v10, v12, v16

    long-to-float v10, v10

    sub-long v14, v16, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v10, v10, v14

    if-gtz v10, :cond_7

    const/high16 v10, 0x42200000    # 40.0f

    cmpl-float v10, v11, v10

    if-lez v10, :cond_4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    move v2, v9

    :cond_5
    sub-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v9, :cond_6

    goto :goto_1

    :cond_6
    move-wide/from16 v14, v16

    const-wide/high16 v10, -0x8000000000000000L

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v2, 0x2

    if-ge v5, v2, :cond_8

    goto/16 :goto_5

    :cond_8
    const/high16 v10, 0x447a0000    # 1000.0f

    if-ne v5, v2, :cond_b

    iget v2, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    if-nez v2, :cond_9

    const/16 v4, 0x13

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v2, -0x1

    :goto_2
    aget-wide v8, v7, v2

    aget-wide v11, v7, v4

    sub-long/2addr v8, v11

    long-to-float v5, v8

    cmpl-float v7, v5, v3

    if-nez v7, :cond_a

    goto/16 :goto_5

    :cond_a
    aget v2, v6, v2

    aget v3, v6, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    mul-float v3, v2, v10

    goto/16 :goto_5

    :cond_b
    iget v2, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    sub-int v4, v2, v5

    add-int/lit8 v4, v4, 0x15

    rem-int/2addr v4, v9

    add-int/lit8 v2, v2, 0x15

    rem-int/2addr v2, v9

    aget-wide v11, v7, v4

    aget v5, v6, v4

    add-int/2addr v4, v8

    rem-int/lit8 v8, v4, 0x14

    move v13, v3

    :goto_3
    const/high16 v14, 0x40000000    # 2.0f

    if-eq v8, v2, :cond_e

    aget-wide v15, v7, v8

    move/from16 v17, v9

    move/from16 v18, v10

    sub-long v9, v15, v11

    long-to-float v9, v9

    cmpl-float v10, v9, v3

    if-nez v10, :cond_c

    move v3, v4

    goto :goto_4

    :cond_c
    aget v10, v6, v8

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v14, v14, v19

    move/from16 v20, v4

    float-to-double v3, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-float v3, v3

    sub-float v4, v10, v5

    div-float/2addr v4, v9

    sub-float v3, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v13

    move/from16 v3, v20

    if-ne v8, v3, :cond_d

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    :cond_d
    move v13, v4

    move v5, v10

    move-wide v11, v15

    :goto_4
    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v8, v8, 0x14

    move v4, v3

    move/from16 v9, v17

    move/from16 v10, v18

    const/4 v3, 0x0

    goto :goto_3

    :cond_e
    move/from16 v18, v10

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v14

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v2, v4

    mul-float v3, v2, v18

    :goto_5
    iput v3, v1, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    iget-object v1, v0, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    iget-object v2, v0, Lˑʿ/ﹳᐧ;->ᵎﹶ:Lˑʿ/ᴵˊ;

    iget-wide v2, v2, Lˑʿ/ʻٴ;->ʿ:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-float v2, v2

    iput v2, v1, Lˊᵔ/ᵔᵢ;->ᵎﹶ:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lˊᵔ/ᵔᵢ;->ᵔᵢ:F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, v1, Lˊᵔ/ᵔᵢ;->ˆʾ:F

    new-instance v2, Lˑʿ/ᵔﹳ;

    invoke-direct {v2, v0}, Lˑʿ/ᵔﹳ;-><init>(Lˑʿ/ﹳᐧ;)V

    iget-object v1, v1, Lˊᵔ/ᵔᵢ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    return-void

    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Error: Update listeners must be added beforethe animation."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
