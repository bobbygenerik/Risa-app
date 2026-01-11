.class public final Lʾﾞ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﾞ/ᵔᵢ;


# instance fields
.field public ʼˎ:Z

.field public ʼᐧ:Z

.field public ʽ:F

.field public ˆʾ:Lʾﾞ/ˆʾ;

.field public ˈ:F

.field public ˉʿ:Ljava/nio/ByteBuffer;

.field public ˉˆ:J

.field public ˑﹳ:Lʾﾞ/ᵎﹶ;

.field public ٴﹶ:Ljava/nio/ByteBuffer;

.field public ᵎﹶ:Lʾﾞ/ᵎﹶ;

.field public ᵔʾ:J

.field public ᵔᵢ:Lʾﾞ/ᵎﹶ;

.field public ⁱˊ:I

.field public ﾞʻ:Ljava/nio/ShortBuffer;

.field public ﾞᴵ:Lʾﾞ/ᵎﹶ;


# virtual methods
.method public final flush()V
    .locals 10

    .prologue
    invoke-virtual {p0}, Lʾﾞ/ٴﹶ;->ʽ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ᵎﹶ:Lʾﾞ/ᵎﹶ;

    iget-object v2, p0, Lʾﾞ/ٴﹶ;->ﾞᴵ:Lʾﾞ/ᵎﹶ;

    iput-object v2, p0, Lʾﾞ/ٴﹶ;->ᵔᵢ:Lʾﾞ/ᵎﹶ;

    iget-boolean v3, p0, Lʾﾞ/ٴﹶ;->ʼˎ:Z

    if-eqz v3, :cond_0

    new-instance v4, Lʾﾞ/ˆʾ;

    iget v5, v0, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    iget v6, v0, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    iget v7, p0, Lʾﾞ/ٴﹶ;->ʽ:F

    iget v8, p0, Lʾﾞ/ٴﹶ;->ˈ:F

    iget v9, v2, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    invoke-direct/range {v4 .. v9}, Lʾﾞ/ˆʾ;-><init>(IIFFI)V

    iput-object v4, p0, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    if-eqz v0, :cond_1

    iput v1, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ˉˆ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ʼᐧ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ᵔﹳ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ﹳᐧ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->יـ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ˏי:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ʽﹳ:I

    iput v1, v0, Lʾﾞ/ˆʾ;->ʻٴ:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lʾﾞ/ˆʾ;->ـˆ:D

    :cond_1
    :goto_0
    sget-object v0, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ˉʿ:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lʾﾞ/ٴﹶ;->ᵔʾ:J

    iput-wide v2, p0, Lʾﾞ/ٴﹶ;->ˉˆ:J

    iput-boolean v1, p0, Lʾﾞ/ٴﹶ;->ʼᐧ:Z

    return-void
.end method

.method public final reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lʾﾞ/ٴﹶ;->ʽ:F

    iput v0, p0, Lʾﾞ/ٴﹶ;->ˈ:F

    sget-object v0, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ﾞᴵ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ᵎﹶ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ᵔᵢ:Lʾﾞ/ᵎﹶ;

    sget-object v0, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ٴﹶ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lʾﾞ/ٴﹶ;->ﾞʻ:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ˉʿ:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lʾﾞ/ٴﹶ;->ⁱˊ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʾﾞ/ٴﹶ;->ʼˎ:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lʾﾞ/ٴﹶ;->ᵔʾ:J

    iput-wide v1, p0, Lʾﾞ/ٴﹶ;->ˉˆ:J

    iput-boolean v0, p0, Lʾﾞ/ٴﹶ;->ʼᐧ:Z

    return-void
.end method

.method public final ʽ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ﾞᴵ:Lʾﾞ/ᵎﹶ;

    iget v0, v0, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lʾﾞ/ٴﹶ;->ʽ:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lʾﾞ/ٴﹶ;->ˈ:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ﾞᴵ:Lʾﾞ/ᵎﹶ;

    iget v0, v0, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    iget-object v1, p0, Lʾﾞ/ٴﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iget v1, v1, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    if-eqz v0, :cond_3

    iget v1, v0, Lʾﾞ/ˆʾ;->ⁱˊ:I

    iget v2, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v2, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    mul-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_3

    iget-object v5, p0, Lʾﾞ/ٴﹶ;->ٴﹶ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v5, v2, :cond_1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lʾﾞ/ٴﹶ;->ٴﹶ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    iput-object v5, p0, Lʾﾞ/ٴﹶ;->ﾞʻ:Ljava/nio/ShortBuffer;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lʾﾞ/ٴﹶ;->ٴﹶ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Lʾﾞ/ٴﹶ;->ﾞʻ:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    iget-object v5, p0, Lʾﾞ/ٴﹶ;->ﾞʻ:Ljava/nio/ShortBuffer;

    iget v6, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    if-ltz v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    div-int/2addr v4, v1

    iget v6, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v6, v0, Lʾﾞ/ˆʾ;->ﾞʻ:[S

    mul-int v7, v4, v1

    invoke-virtual {v5, v6, v3, v7}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v5, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    sub-int/2addr v5, v4

    iput v5, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    iget-object v0, v0, Lʾﾞ/ˆʾ;->ﾞʻ:[S

    mul-int/2addr v5, v1

    invoke-static {v0, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Lʾﾞ/ٴﹶ;->ˉˆ:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lʾﾞ/ٴﹶ;->ˉˆ:J

    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ٴﹶ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ٴﹶ:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ٴﹶ;->ˉʿ:Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ˉʿ:Ljava/nio/ByteBuffer;

    sget-object v1, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lʾﾞ/ٴﹶ;->ˉʿ:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final ˑﹳ()V
    .locals 11

    .prologue
    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    if-eqz v0, :cond_2

    iget v1, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    iget v2, v0, Lʾﾞ/ˆʾ;->ʽ:F

    iget v3, v0, Lʾﾞ/ˆʾ;->ˈ:F

    div-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, v0, Lʾﾞ/ˆʾ;->ˑﹳ:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    iget v6, v0, Lʾﾞ/ˆʾ;->ﹳᐧ:I

    sub-int v7, v1, v6

    iget v8, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    int-to-double v9, v7

    div-double/2addr v9, v4

    int-to-double v4, v6

    add-double/2addr v9, v4

    iget-wide v4, v0, Lʾﾞ/ˆʾ;->ـˆ:D

    add-double/2addr v9, v4

    iget v4, v0, Lʾﾞ/ˆʾ;->ˉˆ:I

    int-to-double v4, v4

    add-double/2addr v9, v4

    div-double/2addr v9, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v2

    double-to-int v2, v9

    add-int/2addr v8, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lʾﾞ/ˆʾ;->ـˆ:D

    iget-object v2, v0, Lʾﾞ/ˆʾ;->ˆʾ:[S

    iget v3, v0, Lʾﾞ/ˆʾ;->ᵔᵢ:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v3, v1

    invoke-virtual {v0, v2, v1, v4}, Lʾﾞ/ˆʾ;->ʽ([SII)[S

    move-result-object v2

    iput-object v2, v0, Lʾﾞ/ˆʾ;->ˆʾ:[S

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, v0, Lʾﾞ/ˆʾ;->ⁱˊ:I

    mul-int v6, v3, v5

    if-ge v4, v6, :cond_0

    iget-object v6, v0, Lʾﾞ/ˆʾ;->ˆʾ:[S

    mul-int/2addr v5, v1

    add-int/2addr v5, v4

    aput-short v2, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    add-int/2addr v3, v1

    iput v3, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    invoke-virtual {v0}, Lʾﾞ/ˆʾ;->ﾞᴵ()V

    iget v1, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    if-le v1, v8, :cond_1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    :cond_1
    iput v2, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    iput v2, v0, Lʾﾞ/ˆʾ;->ﹳᐧ:I

    iput v2, v0, Lʾﾞ/ˆʾ;->ˉˆ:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lʾﾞ/ٴﹶ;->ʼᐧ:Z

    return-void
.end method

.method public final ᵎﹶ(Lʾﾞ/ᵎﹶ;)Lʾﾞ/ᵎﹶ;
    .locals 3

    .prologue
    iget v0, p1, Lʾﾞ/ᵎﹶ;->ʽ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lʾﾞ/ٴﹶ;->ⁱˊ:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lʾﾞ/ᵎﹶ;->ﹳٴ:I

    :cond_0
    iput-object p1, p0, Lʾﾞ/ٴﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    new-instance v2, Lʾﾞ/ᵎﹶ;

    iget p1, p1, Lʾﾞ/ᵎﹶ;->ⁱˊ:I

    invoke-direct {v2, v0, p1, v1}, Lʾﾞ/ᵎﹶ;-><init>(III)V

    iput-object v2, p0, Lʾﾞ/ٴﹶ;->ﾞᴵ:Lʾﾞ/ᵎﹶ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʾﾞ/ٴﹶ;->ʼˎ:Z

    return-object v2

    :cond_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lʾﾞ/ᵎﹶ;)V

    throw v0
.end method

.method public final ⁱˊ()Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Lʾﾞ/ٴﹶ;->ʼᐧ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    if-ltz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v3, v0, Lʾﾞ/ˆʾ;->ˉʿ:I

    iget v0, v0, Lʾﾞ/ˆʾ;->ⁱˊ:I

    mul-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public final ﾞᴵ(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lʾﾞ/ٴﹶ;->ˆʾ:Lʾﾞ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lʾﾞ/ٴﹶ;->ᵔʾ:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lʾﾞ/ٴﹶ;->ᵔʾ:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, v0, Lʾﾞ/ˆʾ;->ⁱˊ:I

    div-int/2addr v3, v4

    mul-int v5, v3, v4

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, v0, Lʾﾞ/ˆʾ;->ˆʾ:[S

    iget v7, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    invoke-virtual {v0, v6, v7, v3}, Lʾﾞ/ˆʾ;->ʽ([SII)[S

    move-result-object v6

    iput-object v6, v0, Lʾﾞ/ˆʾ;->ˆʾ:[S

    iget v7, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    mul-int/2addr v7, v4

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v6, v7, v5}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v1, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    add-int/2addr v1, v3

    iput v1, v0, Lʾﾞ/ˆʾ;->ٴﹶ:I

    invoke-virtual {v0}, Lʾﾞ/ˆʾ;->ﾞᴵ()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
