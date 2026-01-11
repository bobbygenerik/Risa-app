.class public final Lˋˊ/ˑﹳ;
.super Lⁱי/ˑﹳ;
.source "SourceFile"


# instance fields
.field public ʻˋ:Z

.field public ʻᵎ:Landroidx/media3/exoplayer/image/ImageOutput;

.field public final ʼˈ:Lʾⁱ/ˑﹳ;

.field public ʿ:J

.field public ʿᵢ:J

.field public ˈˏ:Lˈـ/ـˆ;

.field public ˈⁱ:Z

.field public ˉـ:Lˋˊ/ˈ;

.field public ˊᵔ:Landroid/graphics/Bitmap;

.field public ˏᵢ:Lˋˊ/ⁱˊ;

.field public final ـˏ:Lﹳⁱ/ˑﹳ;

.field public ـﹶ:Z

.field public ᐧᴵ:Lʽⁱ/ﹳᐧ;

.field public ᐧﾞ:I

.field public ᴵʼ:Lﹳⁱ/ˑﹳ;

.field public ᴵˑ:Z

.field public ᵎᵔ:I

.field public final ﹳـ:Ljava/util/ArrayDeque;

.field public ﹳﹳ:I

.field public ﹶᐧ:Lˈـ/ـˆ;


# direct methods
.method public constructor <init>(Lʾⁱ/ˑﹳ;)V
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lⁱי/ˑﹳ;-><init>(I)V

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ʼˈ:Lʾⁱ/ˑﹳ;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageOutput;->ﹳٴ:Lˋˊ/ʽ;

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ʻᵎ:Landroidx/media3/exoplayer/image/ImageOutput;

    new-instance p1, Lﹳⁱ/ˑﹳ;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lﹳⁱ/ˑﹳ;-><init>(II)V

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ـˏ:Lﹳⁱ/ˑﹳ;

    sget-object p1, Lˋˊ/ˈ;->ʽ:Lˋˊ/ˈ;

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ˉـ:Lˋˊ/ˈ;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ﹳـ:Ljava/util/ArrayDeque;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lˋˊ/ˑﹳ;->ʿᵢ:J

    iput-wide v1, p0, Lˋˊ/ˑﹳ;->ʿ:J

    iput v0, p0, Lˋˊ/ˑﹳ;->ᵎᵔ:I

    const/4 p1, 0x1

    iput p1, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    return-void
.end method


# virtual methods
.method public final ʻٴ([Lʽⁱ/ﹳᐧ;JJLﹳᵢ/ᵢˏ;)V
    .locals 4

    .prologue
    iget-object p1, p0, Lˋˊ/ˑﹳ;->ˉـ:Lˋˊ/ˈ;

    iget-wide p1, p1, Lˋˊ/ˈ;->ⁱˊ:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lˋˊ/ˑﹳ;->ﹳـ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide p2, p0, Lˋˊ/ˑﹳ;->ʿᵢ:J

    cmp-long p6, p2, v0

    if-eqz p6, :cond_1

    iget-wide v2, p0, Lˋˊ/ˑﹳ;->ʿ:J

    cmp-long p6, v2, v0

    if-eqz p6, :cond_0

    cmp-long p2, v2, p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lˋˊ/ˈ;

    iget-wide v0, p0, Lˋˊ/ˑﹳ;->ʿᵢ:J

    invoke-direct {p2, v0, v1, p4, p5}, Lˋˊ/ˈ;-><init>(JJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    new-instance p1, Lˋˊ/ˈ;

    invoke-direct {p1, v0, v1, p4, p5}, Lˋˊ/ˈ;-><init>(JJ)V

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ˉـ:Lˋˊ/ˈ;

    return-void
.end method

.method public final ʼᐧ(ZZ)V
    .locals 0

    iput p2, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    return-void
.end method

.method public final ʽʽ(J)Z
    .locals 12

    .prologue
    iget-object v0, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v2, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget v2, p0, Lⁱי/ˑﹳ;->ˉٴ:I

    if-eq v2, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Lˋˊ/ˑﹳ;->ﹳـ:Ljava/util/ArrayDeque;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    invoke-virtual {v0}, Lﹳⁱ/ᵎﹶ;->ﾞʻ()Lﹳⁱ/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lˋˊ/ﹳٴ;

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget p1, p0, Lˋˊ/ˑﹳ;->ᵎᵔ:I

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lˋˊ/ˑﹳ;->ˊʻ()V

    iget-object p1, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lˋˊ/ˑﹳ;->ᴵᵔ()V

    return v1

    :cond_3
    invoke-virtual {v0}, Lˋˊ/ﹳٴ;->ʽﹳ()V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    iput-boolean v5, p0, Lˋˊ/ˑﹳ;->ᴵˑ:Z

    return v1

    :cond_4
    iget-object v6, v0, Lˋˊ/ﹳٴ;->ˊʻ:Landroid/graphics/Bitmap;

    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    invoke-static {v6, v7}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lˋˊ/ﹳٴ;->ˊʻ:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lˋˊ/ﹳٴ;->ʽﹳ()V

    :cond_5
    iget-boolean v0, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    iget v6, v0, Lʽⁱ/ﹳᐧ;->ˆﾞ:I

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ᵔٴ:I

    if-ne v6, v5, :cond_6

    if-eq v0, v5, :cond_7

    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    if-eq v0, v7, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    iget-object v6, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    iget-object v7, v6, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget v7, v6, Lˈـ/ـˆ;->ﹳٴ:I

    iget-object v8, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    invoke-static {v8}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v8, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget v9, v9, Lʽⁱ/ﹳᐧ;->ˆﾞ:I

    div-int/2addr v8, v9

    iget-object v9, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-static {v10}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget v10, v10, Lʽⁱ/ﹳᐧ;->ᵔٴ:I

    div-int/2addr v9, v10

    iget-object v10, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    iget v10, v10, Lʽⁱ/ﹳᐧ;->ˆﾞ:I

    rem-int v11, v7, v10

    mul-int/2addr v11, v8

    div-int/2addr v7, v10

    mul-int/2addr v7, v9

    iget-object v10, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    invoke-static {v10, v11, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    :goto_1
    iput-object v7, v6, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    :goto_2
    iget-object v6, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    iget-object v6, v6, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v7, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    iget-wide v7, v7, Lˈـ/ـˆ;->ⁱˊ:J

    sub-long p1, v7, p1

    iget v9, p0, Lⁱי/ˑﹳ;->ˉٴ:I

    if-ne v9, v3, :cond_a

    move v3, v5

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    iget v9, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    if-eqz v9, :cond_d

    if-eq v9, v5, :cond_c

    if-ne v9, v4, :cond_b

    move v3, v1

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_c
    move v3, v5

    :cond_d
    :goto_4
    if-nez v3, :cond_f

    const-wide/16 v9, 0x7530

    cmp-long p1, p1, v9

    if-gez p1, :cond_e

    goto :goto_5

    :cond_e
    move p1, v1

    goto :goto_6

    :cond_f
    :goto_5
    iget-object p1, p0, Lˋˊ/ˑﹳ;->ʻᵎ:Landroidx/media3/exoplayer/image/ImageOutput;

    iget-object p2, p0, Lˋˊ/ˑﹳ;->ˉـ:Lˋˊ/ˈ;

    iget-wide v9, p2, Lˋˊ/ˈ;->ⁱˊ:J

    sub-long/2addr v7, v9

    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    move p1, v5

    :goto_6
    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide p1, p1, Lˈـ/ـˆ;->ⁱˊ:J

    iput-wide p1, p0, Lˋˊ/ˑﹳ;->ʿ:J

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋˊ/ˈ;

    iget-wide v6, v1, Lˋˊ/ˈ;->ﹳٴ:J

    cmp-long v1, p1, v6

    if-ltz v1, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋˊ/ˈ;

    iput-object v1, p0, Lˋˊ/ˑﹳ;->ˉـ:Lˋˊ/ˈ;

    goto :goto_7

    :cond_11
    iput v4, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    const/4 p1, 0x0

    if-eqz v0, :cond_12

    iget-object p2, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    invoke-static {p2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget p2, p2, Lˈـ/ـˆ;->ﹳٴ:I

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ᵔٴ:I

    iget-object v1, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget v1, v1, Lʽⁱ/ﹳᐧ;->ˆﾞ:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v5

    if-ne p2, v0, :cond_13

    :cond_12
    iput-object p1, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    :cond_13
    iget-object p2, p0, Lˋˊ/ˑﹳ;->ﹶᐧ:Lˈـ/ـˆ;

    iput-object p2, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ﹶᐧ:Lˈـ/ـˆ;

    return v5

    :cond_14
    :goto_8
    return v1
.end method

.method public final ʾˋ(Lʽⁱ/ﹳᐧ;)I
    .locals 1

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ʼˈ:Lʾⁱ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lʾⁱ/ˑﹳ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)I

    move-result p1

    return p1
.end method

.method public final ʾᵎ(JJ)V
    .locals 3

    .prologue
    iget-boolean p3, p0, Lˋˊ/ˑﹳ;->ᴵˑ:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    if-nez p3, :cond_3

    iget-object p3, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {p3}, Lـʾ/ᵔﹳ;->ﾞᴵ()V

    iget-object p4, p0, Lˋˊ/ˑﹳ;->ـˏ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {p4}, Lﹳⁱ/ˑﹳ;->ˏי()V

    const/4 v0, 0x2

    invoke-virtual {p0, p3, p4, v0}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result v0

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p3, p3, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p3, Lʽⁱ/ﹳᐧ;

    invoke-static {p3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iput-object p3, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    iput-boolean v2, p0, Lˋˊ/ˑﹳ;->ʻˋ:Z

    goto :goto_1

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p4, p1}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result p1

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-boolean v2, p0, Lˋˊ/ˑﹳ;->ˈⁱ:Z

    iput-boolean v2, p0, Lˋˊ/ˑﹳ;->ᴵˑ:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p3, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lˋˊ/ˑﹳ;->ᴵᵔ()V

    :cond_4
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Lˋˊ/ˑﹳ;->ʽʽ(J)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2}, Lˋˊ/ˑﹳ;->ˈٴ(J)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/16 p2, 0xfa3

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p3, p2}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageRenderer"

    return-object v0
.end method

.method public final ˈٴ(J)Z
    .locals 12

    .prologue
    iget-boolean v0, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {v0}, Lـʾ/ᵔﹳ;->ﾞᴵ()V

    iget-object v2, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    if-eqz v2, :cond_15

    iget v3, p0, Lˋˊ/ˑﹳ;->ᵎᵔ:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    iget-boolean v3, p0, Lˋˊ/ˑﹳ;->ˈⁱ:Z

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v3, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lﹳⁱ/ᵎﹶ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳⁱ/ˑﹳ;

    iput-object v2, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    if-nez v2, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v2, p0, Lˋˊ/ˑﹳ;->ᵎᵔ:I

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v2, v3, :cond_3

    iget-object p1, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    iput v6, p1, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    iget-object p1, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {p1, p2}, Lﹳⁱ/ᵎﹶ;->ᵔʾ(Lﹳⁱ/ˑﹳ;)V

    iput-object v5, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    iput v4, p0, Lˋˊ/ˑﹳ;->ᵎᵔ:I

    return v1

    :cond_3
    iget-object v2, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {p0, v0, v2, v1}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result v2

    const/4 v4, -0x5

    const/4 v7, 0x1

    if-eq v2, v4, :cond_14

    const/4 v0, -0x4

    if-eq v2, v0, :cond_5

    const/4 p1, -0x3

    if-ne v2, p1, :cond_4

    goto/16 :goto_9

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    iget-object v0, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {v0}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    iget-object v0, v0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v7

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v3, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    iput-object v3, v2, Lﹳⁱ/ˑﹳ;->ʽʽ:Lʽⁱ/ﹳᐧ;

    iget-object v2, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v3, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lﹳⁱ/ᵎﹶ;->ᵔʾ(Lﹳⁱ/ˑﹳ;)V

    iput v1, p0, Lˋˊ/ˑﹳ;->ﹳﹳ:I

    :cond_9
    iget-object v2, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v7, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    goto/16 :goto_7

    :cond_a
    new-instance v3, Lˈـ/ـˆ;

    iget v4, p0, Lˋˊ/ˑﹳ;->ﹳﹳ:I

    iget-wide v8, v2, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v4, v3, Lˈـ/ـˆ;->ﹳٴ:I

    iput-wide v8, v3, Lˈـ/ـˆ;->ⁱˊ:J

    iput-object v3, p0, Lˋˊ/ˑﹳ;->ﹶᐧ:Lˈـ/ـˆ;

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lˋˊ/ˑﹳ;->ﹳﹳ:I

    iget-boolean v2, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    if-nez v2, :cond_11

    const-wide/16 v2, 0x7530

    sub-long v10, v8, v2

    cmp-long v10, v10, p1

    if-gtz v10, :cond_b

    add-long/2addr v2, v8

    cmp-long v2, p1, v2

    if-gtz v2, :cond_b

    move v2, v7

    goto :goto_1

    :cond_b
    move v2, v1

    :goto_1
    iget-object v3, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    if-eqz v3, :cond_c

    iget-wide v10, v3, Lˈـ/ـˆ;->ⁱˊ:J

    cmp-long v3, v10, p1

    if-gtz v3, :cond_c

    cmp-long p1, p1, v8

    if-gez p1, :cond_c

    move p1, v7

    goto :goto_2

    :cond_c
    move p1, v1

    :goto_2
    iget-object p2, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-static {p2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget p2, p2, Lʽⁱ/ﹳᐧ;->ˆﾞ:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_e

    iget-object p2, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    iget v8, p2, Lʽⁱ/ﹳᐧ;->ᵔٴ:I

    if-eq v8, v3, :cond_e

    iget p2, p2, Lʽⁱ/ﹳᐧ;->ˆﾞ:I

    mul-int/2addr v8, p2

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_d

    goto :goto_3

    :cond_d
    move p2, v1

    goto :goto_4

    :cond_e
    :goto_3
    move p2, v7

    :goto_4
    if-nez v2, :cond_10

    if-nez p1, :cond_10

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    move p2, v1

    goto :goto_6

    :cond_10
    :goto_5
    move p2, v7

    :goto_6
    iput-boolean p2, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    if-eqz p1, :cond_11

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    iget-object p1, p0, Lˋˊ/ˑﹳ;->ﹶᐧ:Lˈـ/ـˆ;

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    iput-object v5, p0, Lˋˊ/ˑﹳ;->ﹶᐧ:Lˈـ/ـˆ;

    :goto_7
    iget-object p1, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iput-boolean v7, p0, Lˋˊ/ˑﹳ;->ˈⁱ:Z

    iput-object v5, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    return v1

    :cond_12
    iget-wide p1, p0, Lˋˊ/ˑﹳ;->ʿᵢ:J

    iget-object v1, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v1, v1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lˋˊ/ˑﹳ;->ʿᵢ:J

    if-eqz v0, :cond_13

    iput-object v5, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    goto :goto_8

    :cond_13
    iget-object p1, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    :goto_8
    iget-boolean p1, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    xor-int/2addr p1, v7

    return p1

    :cond_14
    iget-object p1, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lʽⁱ/ﹳᐧ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iput-object p1, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    iput-boolean v7, p0, Lˋˊ/ˑﹳ;->ʻˋ:Z

    iput v3, p0, Lˋˊ/ˑﹳ;->ᵎᵔ:I

    return v7

    :cond_15
    :goto_9
    return v1
.end method

.method public final ˉʿ()Z
    .locals 2

    .prologue
    iget v0, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ˉˆ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    sget-object v0, Lˋˊ/ˈ;->ʽ:Lˋˊ/ˈ;

    iput-object v0, p0, Lˋˊ/ˑﹳ;->ˉـ:Lˋˊ/ˈ;

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ﹳـ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lˋˊ/ˑﹳ;->ˊʻ()V

    iget-object v0, p0, Lˋˊ/ˑﹳ;->ʻᵎ:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageOutput;->ﹳٴ()V

    return-void
.end method

.method public final ˊʻ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    const/4 v1, 0x0

    iput v1, p0, Lˋˊ/ˑﹳ;->ᵎᵔ:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lˋˊ/ˑﹳ;->ʿᵢ:J

    iget-object v1, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lﹳⁱ/ᵎﹶ;->ﹳٴ()V

    iput-object v0, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    :cond_0
    return-void
.end method

.method public final יـ()V
    .locals 2

    invoke-virtual {p0}, Lˋˊ/ˑﹳ;->ˊʻ()V

    const/4 v0, 0x1

    iget v1, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    return-void
.end method

.method public final ᴵᵔ()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lˋˊ/ˑﹳ;->ʻˋ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lˋˊ/ˑﹳ;->ʼˈ:Lʾⁱ/ˑﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lʾⁱ/ˑﹳ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v3, v3, v3}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/image/ImageDecoderException;

    const-string v1, "Provided decoder factory can\'t create decoder for format."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˋˊ/ˑﹳ;->ᐧᴵ:Lʽⁱ/ﹳᐧ;

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v3, v2}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lﹳⁱ/ᵎﹶ;->ﹳٴ()V

    :cond_3
    new-instance v0, Lˋˊ/ⁱˊ;

    iget-object v1, v1, Lʾⁱ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lˋˊ/ⁱˊ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    iput-boolean v3, p0, Lˋˊ/ˑﹳ;->ʻˋ:Z

    return-void
.end method

.method public final ᵔﹳ(ZJ)V
    .locals 0

    .prologue
    const/4 p1, 0x1

    iget p2, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lˋˊ/ˑﹳ;->ᐧﾞ:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˋˊ/ˑﹳ;->ᴵˑ:Z

    iput-boolean p1, p0, Lˋˊ/ˑﹳ;->ˈⁱ:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lˋˊ/ˑﹳ;->ˊᵔ:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lˋˊ/ˑﹳ;->ˈˏ:Lˈـ/ـˆ;

    iput-object p2, p0, Lˋˊ/ˑﹳ;->ﹶᐧ:Lˈـ/ـˆ;

    iput-boolean p1, p0, Lˋˊ/ˑﹳ;->ـﹶ:Z

    iput-object p2, p0, Lˋˊ/ˑﹳ;->ᴵʼ:Lﹳⁱ/ˑﹳ;

    iget-object p1, p0, Lˋˊ/ˑﹳ;->ˏᵢ:Lˋˊ/ⁱˊ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lﹳⁱ/ᵎﹶ;->flush()V

    :cond_0
    iget-object p1, p0, Lˋˊ/ˑﹳ;->ﹳـ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final ⁱˊ(ILjava/lang/Object;)V
    .locals 1

    .prologue
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    if-eqz p1, :cond_1

    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->ﹳٴ:Lˋˊ/ʽ;

    :cond_2
    iput-object p2, p0, Lˋˊ/ˑﹳ;->ʻᵎ:Landroidx/media3/exoplayer/image/ImageOutput;

    return-void
.end method

.method public final ﹳᐧ()V
    .locals 0

    invoke-virtual {p0}, Lˋˊ/ˑﹳ;->ˊʻ()V

    return-void
.end method

.method public final ﾞʻ()Z
    .locals 1

    iget-boolean v0, p0, Lˋˊ/ˑﹳ;->ᴵˑ:Z

    return v0
.end method
