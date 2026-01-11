.class public final Lﹶʽ/ⁱˊ;
.super Lﹶʽ/ʽ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:J

.field public final ʼᐧ:Lᐧˎ/ˏי;

.field public ʽﹳ:Lᵢˋ/ﾞʻ;

.field public final ˆʾ:J

.field public final ˉʿ:F

.field public final ˉˆ:Lʼʻ/ᵎⁱ;

.field public ˏי:J

.field public יـ:I

.field public final ٴﹶ:I

.field public final ᵎﹶ:Lᵔⁱ/ˈ;

.field public final ᵔʾ:F

.field public final ᵔᵢ:J

.field public ᵔﹳ:F

.field public ﹳᐧ:I

.field public final ﾞʻ:I


# direct methods
.method public constructor <init>(Lʽⁱ/ـˏ;[ILᵔⁱ/ˈ;JJJFLʼʻ/ᵎⁱ;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lﹶʽ/ʽ;-><init>(Lʽⁱ/ـˏ;[I)V

    cmp-long p1, p8, p4

    if-gez p1, :cond_0

    const-string p1, "AdaptiveTrackSelection"

    const-string p2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {p1, p2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p8, p4

    :cond_0
    iput-object p3, p0, Lﹶʽ/ⁱˊ;->ᵎﹶ:Lᵔⁱ/ˈ;

    const-wide/16 p1, 0x3e8

    mul-long/2addr p4, p1

    iput-wide p4, p0, Lﹶʽ/ⁱˊ;->ᵔᵢ:J

    mul-long/2addr p6, p1

    iput-wide p6, p0, Lﹶʽ/ⁱˊ;->ʼˎ:J

    mul-long/2addr p8, p1

    iput-wide p8, p0, Lﹶʽ/ⁱˊ;->ˆʾ:J

    const/16 p1, 0x4ff

    iput p1, p0, Lﹶʽ/ⁱˊ;->ٴﹶ:I

    const/16 p1, 0x2cf

    iput p1, p0, Lﹶʽ/ⁱˊ;->ﾞʻ:I

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lﹶʽ/ⁱˊ;->ˉʿ:F

    iput p10, p0, Lﹶʽ/ⁱˊ;->ᵔʾ:F

    invoke-static {p11}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lﹶʽ/ⁱˊ;->ˉˆ:Lʼʻ/ᵎⁱ;

    sget-object p1, Lᐧˎ/ˏי;->ﹳٴ:Lᐧˎ/ˏי;

    iput-object p1, p0, Lﹶʽ/ⁱˊ;->ʼᐧ:Lᐧˎ/ˏי;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lﹶʽ/ⁱˊ;->ᵔﹳ:F

    const/4 p1, 0x0

    iput p1, p0, Lﹶʽ/ⁱˊ;->יـ:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹶʽ/ⁱˊ;->ˏי:J

    return-void
.end method

.method public static ʻٴ(Ljava/util/ArrayList;[J)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    aget-wide v4, p1, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʼʻ/ˊʻ;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lﹶʽ/ﹳٴ;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Lﹶʽ/ﹳٴ;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static ʾᵎ(Ljava/util/List;)J
    .locals 7

    .prologue
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lᵢˋ/ﾞʻ;

    iget-wide v3, p0, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lᵢˋ/ˑﹳ;->ˉٴ:J

    cmp-long p0, v5, v1

    if-eqz p0, :cond_1

    sub-long/2addr v5, v3

    return-wide v5

    :cond_1
    :goto_0
    return-wide v1
.end method


# virtual methods
.method public final ˉʿ()I
    .locals 1

    iget v0, p0, Lﹶʽ/ⁱˊ;->יـ:I

    return v0
.end method

.method public final ˑﹳ()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lﹶʽ/ⁱˊ;->ˏי:J

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶʽ/ⁱˊ;->ʽﹳ:Lᵢˋ/ﾞʻ;

    return-void
.end method

.method public final ـˆ(J)I
    .locals 8

    .prologue
    iget-object v0, p0, Lﹶʽ/ⁱˊ;->ᵎﹶ:Lᵔⁱ/ˈ;

    check-cast v0, Lᵔⁱ/ᵎﹶ;

    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, Lᵔⁱ/ᵎﹶ;->ﾞʻ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    long-to-float v0, v1

    iget v1, p0, Lﹶʽ/ⁱˊ;->ˉʿ:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget-object v2, p0, Lﹶʽ/ⁱˊ;->ᵎﹶ:Lᵔⁱ/ˈ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-float v0, v0

    iget v1, p0, Lﹶʽ/ⁱˊ;->ᵔﹳ:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    iget-object v2, p0, Lﹶʽ/ⁱˊ;->ˉˆ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lﹶʽ/ⁱˊ;->ˉˆ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lﹶʽ/ⁱˊ;->ˉˆ:Lʼʻ/ᵎⁱ;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶʽ/ﹳٴ;

    iget-wide v4, v4, Lﹶʽ/ﹳٴ;->ﹳٴ:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lﹶʽ/ⁱˊ;->ˉˆ:Lʼʻ/ᵎⁱ;

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶʽ/ﹳٴ;

    iget-object v4, p0, Lﹶʽ/ⁱˊ;->ˉˆ:Lʼʻ/ᵎⁱ;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹶʽ/ﹳٴ;

    iget-wide v4, v2, Lﹶʽ/ﹳٴ;->ﹳٴ:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget-wide v6, v3, Lﹶʽ/ﹳٴ;->ﹳٴ:J

    sub-long/2addr v6, v4

    long-to-float v1, v6

    div-float/2addr v0, v1

    iget-wide v1, v2, Lﹶʽ/ﹳٴ;->ⁱˊ:J

    iget-wide v3, v3, Lﹶʽ/ﹳٴ;->ⁱˊ:J

    sub-long/2addr v3, v1

    long-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    add-long/2addr v1, v3

    move-wide v0, v1

    :goto_1
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    iget v4, p0, Lﹶʽ/ʽ;->ⁱˊ:I

    if-ge v2, v4, :cond_5

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2, p1, p2}, Lﹶʽ/ʽ;->ʽ(IJ)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget-object v3, p0, Lﹶʽ/ʽ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v3, v3, v2

    iget v3, v3, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    int-to-long v3, v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_3

    return v2

    :cond_3
    move v3, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ٴﹶ(JJJLjava/util/List;[Lᵢˋ/ˉʿ;)V
    .locals 10

    .prologue
    move-object/from16 p1, p8

    iget-object p2, p0, Lﹶʽ/ⁱˊ;->ʼᐧ:Lᐧˎ/ˏי;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget p2, p0, Lﹶʽ/ⁱˊ;->ﹳᐧ:I

    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-object p2, p1, p2

    invoke-interface {p2}, Lᵢˋ/ˉʿ;->next()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lﹶʽ/ⁱˊ;->ﹳᐧ:I

    aget-object p1, p1, p2

    invoke-interface {p1}, Lᵢˋ/ˉʿ;->ﹳٴ()J

    move-result-wide v2

    invoke-interface {p1}, Lᵢˋ/ˉʿ;->ʽ()J

    move-result-wide p1

    sub-long/2addr v2, p1

    goto :goto_1

    :cond_0
    array-length p2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Lᵢˋ/ˉʿ;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lᵢˋ/ˉʿ;->ﹳٴ()J

    move-result-wide p1

    invoke-interface {v3}, Lᵢˋ/ˉʿ;->ʽ()J

    move-result-wide v2

    sub-long v2, p1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static/range {p7 .. p7}, Lﹶʽ/ⁱˊ;->ʾᵎ(Ljava/util/List;)J

    move-result-wide v2

    :goto_1
    iget p1, p0, Lﹶʽ/ⁱˊ;->יـ:I

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput p1, p0, Lﹶʽ/ⁱˊ;->יـ:I

    invoke-virtual {p0, v0, v1}, Lﹶʽ/ⁱˊ;->ـˆ(J)I

    move-result p1

    iput p1, p0, Lﹶʽ/ⁱˊ;->ﹳᐧ:I

    return-void

    :cond_3
    iget p2, p0, Lﹶʽ/ⁱˊ;->ﹳᐧ:I

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    invoke-static/range {p7 .. p7}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵢˋ/ﾞʻ;

    iget-object v4, v4, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0, v4}, Lﹶʽ/ʽ;->ʼᐧ(Lʽⁱ/ﹳᐧ;)I

    move-result v4

    :goto_2
    if-eq v4, v5, :cond_5

    invoke-static/range {p7 .. p7}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵢˋ/ﾞʻ;

    iget p1, p1, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    move p2, v4

    :cond_5
    invoke-virtual {p0, v0, v1}, Lﹶʽ/ⁱˊ;->ـˆ(J)I

    move-result v4

    if-eq v4, p2, :cond_9

    invoke-virtual {p0, p2, v0, v1}, Lﹶʽ/ʽ;->ʽ(IJ)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lﹶʽ/ʽ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v1, v0, p2

    aget-object v0, v0, v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p5, v5

    iget-wide v8, p0, Lﹶʽ/ⁱˊ;->ᵔᵢ:J

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    cmp-long v5, v2, v5

    if-eqz v5, :cond_7

    sub-long v2, p5, v2

    goto :goto_3

    :cond_7
    move-wide v2, p5

    :goto_3
    long-to-float v2, v2

    iget v3, p0, Lﹶʽ/ⁱˊ;->ᵔʾ:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :goto_4
    iget v0, v0, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    iget v1, v1, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    if-le v0, v1, :cond_8

    cmp-long v2, p3, v8

    if-gez v2, :cond_8

    goto :goto_5

    :cond_8
    if-ge v0, v1, :cond_9

    iget-wide v0, p0, Lﹶʽ/ⁱˊ;->ʼˎ:J

    cmp-long v0, p3, v0

    if-ltz v0, :cond_9

    :goto_5
    move v4, p2

    :cond_9
    if-ne v4, p2, :cond_a

    goto :goto_6

    :cond_a
    const/4 p1, 0x3

    :goto_6
    iput p1, p0, Lﹶʽ/ⁱˊ;->יـ:I

    iput v4, p0, Lﹶʽ/ⁱˊ;->ﹳᐧ:I

    return-void
.end method

.method public final ᵎﹶ(JLjava/util/List;)I
    .locals 10

    .prologue
    iget-object v0, p0, Lﹶʽ/ⁱˊ;->ʼᐧ:Lᐧˎ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lﹶʽ/ⁱˊ;->ˏי:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵢˋ/ﾞʻ;

    iget-object v3, p0, Lﹶʽ/ⁱˊ;->ʽﹳ:Lᵢˋ/ﾞʻ;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    iput-wide v0, p0, Lﹶʽ/ⁱˊ;->ˏי:J

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵢˋ/ﾞʻ;

    :goto_1
    iput-object v2, p0, Lﹶʽ/ⁱˊ;->ʽﹳ:Lᵢˋ/ﾞʻ;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵢˋ/ﾞʻ;

    iget-wide v4, v4, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    sub-long/2addr v4, p1

    iget v6, p0, Lﹶʽ/ⁱˊ;->ᵔﹳ:F

    invoke-static {v4, v5, v6}, Lᐧˎ/ʼʼ;->ˊʻ(JF)J

    move-result-wide v4

    iget-wide v6, p0, Lﹶʽ/ⁱˊ;->ˆʾ:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p3}, Lﹶʽ/ⁱˊ;->ʾᵎ(Ljava/util/List;)J

    invoke-virtual {p0, v0, v1}, Lﹶʽ/ⁱˊ;->ـˆ(J)I

    move-result v0

    iget-object v1, p0, Lﹶʽ/ʽ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v0, v1, v0

    :goto_2
    if-ge v3, v2, :cond_6

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵢˋ/ﾞʻ;

    iget-object v4, v1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-wide v8, v1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    sub-long/2addr v8, p1

    iget v1, p0, Lﹶʽ/ⁱˊ;->ᵔﹳ:F

    invoke-static {v8, v9, v1}, Lᐧˎ/ʼʼ;->ˊʻ(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_5

    iget v1, v4, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    iget v5, v0, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    if-ge v1, v5, :cond_5

    iget v1, v4, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    iget v8, p0, Lﹶʽ/ⁱˊ;->ﾞʻ:I

    if-gt v1, v8, :cond_5

    iget v4, v4, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-eq v4, v5, :cond_5

    iget v5, p0, Lﹶʽ/ⁱˊ;->ٴﹶ:I

    if-gt v4, v5, :cond_5

    iget v4, v0, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-ge v1, v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v2
.end method

.method public final ᵔʾ()I
    .locals 1

    iget v0, p0, Lﹶʽ/ⁱˊ;->ﹳᐧ:I

    return v0
.end method

.method public final ᵔᵢ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶʽ/ⁱˊ;->ʽﹳ:Lᵢˋ/ﾞʻ;

    return-void
.end method

.method public final ᵔﹳ(F)V
    .locals 0

    iput p1, p0, Lﹶʽ/ⁱˊ;->ᵔﹳ:F

    return-void
.end method

.method public final ﹳᐧ()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
