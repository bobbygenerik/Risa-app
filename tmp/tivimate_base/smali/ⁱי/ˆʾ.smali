.class public final Lⁱי/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:J

.field public final ʽ:J

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ᵎﹶ:J

.field public final ᵔᵢ:Ljava/util/HashMap;

.field public final ⁱˊ:J

.field public final ﹳٴ:Lᵔⁱ/ˑﹳ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lᵔⁱ/ˑﹳ;IIII)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p4, v0, v1, v2}, Lⁱי/ˆʾ;->ﹳٴ(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p5, v0, v3, v2}, Lⁱי/ˆʾ;->ﹳٴ(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferMs"

    invoke-static {p2, p4, v4, v1}, Lⁱי/ˆʾ;->ﹳٴ(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p5, v4, v3}, Lⁱי/ˆʾ;->ﹳٴ(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {p3, p2, v1, v4}, Lⁱי/ˆʾ;->ﹳٴ(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {v0, v0, v1, v2}, Lⁱי/ˆʾ;->ﹳٴ(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lⁱי/ˆʾ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    int-to-long p1, p2

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide p1

    iput-wide p1, p0, Lⁱי/ˆʾ;->ⁱˊ:J

    int-to-long p1, p3

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide p1

    iput-wide p1, p0, Lⁱי/ˆʾ;->ʽ:J

    int-to-long p1, p4

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide p1

    iput-wide p1, p0, Lⁱי/ˆʾ;->ˈ:J

    int-to-long p1, p5

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide p1

    iput-wide p1, p0, Lⁱי/ˆʾ;->ˑﹳ:J

    const/4 p1, -0x1

    iput p1, p0, Lⁱי/ˆʾ;->ﾞᴵ:I

    int-to-long p1, v0

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide p1

    iput-wide p1, p0, Lⁱי/ˆʾ;->ᵎﹶ:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lⁱי/ˆʾ;->ᵔᵢ:Ljava/util/HashMap;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lⁱי/ˆʾ;->ʼˎ:J

    return-void
.end method

.method public static ﹳٴ(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final ʽ(Lⁱי/ˊʻ;)Z
    .locals 12

    .prologue
    iget-wide v0, p0, Lⁱי/ˆʾ;->ʽ:J

    iget-object v2, p0, Lⁱי/ˆʾ;->ᵔᵢ:Ljava/util/HashMap;

    iget-object v3, p1, Lⁱי/ˊʻ;->ﹳٴ:Lʻʿ/יـ;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱי/ʼˎ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lⁱי/ˆʾ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    monitor-enter v3

    :try_start_0
    iget v4, v3, Lᵔⁱ/ˑﹳ;->ˈ:I

    iget v5, v3, Lᵔⁱ/ˑﹳ;->ⁱˊ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v4, v5

    monitor-exit v3

    invoke-virtual {p0}, Lⁱי/ˆʾ;->ⁱˊ()I

    move-result v3

    const/4 v5, 0x0

    if-lt v4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-wide v6, p0, Lⁱי/ˆʾ;->ⁱˊ:J

    iget v4, p1, Lⁱי/ˊʻ;->ʽ:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    invoke-static {v6, v7, v4}, Lᐧˎ/ʼʼ;->ᴵˊ(JF)J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_1
    const-wide/32 v8, 0x7a120

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v10, p1, Lⁱי/ˊʻ;->ⁱˊ:J

    cmp-long p1, v10, v6

    if-gez p1, :cond_2

    xor-int/lit8 p1, v3, 0x1

    iput-boolean p1, v2, Lⁱי/ʼˎ;->ﹳٴ:Z

    if-eqz v3, :cond_4

    cmp-long p1, v10, v8

    if-gez p1, :cond_4

    const-string p1, "DefaultLoadControl"

    const-string v0, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    cmp-long p1, v10, v0

    if-gez p1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    iput-boolean v5, v2, Lⁱי/ʼˎ;->ﹳٴ:Z

    :cond_4
    :goto_1
    iget-boolean p1, v2, Lⁱי/ʼˎ;->ﹳٴ:Z

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˈ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱי/ˆʾ;->ᵔᵢ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lⁱי/ˆʾ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lᵔⁱ/ˑﹳ;->ﹳٴ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᵔⁱ/ˑﹳ;->ﹳٴ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, Lⁱי/ˆʾ;->ﹳٴ:Lᵔⁱ/ˑﹳ;

    invoke-virtual {p0}, Lⁱי/ˆʾ;->ⁱˊ()I

    move-result v1

    invoke-virtual {v0, v1}, Lᵔⁱ/ˑﹳ;->ﹳٴ(I)V

    return-void
.end method

.method public final ⁱˊ()I
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱי/ˆʾ;->ᵔᵢ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱי/ʼˎ;

    iget v2, v2, Lⁱי/ʼˎ;->ⁱˊ:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
