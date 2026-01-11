.class public final Lʻˆ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ʼˎ;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public ʾˋ:I

.field public ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [J

    iput-object v1, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[F[FI)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p2, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    iput p4, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    return-void
.end method

.method public constructor <init>(Lʻˆ/ﾞᴵ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [F

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ᵔʾ([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    iget-object v0, p1, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ᵔʾ([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    iget p1, p1, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    return-void

    :cond_0
    const/4 p1, 0x6

    iput p1, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    return-void

    :cond_1
    const/4 p1, 0x5

    iput p1, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public ʼˎ()Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v2, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    aget-object v3, v0, v2

    const/4 v4, 0x0

    aput-object v4, v0, v2

    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    iget v0, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    return-object v3
.end method

.method public ʽ(Lˊﾞ/ʼᐧ;J)Lˊﾞ/ᵔᵢ;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v5

    iget v1, v0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    int-to-long v1, v1

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lᐧˎ/ﹳᐧ;

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v4, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v3, v4, v1}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    iget v1, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    const-wide/16 v3, -0x1

    move-wide v9, v3

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v11

    const/16 v12, 0xbc

    if-lt v11, v12, :cond_7

    iget-object v11, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v12, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    :goto_1
    if-ge v12, v1, :cond_0

    aget-byte v15, v11, v12

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v7, 0x47

    if-eq v15, v7, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1
    add-int/lit16 v7, v12, 0xbc

    if-le v7, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v3, v0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    invoke-static {v2, v12, v3}, Landroid/support/v4/media/session/ⁱˊ;->ˉˆ(Lᐧˎ/ﹳᐧ;II)J

    move-result-wide v3

    cmp-long v8, v3, v16

    if-eqz v8, :cond_6

    iget-object v8, v0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Lᐧˎ/ـˆ;

    invoke-virtual {v8, v3, v4}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v3

    cmp-long v8, v3, p2

    if-lez v8, :cond_4

    cmp-long v1, v13, v16

    if-nez v1, :cond_3

    new-instance v1, Lˊﾞ/ᵔᵢ;

    const/4 v2, -0x1

    invoke-direct/range {v1 .. v6}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v1

    :cond_3
    add-long v15, v5, v9

    new-instance v11, Lˊﾞ/ᵔᵢ;

    const/4 v12, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v11 .. v16}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v11

    :cond_4
    const-wide/32 v8, 0x186a0

    add-long/2addr v8, v3

    cmp-long v8, v8, p2

    if-lez v8, :cond_5

    int-to-long v1, v12

    add-long v11, v5, v1

    new-instance v7, Lˊﾞ/ᵔᵢ;

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v12}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v7

    :cond_5
    int-to-long v8, v12

    move-wide v13, v3

    move-wide v9, v8

    :cond_6
    invoke-virtual {v2, v7}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    int-to-long v3, v7

    goto :goto_0

    :cond_7
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    cmp-long v1, v13, v16

    if-eqz v1, :cond_8

    add-long v15, v5, v3

    new-instance v11, Lˊﾞ/ᵔᵢ;

    const/4 v12, -0x2

    invoke-direct/range {v11 .. v16}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v11

    :cond_8
    sget-object v1, Lˊﾞ/ᵔᵢ;->ˈ:Lˊﾞ/ᵔᵢ;

    return-object v1
.end method

.method public declared-synchronized ˆʾ()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ˈ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    sub-int/2addr v0, v3

    iget-object v4, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, [J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    if-lez v3, :cond_1

    iget-object v4, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, [J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    iput v5, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    return-void
.end method

.method public ˑﹳ(ZJ)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    iget v3, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [J

    iget v4, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    aget-wide v4, v3, v4

    sub-long v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    if-nez p1, :cond_1

    neg-long v6, v4

    cmp-long v1, v6, v1

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lʻˆ/ﾞᴵ;->ʼˎ()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public declared-synchronized ᵎﹶ()Ljava/lang/Object;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lʻˆ/ﾞᴵ;->ʼˎ()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized ᵔᵢ(J)Ljava/lang/Object;
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lʻˆ/ﾞᴵ;->ˑﹳ(ZJ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized ⁱˊ()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    iput v0, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    iget-object v0, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized ﹳٴ(JLjava/lang/Object;)V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    if-lez v0, :cond_0

    iget v1, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    iget-object v0, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lʻˆ/ﾞᴵ;->ⁱˊ()V

    :cond_0
    invoke-virtual {p0}, Lʻˆ/ﾞᴵ;->ˈ()V

    iget v0, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    iget v1, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    iget-object v3, p0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [J

    aput-wide p1, v3, v0

    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lʻˆ/ﾞᴵ;->ᴵˊ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ﾞᴵ()V
    .locals 3

    iget-object v0, p0, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    sget-object v1, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    return-void
.end method
