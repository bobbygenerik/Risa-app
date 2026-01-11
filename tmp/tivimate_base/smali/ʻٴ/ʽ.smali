.class public final Lʻٴ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ᵔﹳ:Z


# instance fields
.field public ʼˎ:[Z

.field public ʼᐧ:Lʻٴ/ⁱˊ;

.field public ʽ:I

.field public ˆʾ:I

.field public final ˈ:Lʻٴ/ﾞᴵ;

.field public final ˉʿ:Lᵢ/ﹳٴ;

.field public ˉˆ:I

.field public ˑﹳ:I

.field public ٴﹶ:I

.field public ᵎﹶ:[Lʻٴ/ⁱˊ;

.field public ᵔʾ:[Lʻٴ/ᵔᵢ;

.field public ᵔᵢ:Z

.field public ⁱˊ:Z

.field public ﹳٴ:I

.field public ﾞʻ:I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lʻٴ/ʽ;->ﹳٴ:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lʻٴ/ʽ;->ⁱˊ:Z

    iput v1, p0, Lʻٴ/ʽ;->ʽ:I

    const/16 v2, 0x20

    iput v2, p0, Lʻٴ/ʽ;->ˑﹳ:I

    iput v2, p0, Lʻٴ/ʽ;->ﾞᴵ:I

    iput-boolean v1, p0, Lʻٴ/ʽ;->ᵔᵢ:Z

    new-array v3, v2, [Z

    iput-object v3, p0, Lʻٴ/ʽ;->ʼˎ:[Z

    const/4 v3, 0x1

    iput v3, p0, Lʻٴ/ʽ;->ˆʾ:I

    iput v1, p0, Lʻٴ/ʽ;->ٴﹶ:I

    iput v2, p0, Lʻٴ/ʽ;->ﾞʻ:I

    new-array v0, v0, [Lʻٴ/ᵔᵢ;

    iput-object v0, p0, Lʻٴ/ʽ;->ᵔʾ:[Lʻٴ/ᵔᵢ;

    iput v1, p0, Lʻٴ/ʽ;->ˉˆ:I

    new-array v0, v2, [Lʻٴ/ⁱˊ;

    iput-object v0, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    invoke-virtual {p0}, Lʻٴ/ʽ;->יـ()V

    new-instance v0, Lᵢ/ﹳٴ;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lᵢ/ﹳٴ;-><init>(IZ)V

    new-instance v3, Lʻٴ/ˈ;

    invoke-direct {v3}, Lʻٴ/ˈ;-><init>()V

    iput-object v3, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    new-instance v3, Lʻٴ/ˈ;

    invoke-direct {v3}, Lʻٴ/ˈ;-><init>()V

    iput-object v3, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    new-array v2, v2, [Lʻٴ/ᵔᵢ;

    iput-object v2, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v0, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    new-instance v2, Lʻٴ/ﾞᴵ;

    invoke-direct {v2, v0}, Lʻٴ/ⁱˊ;-><init>(Lᵢ/ﹳٴ;)V

    const/16 v3, 0x80

    new-array v4, v3, [Lʻٴ/ᵔᵢ;

    iput-object v4, v2, Lʻٴ/ﾞᴵ;->ﾞᴵ:[Lʻٴ/ᵔᵢ;

    new-array v3, v3, [Lʻٴ/ᵔᵢ;

    iput-object v3, v2, Lʻٴ/ﾞᴵ;->ᵎﹶ:[Lʻٴ/ᵔᵢ;

    iput v1, v2, Lʻٴ/ﾞᴵ;->ᵔᵢ:I

    new-instance v1, Lﹳʽ/ˊʻ;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lﹳʽ/ˊʻ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Lʻٴ/ﾞᴵ;->ʼˎ:Lﹳʽ/ˊʻ;

    iput-object v2, p0, Lʻٴ/ʽ;->ˈ:Lʻٴ/ﾞᴵ;

    new-instance v1, Lʻٴ/ⁱˊ;

    invoke-direct {v1, v0}, Lʻٴ/ⁱˊ;-><init>(Lᵢ/ﹳٴ;)V

    iput-object v1, p0, Lʻٴ/ʽ;->ʼᐧ:Lʻٴ/ⁱˊ;

    return-void
.end method

.method public static ᵔʾ(Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p0, Lʾᵎ/ʽ;

    iget-object p0, p0, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    if-eqz p0, :cond_0

    iget p0, p0, Lʻٴ/ᵔᵢ;->ᴵᵔ:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v1, v1, v0

    iget-object v2, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget v1, v1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    iput v1, v2, Lʻٴ/ᵔᵢ;->ᴵᵔ:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʼᐧ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʻٴ/ʽ;->ˈ:Lʻٴ/ﾞᴵ;

    invoke-virtual {v0}, Lʻٴ/ﾞᴵ;->ˑﹳ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lʻٴ/ʽ;->ʼˎ()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lʻٴ/ʽ;->ᵔᵢ:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ᵔﹳ(Lʻٴ/ﾞᴵ;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lʻٴ/ʽ;->ʼˎ()V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ᵔﹳ(Lʻٴ/ﾞᴵ;)V

    return-void
.end method

.method public final ʽ(Lʻٴ/ⁱˊ;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lʻٴ/ʽ;->ٴﹶ:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Lʻٴ/ʽ;->ﾞʻ:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/2addr v2, v3

    iget v4, v0, Lʻٴ/ʽ;->ﾞᴵ:I

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Lʻٴ/ʽ;->ˉˆ()V

    :cond_1
    iget-boolean v2, v1, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-nez v2, :cond_1e

    iget-object v2, v1, Lʻٴ/ⁱˊ;->ʽ:Ljava/util/ArrayList;

    iget-object v5, v0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    array-length v5, v5

    const/4 v6, -0x1

    if-nez v5, :cond_2

    goto :goto_5

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_8

    iget-object v7, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v7}, Lʻٴ/ﹳٴ;->ˈ()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    iget-object v9, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v9, v8}, Lʻٴ/ﹳٴ;->ˑﹳ(I)Lʻٴ/ᵔᵢ;

    move-result-object v9

    iget v10, v9, Lʻٴ/ᵔᵢ;->ʽʽ:I

    if-ne v10, v6, :cond_3

    iget-boolean v10, v9, Lʻٴ/ᵔᵢ;->ˊʻ:Z

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lʻٴ/ᵔᵢ;

    iget-boolean v10, v9, Lʻٴ/ᵔᵢ;->ˊʻ:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1, v0, v9, v3}, Lʻٴ/ⁱˊ;->ᵔᵢ(Lʻٴ/ʽ;Lʻٴ/ᵔᵢ;Z)V

    goto :goto_4

    :cond_5
    iget-object v10, v0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    iget v9, v9, Lʻٴ/ᵔᵢ;->ʽʽ:I

    aget-object v9, v10, v9

    invoke-virtual {v1, v0, v9, v3}, Lʻٴ/ⁱˊ;->ʼˎ(Lʻٴ/ʽ;Lʻٴ/ⁱˊ;Z)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    move v5, v3

    goto :goto_0

    :cond_8
    iget-object v2, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v2}, Lʻٴ/ﹳٴ;->ˈ()I

    move-result v2

    if-nez v2, :cond_9

    iput-boolean v3, v1, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    iput-boolean v3, v0, Lʻٴ/ʽ;->ⁱˊ:Z

    :cond_9
    :goto_5
    invoke-virtual {v1}, Lʻٴ/ⁱˊ;->ˑﹳ()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_12

    :cond_a
    iget v2, v1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    const/4 v5, 0x0

    cmpg-float v7, v2, v5

    if-gez v7, :cond_b

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v2, v7

    iput v2, v1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    iget-object v2, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    iget v7, v2, Lʻٴ/ﹳٴ;->ᵔᵢ:I

    const/4 v8, 0x0

    :goto_6
    const/4 v9, -0x1

    if-eq v7, v9, :cond_b

    iget v9, v2, Lʻٴ/ﹳٴ;->ﹳٴ:I

    if-ge v8, v9, :cond_b

    iget-object v9, v2, Lʻٴ/ﹳٴ;->ᵎﹶ:[F

    aget v10, v9, v7

    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v10, v11

    aput v10, v9, v7

    iget-object v9, v2, Lʻٴ/ﹳٴ;->ﾞᴵ:[I

    aget v7, v9, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    iget-object v2, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v2}, Lʻٴ/ﹳٴ;->ˈ()I

    move-result v2

    const/4 v7, 0x0

    move v11, v5

    move v13, v11

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_7
    if-ge v8, v2, :cond_14

    iget-object v15, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v15, v8}, Lʻٴ/ﹳٴ;->ﾞᴵ(I)F

    move-result v15

    iget-object v4, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v4, v8}, Lʻٴ/ﹳٴ;->ˑﹳ(I)Lʻٴ/ᵔᵢ;

    move-result-object v4

    move/from16 v16, v5

    iget v5, v4, Lʻٴ/ᵔᵢ;->ᵔי:I

    if-ne v5, v3, :cond_f

    if-nez v9, :cond_d

    iget v5, v4, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    if-gt v5, v3, :cond_c

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_8
    move-object v9, v4

    move v11, v15

    goto :goto_c

    :cond_d
    cmpl-float v5, v11, v15

    if-lez v5, :cond_e

    iget v5, v4, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    if-gt v5, v3, :cond_c

    goto :goto_9

    :cond_e
    if-nez v12, :cond_13

    iget v5, v4, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    if-gt v5, v3, :cond_13

    :goto_9
    move v12, v3

    goto :goto_8

    :cond_f
    if-nez v9, :cond_13

    cmpg-float v5, v15, v16

    if-gez v5, :cond_13

    if-nez v10, :cond_11

    iget v5, v4, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    if-gt v5, v3, :cond_10

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_a
    move-object v10, v4

    move v13, v15

    goto :goto_c

    :cond_11
    cmpl-float v5, v13, v15

    if-lez v5, :cond_12

    iget v5, v4, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    if-gt v5, v3, :cond_10

    goto :goto_b

    :cond_12
    if-nez v14, :cond_13

    iget v5, v4, Lʻٴ/ᵔᵢ;->ᵎˊ:I

    if-gt v5, v3, :cond_13

    :goto_b
    move v14, v3

    goto :goto_a

    :cond_13
    :goto_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v16

    goto :goto_7

    :cond_14
    move/from16 v16, v5

    if-eqz v9, :cond_15

    goto :goto_d

    :cond_15
    move-object v9, v10

    :goto_d
    if-nez v9, :cond_16

    move v2, v3

    goto :goto_e

    :cond_16
    invoke-virtual {v1, v9}, Lʻٴ/ⁱˊ;->ᵎﹶ(Lʻٴ/ᵔᵢ;)V

    const/4 v2, 0x0

    :goto_e
    iget-object v4, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v4}, Lʻٴ/ﹳٴ;->ˈ()I

    move-result v4

    if-nez v4, :cond_17

    iput-boolean v3, v1, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    :cond_17
    if-eqz v2, :cond_1d

    iget v2, v0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/2addr v2, v3

    iget v4, v0, Lʻٴ/ʽ;->ﾞᴵ:I

    if-lt v2, v4, :cond_18

    invoke-virtual {v0}, Lʻٴ/ʽ;->ˉˆ()V

    :cond_18
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lʻٴ/ʽ;->ﹳٴ(I)Lʻٴ/ᵔᵢ;

    move-result-object v2

    iget v4, v0, Lʻٴ/ʽ;->ʽ:I

    add-int/2addr v4, v3

    iput v4, v0, Lʻٴ/ʽ;->ʽ:I

    iget v5, v0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/2addr v5, v3

    iput v5, v0, Lʻٴ/ʽ;->ˆʾ:I

    iput v4, v2, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    iget-object v5, v0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v8, v5, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v8, [Lʻٴ/ᵔᵢ;

    aput-object v2, v8, v4

    iput-object v2, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget v4, v0, Lʻٴ/ʽ;->ٴﹶ:I

    invoke-virtual/range {p0 .. p1}, Lʻٴ/ʽ;->ᵔᵢ(Lʻٴ/ⁱˊ;)V

    iget v8, v0, Lʻٴ/ʽ;->ٴﹶ:I

    add-int/2addr v4, v3

    if-ne v8, v4, :cond_1d

    iget-object v4, v0, Lʻٴ/ʽ;->ʼᐧ:Lʻٴ/ⁱˊ;

    iput-object v7, v4, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget-object v8, v4, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v8}, Lʻٴ/ﹳٴ;->ⁱˊ()V

    const/4 v8, 0x0

    :goto_f
    iget-object v9, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v9}, Lʻٴ/ﹳٴ;->ˈ()I

    move-result v9

    if-ge v8, v9, :cond_19

    iget-object v9, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v9, v8}, Lʻٴ/ﹳٴ;->ˑﹳ(I)Lʻٴ/ᵔᵢ;

    move-result-object v9

    iget-object v10, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v10, v8}, Lʻٴ/ﹳٴ;->ﾞᴵ(I)F

    move-result v10

    iget-object v11, v4, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v11, v9, v10, v3}, Lʻٴ/ﹳٴ;->ﹳٴ(Lʻٴ/ᵔᵢ;FZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_19
    iget-object v4, v0, Lʻٴ/ʽ;->ʼᐧ:Lʻٴ/ⁱˊ;

    invoke-virtual {v0, v4}, Lʻٴ/ʽ;->ﹳᐧ(Lʻٴ/ⁱˊ;)V

    iget v4, v2, Lʻٴ/ᵔᵢ;->ʽʽ:I

    if-ne v4, v6, :cond_1c

    iget-object v4, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    if-ne v4, v2, :cond_1a

    invoke-virtual {v1, v7, v2}, Lʻٴ/ⁱˊ;->ﾞᴵ([ZLʻٴ/ᵔᵢ;)Lʻٴ/ᵔᵢ;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v2}, Lʻٴ/ⁱˊ;->ᵎﹶ(Lʻٴ/ᵔᵢ;)V

    :cond_1a
    iget-boolean v2, v1, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-nez v2, :cond_1b

    iget-object v2, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v2, v0, v1}, Lʻٴ/ᵔᵢ;->ˑﹳ(Lʻٴ/ʽ;Lʻٴ/ⁱˊ;)V

    :cond_1b
    iget-object v2, v5, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʻٴ/ˈ;

    invoke-virtual {v2, v1}, Lʻٴ/ˈ;->ﹳٴ(Lʻٴ/ⁱˊ;)V

    iget v2, v0, Lʻٴ/ʽ;->ٴﹶ:I

    sub-int/2addr v2, v3

    iput v2, v0, Lʻٴ/ʽ;->ٴﹶ:I

    :cond_1c
    move v4, v3

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    :goto_10
    iget-object v2, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    if-eqz v2, :cond_20

    iget v2, v2, Lʻٴ/ᵔᵢ;->ᵔי:I

    if-eq v2, v3, :cond_1f

    iget v2, v1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    cmpg-float v2, v2, v16

    if-ltz v2, :cond_20

    goto :goto_11

    :cond_1e
    const/4 v4, 0x0

    :cond_1f
    :goto_11
    if-nez v4, :cond_20

    invoke-virtual/range {p0 .. p1}, Lʻٴ/ʽ;->ᵔᵢ(Lʻٴ/ⁱˊ;)V

    :cond_20
    :goto_12
    return-void
.end method

.method public final ˆʾ(I)Lʻٴ/ᵔᵢ;
    .locals 4

    .prologue
    iget v0, p0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lʻٴ/ʽ;->ﾞᴵ:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lʻٴ/ʽ;->ˉˆ()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ﹳٴ(I)Lʻٴ/ᵔᵢ;

    move-result-object v0

    iget-object v1, v0, Lʻٴ/ᵔᵢ;->ˉٴ:[F

    iget v2, p0, Lʻٴ/ʽ;->ʽ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lʻٴ/ʽ;->ʽ:I

    iget v3, p0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lʻٴ/ʽ;->ˆʾ:I

    iput v2, v0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    iput p1, v0, Lʻٴ/ᵔᵢ;->ˈٴ:I

    iget-object p1, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object p1, p1, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, [Lʻٴ/ᵔᵢ;

    aput-object v0, p1, v2

    iget-object p1, p0, Lʻٴ/ʽ;->ˈ:Lʻٴ/ﾞᴵ;

    iget-object v2, p1, Lʻٴ/ﾞᴵ;->ʼˎ:Lﹳʽ/ˊʻ;

    iput-object v0, v2, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget v2, v0, Lʻٴ/ᵔᵢ;->ˈٴ:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {p1, v0}, Lʻٴ/ﾞᴵ;->ˆʾ(Lʻٴ/ᵔᵢ;)V

    return-object v0
.end method

.method public final ˈ(Lʻٴ/ᵔᵢ;I)V
    .locals 4

    .prologue
    iget v0, p1, Lʻٴ/ᵔᵢ;->ʽʽ:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Lʻٴ/ᵔᵢ;->ˈ(Lʻٴ/ʽ;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lʻٴ/ʽ;->ʽ:I

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object p2, p2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, [Lʻٴ/ᵔᵢ;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v2, :cond_5

    iget-object v3, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-eqz v3, :cond_2

    int-to-float p1, p2

    iput p1, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    return-void

    :cond_2
    iget-object v3, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v3}, Lʻٴ/ﹳٴ;->ˈ()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v1, v0, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    int-to-float p1, p2

    iput p1, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    return-void

    :cond_3
    invoke-virtual {p0}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/2addr p2, v2

    int-to-float p2, p2

    iput p2, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    iget-object p2, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    goto :goto_1

    :cond_4
    int-to-float p2, p2

    iput p2, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    iget-object p2, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    :goto_1
    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v0

    iput-object p1, v0, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    int-to-float p2, p2

    iput p2, p1, Lʻٴ/ᵔᵢ;->ᴵᵔ:F

    iput p2, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    iput-boolean v1, v0, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    return-void
.end method

.method public final ˉʿ()Lʻٴ/ᵔᵢ;
    .locals 3

    .prologue
    iget v0, p0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lʻٴ/ʽ;->ﾞᴵ:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lʻٴ/ʽ;->ˉˆ()V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ﹳٴ(I)Lʻٴ/ᵔᵢ;

    move-result-object v0

    iget v1, p0, Lʻٴ/ʽ;->ʽ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lʻٴ/ʽ;->ʽ:I

    iget v2, p0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lʻٴ/ʽ;->ˆʾ:I

    iput v1, v0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    iget-object v2, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v2, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, [Lʻٴ/ᵔᵢ;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final ˉˆ()V
    .locals 3

    iget v0, p0, Lʻٴ/ʽ;->ˑﹳ:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lʻٴ/ʽ;->ˑﹳ:I

    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʻٴ/ⁱˊ;

    iput-object v0, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    iget-object v0, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, [Lʻٴ/ᵔᵢ;

    iget v2, p0, Lʻٴ/ʽ;->ˑﹳ:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lʻٴ/ᵔᵢ;

    iput-object v1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iget v0, p0, Lʻٴ/ʽ;->ˑﹳ:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lʻٴ/ʽ;->ʼˎ:[Z

    iput v0, p0, Lʻٴ/ʽ;->ﾞᴵ:I

    iput v0, p0, Lʻٴ/ʽ;->ﾞʻ:I

    return-void
.end method

.method public final ˏי()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v3, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, [Lʻٴ/ᵔᵢ;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lʻٴ/ᵔᵢ;->ʽ()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʻٴ/ˈ;

    iget-object v3, p0, Lʻٴ/ʽ;->ᵔʾ:[Lʻٴ/ᵔᵢ;

    iget v4, p0, Lʻٴ/ʽ;->ˉˆ:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    if-le v4, v5, :cond_2

    array-length v4, v3

    :cond_2
    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget v7, v1, Lʻٴ/ˈ;->ᴵˊ:I

    iget-object v8, v1, Lʻٴ/ˈ;->ʾˋ:[Ljava/lang/Object;

    array-length v9, v8

    if-ge v7, v9, :cond_3

    aput-object v6, v8, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lʻٴ/ˈ;->ᴵˊ:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lʻٴ/ʽ;->ˉˆ:I

    iget-object v1, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, [Lʻٴ/ᵔᵢ;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Lʻٴ/ʽ;->ʽ:I

    iget-object v1, p0, Lʻٴ/ʽ;->ˈ:Lʻٴ/ﾞᴵ;

    iput v0, v1, Lʻٴ/ﾞᴵ;->ᵔᵢ:I

    const/4 v3, 0x0

    iput v3, v1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    const/4 v1, 0x1

    iput v1, p0, Lʻٴ/ʽ;->ˆʾ:I

    move v1, v0

    :goto_2
    iget v3, p0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lʻٴ/ʽ;->יـ()V

    iput v0, p0, Lʻٴ/ʽ;->ٴﹶ:I

    new-instance v0, Lʻٴ/ⁱˊ;

    invoke-direct {v0, v2}, Lʻٴ/ⁱˊ;-><init>(Lᵢ/ﹳٴ;)V

    iput-object v0, p0, Lʻٴ/ʽ;->ʼᐧ:Lʻٴ/ⁱˊ;

    return-void
.end method

.method public final ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V
    .locals 4

    .prologue
    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Lʻٴ/ᵔᵢ;->ˊʻ:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lʻٴ/ᵔᵢ;->ʽʽ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Lʻٴ/ᵔᵢ;->ᴵᵔ:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lʻٴ/ᵔᵢ;->ˈ(Lʻٴ/ʽ;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    iput p3, v1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v2, p1, v3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p2, p3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v2, p1, p3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v1, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p2, v3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    invoke-virtual {v1, p0, p4}, Lʻٴ/ⁱˊ;->ﹳٴ(Lʻٴ/ʽ;I)V

    :cond_4
    invoke-virtual {p0, v1}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    return-void
.end method

.method public final יـ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v2, v2, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʻٴ/ˈ;

    invoke-virtual {v2, v1}, Lʻٴ/ˈ;->ﹳٴ(Lʻٴ/ⁱˊ;)V

    :cond_0
    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;
    .locals 5

    .prologue
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lʻٴ/ʽ;->ˆʾ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lʻٴ/ʽ;->ﾞᴵ:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lʻٴ/ʽ;->ˉˆ()V

    :cond_1
    instance-of v0, p1, Lʾᵎ/ʽ;

    if-eqz v0, :cond_6

    check-cast p1, Lʾᵎ/ʽ;

    iget-object v0, p1, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lʾᵎ/ʽ;->ٴﹶ()V

    iget-object v0, p1, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    :cond_2
    iget p1, v0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    const/4 v2, -0x1

    iget-object v3, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    if-eq p1, v2, :cond_4

    iget v4, p0, Lʻٴ/ʽ;->ʽ:I

    if-gt p1, v4, :cond_4

    iget-object v4, v3, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, [Lʻٴ/ᵔᵢ;

    aget-object v4, v4, p1

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    if-eq p1, v2, :cond_5

    invoke-virtual {v0}, Lʻٴ/ᵔᵢ;->ʽ()V

    :cond_5
    iget p1, p0, Lʻٴ/ʽ;->ʽ:I

    add-int/2addr p1, v1

    iput p1, p0, Lʻٴ/ʽ;->ʽ:I

    iget v2, p0, Lʻٴ/ʽ;->ˆʾ:I

    add-int/2addr v2, v1

    iput v2, p0, Lʻٴ/ʽ;->ˆʾ:I

    iput p1, v0, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    iput v1, v0, Lʻٴ/ᵔᵢ;->ᵔי:I

    iget-object v1, v3, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, [Lʻٴ/ᵔᵢ;

    aput-object v0, v1, p1

    return-object v0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᵎﹶ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p0}, Lʻٴ/ʽ;->ˉʿ()Lʻٴ/ᵔᵢ;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lʻٴ/ᵔᵢ;->ˈٴ:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lʻٴ/ⁱˊ;->ʽ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, v1}, Lʻٴ/ﹳٴ;->ʽ(Lʻٴ/ᵔᵢ;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Lʻٴ/ʽ;->ˆʾ(I)Lʻٴ/ᵔᵢ;

    move-result-object p2

    iget-object p3, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    :cond_0
    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    return-void
.end method

.method public final ᵔᵢ(Lʻٴ/ⁱˊ;)V
    .locals 7

    .prologue
    iget-boolean v0, p1, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget p1, p1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    invoke-virtual {v0, p0, p1}, Lʻٴ/ᵔᵢ;->ˈ(Lʻٴ/ʽ;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    iget v1, p0, Lʻٴ/ʽ;->ٴﹶ:I

    aput-object p1, v0, v1

    iget-object v0, p1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iput v1, v0, Lʻٴ/ᵔᵢ;->ʽʽ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lʻٴ/ʽ;->ٴﹶ:I

    invoke-virtual {v0, p0, p1}, Lʻٴ/ᵔᵢ;->ˑﹳ(Lʻٴ/ʽ;Lʻٴ/ⁱˊ;)V

    :goto_0
    iget-boolean p1, p0, Lʻٴ/ʽ;->ⁱˊ:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget v1, p0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget v3, v1, Lʻٴ/ⁱˊ;->ⁱˊ:F

    invoke-virtual {v2, p0, v3}, Lʻٴ/ᵔᵢ;->ˈ(Lʻٴ/ʽ;F)V

    iget-object v2, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v2, v2, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʻٴ/ˈ;

    invoke-virtual {v2, v1}, Lʻٴ/ˈ;->ﹳٴ(Lʻٴ/ⁱˊ;)V

    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget v5, v3, Lʻٴ/ᵔᵢ;->ʽʽ:I

    if-ne v5, v1, :cond_2

    iput v4, v3, Lʻٴ/ᵔᵢ;->ʽʽ:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lʻٴ/ʽ;->ٴﹶ:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Lʻٴ/ʽ;->ⁱˊ:Z

    :cond_7
    return-void
.end method

.method public final ᵔﹳ(Lʻٴ/ﾞᴵ;)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v2, v3, :cond_d

    iget-object v3, v0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v3, v3, v2

    iget-object v4, v3, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget v4, v4, Lʻٴ/ᵔᵢ;->ᵔי:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v3, v3, Lʻٴ/ⁱˊ;->ⁱˊ:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_d

    add-int/2addr v3, v5

    const/4 v6, -0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v6

    move v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v8, v12, :cond_9

    iget-object v12, v0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v12, v12, v8

    iget-object v13, v12, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget v13, v13, Lʻٴ/ᵔᵢ;->ᵔי:I

    if-ne v13, v5, :cond_1

    goto :goto_6

    :cond_1
    iget-boolean v13, v12, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-eqz v13, :cond_2

    goto :goto_6

    :cond_2
    iget v13, v12, Lʻٴ/ⁱˊ;->ⁱˊ:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_8

    iget-object v13, v12, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v13}, Lʻٴ/ﹳٴ;->ˈ()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_8

    iget-object v15, v12, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v15, v14}, Lʻٴ/ﹳٴ;->ˑﹳ(I)Lʻٴ/ᵔᵢ;

    move-result-object v15

    iget-object v1, v12, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v1, v15}, Lʻٴ/ﹳٴ;->ʽ(Lʻٴ/ᵔᵢ;)F

    move-result v1

    cmpg-float v16, v1, v4

    if-gtz v16, :cond_3

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x9

    if-ge v4, v5, :cond_7

    iget-object v5, v15, Lʻٴ/ᵔᵢ;->ٴᵢ:[F

    aget v5, v5, v4

    div-float/2addr v5, v1

    cmpg-float v17, v5, v7

    if-gez v17, :cond_4

    if-eq v4, v11, :cond_5

    :cond_4
    if-le v4, v11, :cond_6

    :cond_5
    iget v7, v15, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    move v11, v4

    move v10, v7

    move v9, v8

    move v7, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    if-eq v9, v6, :cond_a

    iget-object v1, v0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v1, v1, v9

    iget-object v4, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iput v6, v4, Lʻٴ/ᵔᵢ;->ʽʽ:I

    iget-object v4, v0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v4, v4, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, [Lʻٴ/ᵔᵢ;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Lʻٴ/ⁱˊ;->ᵎﹶ(Lʻٴ/ᵔᵢ;)V

    iget-object v4, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iput v9, v4, Lʻٴ/ᵔᵢ;->ʽʽ:I

    invoke-virtual {v4, v0, v1}, Lʻٴ/ᵔᵢ;->ˑﹳ(Lʻٴ/ʽ;Lʻٴ/ⁱˊ;)V

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    :goto_7
    iget v1, v0, Lʻٴ/ʽ;->ˆʾ:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_b

    const/4 v2, 0x1

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lʻٴ/ʽ;->ﹳᐧ(Lʻٴ/ⁱˊ;)V

    invoke-virtual {v0}, Lʻٴ/ʽ;->ʼˎ()V

    return-void
.end method

.method public final ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;IFLʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p3, p1, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p6, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p4, v2

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_2

    iget-object p4, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p4, p1, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p2, v3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p5, v3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p6, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p4, p1, v3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p2, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    int-to-float p1, p3

    iput p1, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p6, v3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, p5, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    neg-int p1, p7

    int-to-float p1, p1

    iput p1, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-virtual {v2, p1, v5}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    mul-float v2, v4, v3

    invoke-virtual {p1, p2, v2}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    mul-float/2addr v3, p4

    invoke-virtual {p1, p5, v3}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    mul-float/2addr v1, p4

    invoke-virtual {p1, p6, v1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    invoke-virtual {v0, p0, p8}, Lʻٴ/ⁱˊ;->ﹳٴ(Lʻٴ/ʽ;I)V

    :cond_7
    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    return-void
.end method

.method public final ﹳٴ(I)Lʻٴ/ᵔᵢ;
    .locals 5

    .prologue
    iget-object v0, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v0, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʻٴ/ˈ;

    iget v1, v0, Lʻٴ/ˈ;->ᴵˊ:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v3, v0, Lʻٴ/ˈ;->ʾˋ:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v2, v3, v1

    iput v1, v0, Lʻٴ/ˈ;->ᴵˊ:I

    move-object v2, v4

    :cond_0
    check-cast v2, Lʻٴ/ᵔᵢ;

    if-nez v2, :cond_1

    new-instance v2, Lʻٴ/ᵔᵢ;

    invoke-direct {v2, p1}, Lʻٴ/ᵔᵢ;-><init>(I)V

    iput p1, v2, Lʻٴ/ᵔᵢ;->ᵔי:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lʻٴ/ᵔᵢ;->ʽ()V

    iput p1, v2, Lʻٴ/ᵔᵢ;->ᵔי:I

    :goto_0
    iget p1, p0, Lʻٴ/ʽ;->ˉˆ:I

    iget v0, p0, Lʻٴ/ʽ;->ﹳٴ:I

    if-lt p1, v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lʻٴ/ʽ;->ﹳٴ:I

    iget-object p1, p0, Lʻٴ/ʽ;->ᵔʾ:[Lʻٴ/ᵔᵢ;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lʻٴ/ᵔᵢ;

    iput-object p1, p0, Lʻٴ/ʽ;->ᵔʾ:[Lʻٴ/ᵔᵢ;

    :cond_2
    iget-object p1, p0, Lʻٴ/ʽ;->ᵔʾ:[Lʻٴ/ᵔᵢ;

    iget v0, p0, Lʻٴ/ʽ;->ˉˆ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lʻٴ/ʽ;->ˉˆ:I

    aput-object v2, p1, v0

    return-object v2
.end method

.method public final ﹳᐧ(Lʻٴ/ⁱˊ;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Lʻٴ/ʽ;->ˆʾ:I

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lʻٴ/ʽ;->ʼˎ:[Z

    aput-boolean v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    :goto_1
    if-nez v3, :cond_e

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v0, Lʻٴ/ʽ;->ˆʾ:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v4, v6, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v6, v1, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    if-eqz v6, :cond_2

    iget-object v7, v0, Lʻٴ/ʽ;->ʼˎ:[Z

    iget v6, v6, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    aput-boolean v5, v7, v6

    :cond_2
    iget-object v6, v0, Lʻٴ/ʽ;->ʼˎ:[Z

    invoke-virtual {v1, v6}, Lʻٴ/ⁱˊ;->ˈ([Z)Lʻٴ/ᵔᵢ;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v0, Lʻٴ/ʽ;->ʼˎ:[Z

    iget v8, v6, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    aget-boolean v9, v7, v8

    if-eqz v9, :cond_3

    goto/16 :goto_8

    :cond_3
    aput-boolean v5, v7, v8

    :cond_4
    if-eqz v6, :cond_c

    const/4 v7, -0x1

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v2

    move v10, v7

    :goto_2
    iget v11, v0, Lʻٴ/ʽ;->ٴﹶ:I

    if-ge v9, v11, :cond_b

    iget-object v11, v0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v11, v11, v9

    iget-object v12, v11, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget v12, v12, Lʻٴ/ᵔᵢ;->ᵔי:I

    if-ne v12, v5, :cond_5

    goto :goto_6

    :cond_5
    iget-boolean v12, v11, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    iget-object v12, v11, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    iget v13, v12, Lʻٴ/ﹳٴ;->ᵔᵢ:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eq v13, v15, :cond_9

    iget v5, v12, Lʻٴ/ﹳٴ;->ﹳٴ:I

    if-ge v2, v5, :cond_9

    iget-object v5, v12, Lʻٴ/ﹳٴ;->ˑﹳ:[I

    aget v5, v5, v13

    iget v14, v6, Lʻٴ/ᵔᵢ;->ᴵˊ:I

    if-ne v5, v14, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    iget-object v5, v12, Lʻٴ/ﹳٴ;->ﾞᴵ:[I

    aget v13, v5, v13

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_a

    iget-object v2, v11, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v2, v6}, Lʻٴ/ﹳٴ;->ʽ(Lʻٴ/ᵔᵢ;)F

    move-result v2

    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_a

    iget v5, v11, Lʻٴ/ⁱˊ;->ⁱˊ:F

    neg-float v5, v5

    div-float/2addr v5, v2

    cmpg-float v2, v5, v8

    if-gez v2, :cond_a

    move v8, v5

    move v10, v9

    :cond_a
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_b
    if-le v10, v7, :cond_d

    iget-object v2, v0, Lʻٴ/ʽ;->ᵎﹶ:[Lʻٴ/ⁱˊ;

    aget-object v2, v2, v10

    iget-object v5, v2, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iput v7, v5, Lʻٴ/ᵔᵢ;->ʽʽ:I

    invoke-virtual {v2, v6}, Lʻٴ/ⁱˊ;->ᵎﹶ(Lʻٴ/ᵔᵢ;)V

    iget-object v5, v2, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iput v10, v5, Lʻٴ/ᵔᵢ;->ʽʽ:I

    invoke-virtual {v5, v0, v2}, Lʻٴ/ᵔᵢ;->ˑﹳ(Lʻٴ/ʽ;Lʻٴ/ⁱˊ;)V

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    :cond_d
    :goto_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_e
    :goto_8
    return-void
.end method

.method public final ﾞʻ()Lʻٴ/ⁱˊ;
    .locals 6

    .prologue
    iget-object v0, p0, Lʻٴ/ʽ;->ˉʿ:Lᵢ/ﹳٴ;

    iget-object v1, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʻٴ/ˈ;

    iget v2, v1, Lʻٴ/ˈ;->ᴵˊ:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iget-object v4, v1, Lʻٴ/ˈ;->ʾˋ:[Ljava/lang/Object;

    aget-object v5, v4, v2

    aput-object v3, v4, v2

    iput v2, v1, Lʻٴ/ˈ;->ᴵˊ:I

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    check-cast v5, Lʻٴ/ⁱˊ;

    if-nez v5, :cond_1

    new-instance v5, Lʻٴ/ⁱˊ;

    invoke-direct {v5, v0}, Lʻٴ/ⁱˊ;-><init>(Lᵢ/ﹳٴ;)V

    goto :goto_1

    :cond_1
    iput-object v3, v5, Lʻٴ/ⁱˊ;->ﹳٴ:Lʻٴ/ᵔᵢ;

    iget-object v0, v5, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v0}, Lʻٴ/ﹳٴ;->ⁱˊ()V

    const/4 v0, 0x0

    iput v0, v5, Lʻٴ/ⁱˊ;->ⁱˊ:F

    const/4 v0, 0x0

    iput-boolean v0, v5, Lʻٴ/ⁱˊ;->ˑﹳ:Z

    :goto_1
    return-object v5
.end method

.method public final ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p0}, Lʻٴ/ʽ;->ˉʿ()Lʻٴ/ᵔᵢ;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lʻٴ/ᵔᵢ;->ˈٴ:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lʻٴ/ⁱˊ;->ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p1, v1}, Lʻٴ/ﹳٴ;->ʽ(Lʻٴ/ᵔᵢ;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Lʻٴ/ʽ;->ˆʾ(I)Lʻٴ/ᵔᵢ;

    move-result-object p2

    iget-object p3, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    :cond_0
    invoke-virtual {p0, v0}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    return-void
.end method
