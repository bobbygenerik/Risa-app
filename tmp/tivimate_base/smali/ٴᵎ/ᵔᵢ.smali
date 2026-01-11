.class public final Lٴᵎ/ᵔᵢ;
.super Lˊᐧ/ˉʿ;
.source "SourceFile"


# instance fields
.field public ʽʽ:J

.field public ˈٴ:Z

.field public ˊʻ:Z

.field public final synthetic ٴᵢ:Lcom/bumptech/glide/ʼˎ;

.field public final ᴵˊ:J

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/ʼˎ;Lˊᐧ/ᴵˊ;J)V
    .locals 0

    .prologue
    iput-object p1, p0, Lٴᵎ/ᵔᵢ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-direct {p0, p2}, Lˊᐧ/ˉʿ;-><init>(Lˊᐧ/ᴵˊ;)V

    iput-wide p3, p0, Lٴᵎ/ᵔᵢ;->ᴵˊ:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lٴᵎ/ᵔᵢ;->ˈٴ:Z

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lٴᵎ/ᵔᵢ;->ʽ(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lٴᵎ/ᵔᵢ;->ˊʻ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴᵎ/ᵔᵢ;->ˊʻ:Z

    :try_start_0
    invoke-super {p0}, Lˊᐧ/ˉʿ;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lٴᵎ/ᵔᵢ;->ʽ(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lٴᵎ/ᵔᵢ;->ʽ(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final ʽ(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lٴᵎ/ᵔᵢ;->ᴵᵔ:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴᵎ/ᵔᵢ;->ᴵᵔ:Z

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lٴᵎ/ᵔᵢ;->ˈٴ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lٴᵎ/ᵔᵢ;->ˈٴ:Z

    :cond_1
    iget-object v0, p0, Lٴᵎ/ᵔᵢ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/bumptech/glide/ʼˎ;->ⁱˊ(Lcom/bumptech/glide/ʼˎ;Ljava/io/IOException;I)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 9

    .prologue
    iget-object v0, p0, Lٴᵎ/ᵔᵢ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    const-string v1, "expected "

    iget-boolean v2, p0, Lٴᵎ/ᵔᵢ;->ˊʻ:Z

    if-nez v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lˊᐧ/ˉʿ;->ʾˋ:Lˊᐧ/ᴵˊ;

    invoke-interface {v2, p1, p2, p3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide p1

    iget-boolean p3, p0, Lٴᵎ/ᵔᵢ;->ˈٴ:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lٴᵎ/ᵔᵢ;->ˈٴ:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    const/4 v4, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0, v4}, Lٴᵎ/ᵔᵢ;->ʽ(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v2

    :cond_1
    iget-wide v5, p0, Lٴᵎ/ᵔᵢ;->ʽʽ:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v5, p1

    iget-wide v7, p0, Lٴᵎ/ᵔᵢ;->ᴵˊ:J

    cmp-long p3, v7, v2

    if-eqz p3, :cond_3

    cmp-long p3, v5, v7

    if-gtz p3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-wide v5, p0, Lٴᵎ/ᵔᵢ;->ʽʽ:J

    iget-object p3, v0, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast p3, Lʽי/ˑﹳ;

    invoke-interface {p3}, Lʽי/ˑﹳ;->ˑﹳ()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, v4}, Lٴᵎ/ᵔᵢ;->ʽ(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-wide p1

    :goto_2
    invoke-virtual {p0, p1}, Lٴᵎ/ᵔᵢ;->ʽ(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
