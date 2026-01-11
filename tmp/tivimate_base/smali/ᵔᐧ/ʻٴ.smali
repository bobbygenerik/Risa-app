.class public final Lᵔᐧ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lᵔᐧ/יـ;

.field public final ʽ:Lˊᴵ/ﹳٴ;

.field public final ˆʾ:Lᵔᐧ/ʽﹳ;

.field public ˈ:J

.field public ˉʿ:Ljava/io/IOException;

.field public ˑﹳ:J

.field public final ٴﹶ:Lᵔᐧ/ʽﹳ;

.field public ᵎﹶ:Z

.field public final ᵔᵢ:Lᵔᐧ/ˏי;

.field public final ⁱˊ:Lᵔᐧ/ᵔʾ;

.field public final ﹳٴ:I

.field public ﾞʻ:I

.field public final ﾞᴵ:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(ILᵔᐧ/ᵔʾ;ZZLˎᵢ/ˉˆ;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    iput-object p2, p0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    new-instance v0, Lˊᴵ/ﹳٴ;

    invoke-direct {v0, p1}, Lˊᴵ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Lᵔᐧ/ʻٴ;->ʽ:Lˊᴵ/ﹳٴ;

    iget-object p1, p2, Lᵔᐧ/ᵔʾ;->ˊˋ:Lᵔᐧ/ᵢˏ;

    invoke-virtual {p1}, Lᵔᐧ/ᵢˏ;->ﹳٴ()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lᵔᐧ/ʻٴ;->ˑﹳ:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ʻٴ;->ﾞᴵ:Ljava/util/ArrayDeque;

    new-instance v0, Lᵔᐧ/ˏי;

    iget-object p2, p2, Lᵔᐧ/ᵔʾ;->ˋᵔ:Lᵔᐧ/ᵢˏ;

    invoke-virtual {p2}, Lᵔᐧ/ᵢˏ;->ﹳٴ()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, Lᵔᐧ/ˏי;-><init>(Lᵔᐧ/ʻٴ;JZ)V

    iput-object v0, p0, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    new-instance p2, Lᵔᐧ/יـ;

    invoke-direct {p2, p0, p3}, Lᵔᐧ/יـ;-><init>(Lᵔᐧ/ʻٴ;Z)V

    iput-object p2, p0, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    new-instance p2, Lᵔᐧ/ʽﹳ;

    invoke-direct {p2, p0}, Lᵔᐧ/ʽﹳ;-><init>(Lᵔᐧ/ʻٴ;)V

    iput-object p2, p0, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    new-instance p2, Lᵔᐧ/ʽﹳ;

    invoke-direct {p2, p0}, Lᵔᐧ/ʽﹳ;-><init>(Lᵔᐧ/ʻٴ;)V

    iput-object p2, p0, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ᵎﹶ()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ʼˎ(Lˎᵢ/ˉˆ;Z)V
    .locals 2

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ʻٴ;->ᵎﹶ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, ":status"

    invoke-virtual {p1, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ":method"

    invoke-virtual {p1, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lᵔᐧ/ʻٴ;->ᵎﹶ:Z

    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ﾞᴵ:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    iput-boolean v1, p1, Lᵔᐧ/ˏי;->ᴵˊ:Z

    :cond_2
    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ᵔᵢ()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_3

    iget-object p1, p0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget p2, p0, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    invoke-virtual {p1, p2}, Lᵔᐧ/ᵔʾ;->ﹳᐧ(I)Lᵔᐧ/ʻٴ;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final ʽ(ILjava/io/IOException;)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lᵔᐧ/ʻٴ;->ˈ(ILjava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget-object v0, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    invoke-virtual {v0, p2, p1}, Lᵔᐧ/ـˆ;->ˈٴ(II)V

    return-void
.end method

.method public final ˆʾ(I)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lᵔᐧ/ʻٴ;->ﾞʻ:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final ˈ(ILjava/io/IOException;)Z
    .locals 2

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput p1, p0, Lᵔᐧ/ʻٴ;->ﾞʻ:I

    iput-object p2, p0, Lᵔᐧ/ʻٴ;->ˉʿ:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    iget-boolean p1, p1, Lᵔᐧ/ˏי;->ᴵˊ:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    iget-boolean p1, p1, Lᵔᐧ/יـ;->ʾˋ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    iget-object p1, p0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget p2, p0, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    invoke-virtual {p1, p2}, Lᵔᐧ/ᵔʾ;->ﹳᐧ(I)Lᵔᐧ/ʻٴ;

    const/4 p1, 0x1

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final ˑﹳ(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lᵔᐧ/ʻٴ;->ˈ(ILjava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    invoke-virtual {v0, v1, p1}, Lᵔᐧ/ᵔʾ;->ᵎˊ(II)V

    return-void
.end method

.method public final ᵎﹶ()Z
    .locals 4

    .prologue
    iget v0, p0, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final ᵔᵢ()Z
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    iget-boolean v2, v0, Lᵔᐧ/ˏי;->ᴵˊ:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lᵔᐧ/ˏי;->ᴵᵔ:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    iget-boolean v2, v0, Lᵔᐧ/יـ;->ʾˋ:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lᵔᐧ/יـ;->ʽʽ:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lᵔᐧ/ʻٴ;->ᵎﹶ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    iget-boolean v1, v0, Lᵔᐧ/יـ;->ʽʽ:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lᵔᐧ/יـ;->ʾˋ:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ˉʿ:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v1

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(I)V

    :goto_0
    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    iget-boolean v1, v0, Lᵔᐧ/ˏי;->ᴵˊ:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lᵔᐧ/ˏי;->ᴵᵔ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    iget-boolean v1, v0, Lᵔᐧ/יـ;->ʾˋ:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lᵔᐧ/יـ;->ʽʽ:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lᵔᐧ/ʻٴ;->ᵔᵢ()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lᵔᐧ/ʻٴ;->ʽ(ILjava/io/IOException;)V

    return-void

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Lᵔᐧ/ᵔʾ;->ﹳᐧ(I)Lᵔᐧ/ʻٴ;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final ﾞᴵ()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lᵔᐧ/ʻٴ;->ﾞʻ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
