.class public final synthetic Lﹶʽ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶʽ/ˉˆ;


# instance fields
.field public final synthetic ʽʽ:[I

.field public final synthetic ʾˋ:Lﹶʽ/ˆʾ;

.field public final synthetic ˈٴ:Landroid/graphics/Point;

.field public final synthetic ᴵˊ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lﹶʽ/ˆʾ;Ljava/lang/String;[ILandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶʽ/ˈ;->ʾˋ:Lﹶʽ/ˆʾ;

    iput-object p2, p0, Lﹶʽ/ˈ;->ᴵˊ:Ljava/lang/String;

    iput-object p3, p0, Lﹶʽ/ˈ;->ʽʽ:[I

    iput-object p4, p0, Lﹶʽ/ˈ;->ˈٴ:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final ﾞᴵ(ILʽⁱ/ـˏ;[I)Lʼʻ/ʿᵢ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    iget-object v1, v0, Lﹶʽ/ˈ;->ʽʽ:[I

    aget v8, v1, p1

    iget-object v5, v0, Lﹶʽ/ˈ;->ʾˋ:Lﹶʽ/ˆʾ;

    iget-object v1, v0, Lﹶʽ/ˈ;->ˈٴ:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget v2, v5, Lʽⁱ/ˉـ;->ˑﹳ:I

    :goto_0
    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    iget v1, v5, Lʽⁱ/ˉـ;->ﾞᴵ:I

    :goto_1
    iget-boolean v4, v5, Lʽⁱ/ˉـ;->ᵔᵢ:Z

    const v10, 0x7fffffff

    if-eq v2, v10, :cond_9

    if-ne v1, v10, :cond_2

    goto/16 :goto_7

    :cond_2
    move v7, v10

    const/4 v6, 0x0

    :goto_2
    iget v9, v3, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v6, v9, :cond_8

    iget-object v9, v3, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v9, v9, v6

    iget v13, v9, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    iget v14, v9, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-lez v13, :cond_7

    if-lez v14, :cond_7

    if-eqz v4, :cond_5

    if-le v13, v14, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-le v2, v1, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-eq v15, v11, :cond_5

    move v15, v1

    move v11, v2

    goto :goto_5

    :cond_5
    move v11, v1

    move v15, v2

    :goto_5
    mul-int v12, v13, v11

    mul-int v10, v14, v15

    if-lt v12, v10, :cond_6

    new-instance v11, Landroid/graphics/Point;

    invoke-static {v10, v13}, Lᐧˎ/ʼʼ;->ﾞᴵ(II)I

    move-result v10

    invoke-direct {v11, v15, v10}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6

    :cond_6
    new-instance v10, Landroid/graphics/Point;

    invoke-static {v12, v14}, Lᐧˎ/ʼʼ;->ﾞᴵ(II)I

    move-result v12

    invoke-direct {v10, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v11, v10

    :goto_6
    iget v9, v9, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    mul-int v10, v9, v14

    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    if-lt v9, v12, :cond_7

    iget v9, v11, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    mul-float/2addr v9, v13

    float-to-int v9, v9

    if-lt v14, v9, :cond_7

    if-ge v10, v7, :cond_7

    move v7, v10

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const v10, 0x7fffffff

    goto :goto_2

    :cond_8
    move v10, v7

    goto :goto_8

    :cond_9
    :goto_7
    const v10, 0x7fffffff

    :goto_8
    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v11

    const/4 v4, 0x0

    :goto_9
    iget v1, v3, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v4, v1, :cond_e

    iget-object v1, v3, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v1, v1, v4

    iget v2, v1, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_b

    iget v1, v1, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-ne v1, v6, :cond_a

    goto :goto_b

    :cond_a
    mul-int/2addr v2, v1

    :goto_a
    const v12, 0x7fffffff

    goto :goto_c

    :cond_b
    :goto_b
    move v2, v6

    goto :goto_a

    :goto_c
    if-eq v10, v12, :cond_d

    if-eq v2, v6, :cond_c

    if-gt v2, v10, :cond_c

    goto :goto_d

    :cond_c
    const/4 v9, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v9, 0x1

    :goto_e
    new-instance v1, Lﹶʽ/ᵔﹳ;

    aget v6, p3, v4

    iget-object v7, v0, Lﹶʽ/ˈ;->ᴵˊ:Ljava/lang/String;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lﹶʽ/ᵔﹳ;-><init>(ILʽⁱ/ـˏ;ILﹶʽ/ˆʾ;ILjava/lang/String;IZ)V

    invoke-virtual {v11, v1}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p2

    goto :goto_9

    :cond_e
    invoke-virtual {v11}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v1

    return-object v1
.end method
