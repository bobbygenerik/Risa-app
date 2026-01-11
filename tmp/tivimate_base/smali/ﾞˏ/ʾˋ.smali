.class public final Lﾞˏ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:J

.field public final ʽ:Lʻˆ/ﹳٴ;

.field public ˆʾ:Lʽⁱ/ˏᵢ;

.field public final ˈ:Lʻˆ/ﾞᴵ;

.field public final ˑﹳ:Lʻˆ/ﾞᴵ;

.field public ٴﹶ:J

.field public ᵎﹶ:J

.field public ᵔᵢ:J

.field public final ⁱˊ:Lﾞˏ/ʻٴ;

.field public final ﹳٴ:Lﾞˏ/ʽ;

.field public final ﾞᴵ:Lcom/google/android/material/datepicker/ᵔʾ;


# direct methods
.method public constructor <init>(Lﾞˏ/ʽ;Lﾞˏ/ʻٴ;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞˏ/ʾˋ;->ﹳٴ:Lﾞˏ/ʽ;

    iput-object p2, p0, Lﾞˏ/ʾˋ;->ⁱˊ:Lﾞˏ/ʻٴ;

    new-instance p1, Lʻˆ/ﹳٴ;

    invoke-direct {p1}, Lʻˆ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lﾞˏ/ʾˋ;->ʽ:Lʻˆ/ﹳٴ;

    new-instance p1, Lʻˆ/ﾞᴵ;

    invoke-direct {p1}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object p1, p0, Lﾞˏ/ʾˋ;->ˈ:Lʻˆ/ﾞᴵ;

    new-instance p1, Lʻˆ/ﾞᴵ;

    invoke-direct {p1}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object p1, p0, Lﾞˏ/ʾˋ;->ˑﹳ:Lʻˆ/ﾞᴵ;

    new-instance p1, Lcom/google/android/material/datepicker/ᵔʾ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    shl-int/2addr p2, v1

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    const/4 v2, -0x1

    iput v2, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    iput v0, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    new-array v0, p2, [J

    iput-object v0, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    iput-object p1, p0, Lﾞˏ/ʾˋ;->ﾞᴵ:Lcom/google/android/material/datepicker/ᵔʾ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    sget-object v0, Lʽⁱ/ˏᵢ;->ˈ:Lʽⁱ/ˏᵢ;

    iput-object v0, p0, Lﾞˏ/ʾˋ;->ˆʾ:Lʽⁱ/ˏᵢ;

    iput-wide p1, p0, Lﾞˏ/ʾˋ;->ᵔᵢ:J

    iput-wide p1, p0, Lﾞˏ/ʾˋ;->ʼˎ:J

    return-void
.end method


# virtual methods
.method public final ﹳٴ(JJ)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lﾞˏ/ʾˋ;->ﹳٴ:Lﾞˏ/ʽ;

    iget-object v2, v1, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lﾞˏ/ˈ;

    :goto_0
    iget-object v3, v0, Lﾞˏ/ʾˋ;->ﾞᴵ:Lcom/google/android/material/datepicker/ᵔʾ;

    iget v4, v3, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz v4, :cond_c

    iget-object v4, v3, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v4, [J

    iget v5, v3, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    aget-wide v7, v4, v5

    iget-object v4, v0, Lﾞˏ/ʾˋ;->ˑﹳ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v4, v7, v8}, Lʻˆ/ﾞᴵ;->ᵔᵢ(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const/4 v5, 0x2

    iget-object v6, v0, Lﾞˏ/ʾˋ;->ⁱˊ:Lﾞˏ/ʻٴ;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v0, Lﾞˏ/ʾˋ;->ٴﹶ:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lﾞˏ/ʾˋ;->ٴﹶ:J

    invoke-virtual {v6, v5}, Lﾞˏ/ʻٴ;->ﾞᴵ(I)V

    :cond_1
    iget-wide v13, v0, Lﾞˏ/ʾˋ;->ٴﹶ:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v4, v6

    iget-object v6, v0, Lﾞˏ/ʾˋ;->ⁱˊ:Lﾞˏ/ʻٴ;

    iget-object v9, v0, Lﾞˏ/ʾˋ;->ʽ:Lʻˆ/ﹳٴ;

    move-wide/from16 v11, p3

    move-object/from16 v17, v9

    move-wide/from16 v9, p1

    invoke-virtual/range {v6 .. v17}, Lﾞˏ/ʻٴ;->ﹳٴ(JJJJZZLʻˆ/ﹳٴ;)I

    move-result v6

    move-object/from16 v9, v17

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v6, :cond_5

    if-eq v6, v11, :cond_5

    if-eq v6, v5, :cond_4

    if-eq v6, v10, :cond_4

    const/4 v3, 0x4

    if-eq v6, v3, :cond_3

    const/4 v1, 0x5

    if-ne v6, v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-wide v7, v0, Lﾞˏ/ʾˋ;->ᵔᵢ:J

    goto :goto_0

    :cond_4
    iput-wide v7, v0, Lﾞˏ/ʾˋ;->ᵔᵢ:J

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/ᵔʾ;->ˈ()J

    iget-object v3, v2, Lﾞˏ/ˈ;->ᵔᵢ:Ljava/util/concurrent/Executor;

    new-instance v4, Lﾞˏ/ⁱˊ;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lﾞˏ/ⁱˊ;-><init>(Lﾞˏ/ʽ;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, v2, Lﾞˏ/ˈ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﾞˏ/ᵎﹶ;

    iget-object v4, v3, Lﾞˏ/ᵎﹶ;->ʽ:Lﾞˏ/ˆʾ;

    iget-object v5, v3, Lﾞˏ/ᵎﹶ;->ﹳٴ:Lʼᵢ/ﾞʻ;

    iget v3, v3, Lﾞˏ/ᵎﹶ;->ⁱˊ:I

    invoke-virtual {v4, v5, v3}, Lﾞˏ/ˆʾ;->ⁱᴵ(Lʼᵢ/ﾞʻ;I)V

    goto/16 :goto_0

    :cond_5
    iput-wide v7, v0, Lﾞˏ/ʾˋ;->ᵔᵢ:J

    const/4 v5, 0x0

    if-nez v6, :cond_6

    move v6, v11

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/material/datepicker/ᵔʾ;->ˈ()J

    move-result-wide v13

    iget-object v3, v0, Lﾞˏ/ʾˋ;->ˈ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v3, v13, v14}, Lʻˆ/ﾞᴵ;->ᵔᵢ(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽⁱ/ˏᵢ;

    if-eqz v3, :cond_7

    sget-object v7, Lʽⁱ/ˏᵢ;->ˈ:Lʽⁱ/ˏᵢ;

    invoke-virtual {v3, v7}, Lʽⁱ/ˏᵢ;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v0, Lﾞˏ/ʾˋ;->ˆʾ:Lʽⁱ/ˏᵢ;

    invoke-virtual {v3, v7}, Lʽⁱ/ˏᵢ;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iput-object v3, v0, Lﾞˏ/ʾˋ;->ˆʾ:Lʽⁱ/ˏᵢ;

    new-instance v7, Lʽⁱ/ᵔﹳ;

    invoke-direct {v7}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget v8, v3, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    iput v8, v7, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v8, v3, Lʽⁱ/ˏᵢ;->ⁱˊ:I

    iput v8, v7, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    const-string v8, "video/raw"

    invoke-static {v8}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v8, Lʽⁱ/ﹳᐧ;

    invoke-direct {v8, v7}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object v8, v1, Lﾞˏ/ʽ;->ﹳٴ:Ljava/lang/Object;

    iget-object v7, v2, Lﾞˏ/ˈ;->ᵔᵢ:Ljava/util/concurrent/Executor;

    new-instance v8, Lᐧᵢ/ˉʿ;

    const/16 v12, 0xc

    invoke-direct {v8, v1, v12, v3}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    if-eqz v6, :cond_8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :goto_2
    move-wide v15, v6

    goto :goto_3

    :cond_8
    iget-wide v6, v9, Lʻˆ/ﹳٴ;->ⁱˊ:J

    goto :goto_2

    :goto_3
    iget v3, v4, Lﾞˏ/ʻٴ;->ˑﹳ:I

    if-eq v3, v10, :cond_9

    goto :goto_4

    :cond_9
    move v11, v5

    :goto_4
    iput v10, v4, Lﾞˏ/ʻٴ;->ˑﹳ:I

    iget-object v3, v4, Lﾞˏ/ʻٴ;->ﾞʻ:Lᐧˎ/ˏי;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v5

    iput-wide v5, v4, Lﾞˏ/ʻٴ;->ᵎﹶ:J

    if-eqz v11, :cond_a

    iget-object v3, v2, Lﾞˏ/ˈ;->ˈ:Landroid/view/Surface;

    if-eqz v3, :cond_a

    iget-object v3, v2, Lﾞˏ/ˈ;->ᵔᵢ:Ljava/util/concurrent/Executor;

    new-instance v4, Lﾞˏ/ⁱˊ;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lﾞˏ/ⁱˊ;-><init>(Lﾞˏ/ʽ;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    iget-object v3, v1, Lﾞˏ/ʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v3, Lʽⁱ/ﹳᐧ;

    if-nez v3, :cond_b

    new-instance v3, Lʽⁱ/ᵔﹳ;

    invoke-direct {v3}, Lʽⁱ/ᵔﹳ;-><init>()V

    new-instance v4, Lʽⁱ/ﹳᐧ;

    invoke-direct {v4, v3}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    move-object/from16 v17, v4

    goto :goto_5

    :cond_b
    move-object/from16 v17, v3

    :goto_5
    iget-object v12, v2, Lﾞˏ/ˈ;->ʼˎ:Lﾞˏ/ʽﹳ;

    const/16 v18, 0x0

    invoke-interface/range {v12 .. v18}, Lﾞˏ/ʽﹳ;->ʽ(JJLʽⁱ/ﹳᐧ;Landroid/media/MediaFormat;)V

    move-wide v6, v15

    iget-object v3, v2, Lﾞˏ/ˈ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﾞˏ/ᵎﹶ;

    iget-object v4, v3, Lﾞˏ/ᵎﹶ;->ʽ:Lﾞˏ/ˆʾ;

    iget-object v5, v3, Lﾞˏ/ᵎﹶ;->ﹳٴ:Lʼᵢ/ﾞʻ;

    iget v3, v3, Lﾞˏ/ᵎﹶ;->ⁱˊ:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lﾞˏ/ˆʾ;->ʻʿ(Lʼᵢ/ﾞʻ;IJ)V

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
