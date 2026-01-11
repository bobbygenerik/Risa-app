.class public final Lﾞˏ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˏ/ᴵᵔ;


# instance fields
.field public ʼˎ:Lﾞˏ/ʽﹳ;

.field public final ʽ:Ljava/util/ArrayDeque;

.field public ˈ:Landroid/view/Surface;

.field public ˑﹳ:Lʽⁱ/ﹳᐧ;

.field public ᵎﹶ:Lﾞˏ/ˈٴ;

.field public ᵔᵢ:Ljava/util/concurrent/Executor;

.field public final ⁱˊ:Lﾞˏ/ʾˋ;

.field public final ﹳٴ:Lﾞˏ/ʻٴ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(Lﾞˏ/ʻٴ;Lᐧˎ/ˏי;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    iput-object p2, p1, Lﾞˏ/ʻٴ;->ﾞʻ:Lᐧˎ/ˏי;

    new-instance p2, Lﾞˏ/ʾˋ;

    new-instance v0, Lﾞˏ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lﾞˏ/ʾˋ;-><init>(Lﾞˏ/ʽ;Lﾞˏ/ʻٴ;)V

    iput-object p2, p0, Lﾞˏ/ˈ;->ⁱˊ:Lﾞˏ/ʾˋ;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lﾞˏ/ˈ;->ʽ:Ljava/util/ArrayDeque;

    new-instance p1, Lʽⁱ/ᵔﹳ;

    invoke-direct {p1}, Lʽⁱ/ᵔﹳ;-><init>()V

    new-instance p2, Lʽⁱ/ﹳᐧ;

    invoke-direct {p2, p1}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object p2, p0, Lﾞˏ/ˈ;->ˑﹳ:Lʽⁱ/ﹳᐧ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﾞˏ/ˈ;->ﾞᴵ:J

    sget-object p1, Lﾞˏ/ˈٴ;->ᵢˏ:Lﹶﾞ/ʽʽ;

    iput-object p1, p0, Lﾞˏ/ˈ;->ᵎﹶ:Lﾞˏ/ˈٴ;

    new-instance p1, Lʼᐧ/ﹳٴ;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lʼᐧ/ﹳٴ;-><init>(I)V

    iput-object p1, p0, Lﾞˏ/ˈ;->ᵔᵢ:Ljava/util/concurrent/Executor;

    new-instance p1, Lﾞˏ/ﹳٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞˏ/ˈ;->ʼˎ:Lﾞˏ/ʽﹳ;

    return-void
.end method


# virtual methods
.method public final ʻٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    iget v1, v0, Lﾞˏ/ʻٴ;->ˑﹳ:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Lﾞˏ/ʻٴ;->ˑﹳ:I

    :cond_0
    return-void
.end method

.method public final ʼˎ(JLﾞˏ/ᵎﹶ;)Z
    .locals 8

    .prologue
    iget-object v0, p0, Lﾞˏ/ˈ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lﾞˏ/ˈ;->ⁱˊ:Lﾞˏ/ʾˋ;

    iget-object v0, p3, Lﾞˏ/ʾˋ;->ﾞᴵ:Lcom/google/android/material/datepicker/ᵔʾ;

    iget v1, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    iget-object v2, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, [J

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    array-length v1, v2

    shl-int/2addr v1, v4

    if-ltz v1, :cond_0

    new-array v3, v1, [J

    array-length v5, v2

    iget v6, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    invoke-static {v2, v6, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v2, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v7, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    iget v2, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    iput-object v3, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v1, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    add-int/2addr v1, v4

    iget v2, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    and-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    iget-object v2, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, [J

    aput-wide p1, v2, v1

    iget v1, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    iput-wide p1, p3, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p3, Lﾞˏ/ʾˋ;->ʼˎ:J

    iget-object p1, p0, Lﾞˏ/ˈ;->ᵔᵢ:Ljava/util/concurrent/Executor;

    new-instance p2, Lٴˉ/ⁱˊ;

    const/16 p3, 0x12

    invoke-direct {p2, p3, p0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v4
.end method

.method public final ʼᐧ()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final ʽ()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lﾞˏ/ˈ;->ˈ:Landroid/view/Surface;

    iget-object v1, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {v1, v0}, Lﾞˏ/ʻٴ;->ᵔᵢ(Landroid/view/Surface;)V

    return-void
.end method

.method public final ʽﹳ(Lⁱʽ/ﹳٴ;)V
    .locals 0

    iput-object p1, p0, Lﾞˏ/ˈ;->ᵎﹶ:Lﾞˏ/ˈٴ;

    sget-object p1, Lˈˊ/ʼᐧ;->ʾˋ:Lˈˊ/ʼᐧ;

    iput-object p1, p0, Lﾞˏ/ˈ;->ᵔᵢ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final ʾᵎ(F)V
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {v0, p1}, Lﾞˏ/ʻٴ;->ʼˎ(F)V

    return-void
.end method

.method public final ˆʾ(JJ)V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lﾞˏ/ˈ;->ⁱˊ:Lﾞˏ/ʾˋ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lﾞˏ/ʾˋ;->ﹳٴ(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    iget-object p3, p0, Lﾞˏ/ˈ;->ˑﹳ:Lʽⁱ/ﹳᐧ;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Exception;Lʽⁱ/ﹳᐧ;)V

    throw p2
.end method

.method public final ˈ(Lﾞˏ/ʽﹳ;)V
    .locals 0

    iput-object p1, p0, Lﾞˏ/ˈ;->ʼˎ:Lﾞˏ/ʽﹳ;

    return-void
.end method

.method public final ˉʿ(Z)V
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {v0, p1}, Lﾞˏ/ʻٴ;->ʽ(Z)V

    return-void
.end method

.method public final ˉˆ()V
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {v0}, Lﾞˏ/ʻٴ;->ˈ()V

    return-void
.end method

.method public final ˏי()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˑﹳ()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˈ;->ˈ:Landroid/view/Surface;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final יـ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lﾞˏ/ˈ;->ⁱˊ:Lﾞˏ/ʾˋ;

    iget-wide v1, v0, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    iput-wide v1, v0, Lﾞˏ/ʾˋ;->ᵔᵢ:J

    :cond_0
    iget-wide v1, v0, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    iput-wide v1, v0, Lﾞˏ/ʾˋ;->ʼˎ:J

    return-void
.end method

.method public final ـˆ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    iget-object v0, v0, Lﾞˏ/ʻٴ;->ⁱˊ:Lﾞˏ/ᵢˏ;

    iget v1, v0, Lﾞˏ/ᵢˏ;->ˆʾ:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput p1, v0, Lﾞˏ/ᵢˏ;->ˆʾ:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lﾞˏ/ᵢˏ;->ˈ(Z)V

    return-void
.end method

.method public final ٴﹶ(Lʽⁱ/ﹳᐧ;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final ᵎﹶ(Ljava/util/List;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final ᵔʾ(Z)Z
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {v0, p1}, Lﾞˏ/ʻٴ;->ⁱˊ(Z)Z

    move-result p1

    return p1
.end method

.method public final ᵔᵢ()V
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {v0}, Lﾞˏ/ʻٴ;->ˑﹳ()V

    return-void
.end method

.method public final ᵔﹳ(Landroid/view/Surface;Lᐧˎ/יـ;)V
    .locals 0

    iput-object p1, p0, Lﾞˏ/ˈ;->ˈ:Landroid/view/Surface;

    iget-object p2, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {p2, p1}, Lﾞˏ/ʻٴ;->ᵔᵢ(Landroid/view/Surface;)V

    return-void
.end method

.method public final ⁱˊ()Z
    .locals 5

    .prologue
    iget-object v0, p0, Lﾞˏ/ˈ;->ⁱˊ:Lﾞˏ/ʾˋ;

    iget-wide v1, v0, Lﾞˏ/ʾˋ;->ʼˎ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-wide v3, v0, Lﾞˏ/ʾˋ;->ᵔᵢ:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﹳᐧ(J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final ﾞʻ(Lʽⁱ/ﹳᐧ;JILjava/util/List;)V
    .locals 10

    .prologue
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    invoke-static {p5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget p5, p1, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    iget-object v1, p0, Lﾞˏ/ˈ;->ˑﹳ:Lʽⁱ/ﹳᐧ;

    iget v2, v1, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    const-wide/16 v3, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v7, p0, Lﾞˏ/ˈ;->ⁱˊ:Lﾞˏ/ʾˋ;

    if-ne p5, v2, :cond_0

    iget v1, v1, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v1, v7, Lﾞˏ/ʾˋ;->ˈ:Lʻˆ/ﾞᴵ;

    iget-wide v8, v7, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    cmp-long v2, v8, v5

    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    add-long/2addr v8, v3

    :goto_0
    new-instance v2, Lʽⁱ/ˏᵢ;

    invoke-direct {v2, p5, v0}, Lʽⁱ/ˏᵢ;-><init>(II)V

    invoke-virtual {v1, v8, v9, v2}, Lʻˆ/ﾞᴵ;->ﹳٴ(JLjava/lang/Object;)V

    :cond_2
    iget p5, p1, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    iget-object v0, p0, Lﾞˏ/ˈ;->ˑﹳ:Lʽⁱ/ﹳᐧ;

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    invoke-virtual {v0, p5}, Lﾞˏ/ʻٴ;->ᵎﹶ(F)V

    :cond_3
    iput-object p1, p0, Lﾞˏ/ˈ;->ˑﹳ:Lʽⁱ/ﹳᐧ;

    iget-wide v0, p0, Lﾞˏ/ˈ;->ﾞᴵ:J

    cmp-long p1, p2, v0

    if-eqz p1, :cond_6

    iget-object p1, v7, Lﾞˏ/ʾˋ;->ﾞᴵ:Lcom/google/android/material/datepicker/ᵔʾ;

    iget p1, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    if-nez p1, :cond_4

    iget-object p1, v7, Lﾞˏ/ʾˋ;->ⁱˊ:Lﾞˏ/ʻٴ;

    invoke-virtual {p1, p4}, Lﾞˏ/ʻٴ;->ﾞᴵ(I)V

    iput-wide p2, v7, Lﾞˏ/ʾˋ;->ٴﹶ:J

    goto :goto_2

    :cond_4
    iget-object p1, v7, Lﾞˏ/ʾˋ;->ˑﹳ:Lʻˆ/ﾞᴵ;

    iget-wide p4, v7, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    cmp-long v0, p4, v5

    if-nez v0, :cond_5

    const-wide/high16 p4, -0x4000000000000000L    # -2.0

    goto :goto_1

    :cond_5
    add-long/2addr p4, v3

    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, Lʻˆ/ﾞᴵ;->ﹳٴ(JLjava/lang/Object;)V

    :goto_2
    iput-wide p2, p0, Lﾞˏ/ˈ;->ﾞᴵ:J

    :cond_6
    return-void
.end method

.method public final ﾞᴵ(Z)V
    .locals 9

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    iget-object v5, p1, Lﾞˏ/ʻٴ;->ⁱˊ:Lﾞˏ/ᵢˏ;

    iput-wide v2, v5, Lﾞˏ/ᵢˏ;->ˉʿ:J

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lﾞˏ/ᵢˏ;->ʼᐧ:J

    iput-wide v6, v5, Lﾞˏ/ᵢˏ;->ᵔʾ:J

    iput-wide v0, p1, Lﾞˏ/ʻٴ;->ᵔᵢ:J

    iput-wide v0, p1, Lﾞˏ/ʻٴ;->ﾞᴵ:J

    iget v5, p1, Lﾞˏ/ʻٴ;->ˑﹳ:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p1, Lﾞˏ/ʻٴ;->ˑﹳ:I

    iput-wide v0, p1, Lﾞˏ/ʻٴ;->ʼˎ:J

    :cond_0
    iget-object p1, p0, Lﾞˏ/ˈ;->ⁱˊ:Lﾞˏ/ʾˋ;

    iget-object v5, p1, Lﾞˏ/ʾˋ;->ˈ:Lʻˆ/ﾞᴵ;

    iget-object v6, p1, Lﾞˏ/ʾˋ;->ﾞᴵ:Lcom/google/android/material/datepicker/ᵔʾ;

    const/4 v7, 0x0

    iput v7, v6, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    const/4 v8, -0x1

    iput v8, v6, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    iput v7, v6, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    iput-wide v0, p1, Lﾞˏ/ʾˋ;->ᵎﹶ:J

    iput-wide v0, p1, Lﾞˏ/ʾˋ;->ᵔᵢ:J

    iput-wide v0, p1, Lﾞˏ/ʾˋ;->ʼˎ:J

    iget-object v0, p1, Lﾞˏ/ʾˋ;->ˑﹳ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v0}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v7

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    :goto_1
    invoke-virtual {v0}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result v1

    if-le v1, v4, :cond_2

    invoke-virtual {v0}, Lʻˆ/ﾞᴵ;->ᵎﹶ()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lʻˆ/ﾞᴵ;->ᵎﹶ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lﾞˏ/ʾˋ;->ٴﹶ:J

    :cond_3
    invoke-virtual {v5}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v5}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result p1

    if-lez p1, :cond_4

    move v7, v4

    :cond_4
    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    :goto_2
    invoke-virtual {v5}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result p1

    if-le p1, v4, :cond_5

    invoke-virtual {v5}, Lʻˆ/ﾞᴵ;->ᵎﹶ()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lʻˆ/ﾞᴵ;->ᵎﹶ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lʽⁱ/ˏᵢ;

    invoke-virtual {v5, v2, v3, p1}, Lʻˆ/ﾞᴵ;->ﹳٴ(JLjava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lﾞˏ/ˈ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method
