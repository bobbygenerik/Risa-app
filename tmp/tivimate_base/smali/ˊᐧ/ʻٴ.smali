.class public final Lˊᐧ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ᵎﹶ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lˊᐧ/ʾˋ;

.field public final ᴵˊ:Lˊᐧ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lˊᐧ/ʾˋ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ʻٴ;->ʾˋ:Lˊᐧ/ʾˋ;

    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˊᐧ/ʻٴ;->ʾˋ:Lˊᐧ/ʾˋ;

    iget-boolean v1, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, Lˊᐧ/ʾˋ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, Lˊᐧ/ʾˋ;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method public final flush()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v1, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object v4, p0, Lˊᐧ/ʻٴ;->ʾˋ:Lˊᐧ/ʾˋ;

    if-lez v3, :cond_0

    invoke-interface {v4, v0, v1, v2}, Lˊᐧ/ʾˋ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    :cond_0
    invoke-interface {v4}, Lˊᐧ/ʾˋ;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˊᐧ/ʻٴ;->ʾˋ:Lˊᐧ/ʾˋ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)Lˊᐧ/ᵎﹶ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    iget-object v2, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v2, p1, v0, v1}, Lˊᐧ/ﾞᴵ;->write([BII)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeByte(I)Lˊᐧ/ᵎﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeInt(I)Lˊᐧ/ᵎﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ˎᐧ(I)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeShort(I)Lˊᐧ/ᵎﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->יﹳ(I)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʼᐧ(J)Lˊᐧ/ᵎﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1, p2}, Lˊᐧ/ﾞᴵ;->ʼـ(J)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ()Lˊᐧ/ᵎﹶ;
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ʾˋ()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lˊᐧ/ʻٴ;->ʾˋ:Lˊᐧ/ʾˋ;

    invoke-interface {v3, v0, v1, v2}, Lˊᐧ/ʾˋ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʾᵎ(IILjava/lang/String;)Lˊᐧ/ᵎﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->ʽⁱ(IILjava/lang/String;)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʿ(I[B)Lˊᐧ/ᵎﹶ;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lˊᐧ/ﾞᴵ;->write([BII)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈ()Lˊᐧ/ﾞᴵ;
    .locals 1

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    return-object v0
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ʾˋ:Lˊᐧ/ʾˋ;

    invoke-interface {v0}, Lˊᐧ/ʾˋ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v0

    return-object v0
.end method

.method public final ـﹶ()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lʿᵢ/ʻˋ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lʿᵢ/ʻˋ;-><init>(Lˊᐧ/ᵎﹶ;I)V

    return-object v0
.end method

.method public final ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ʾﾞ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵎﹶ(Lˊᐧ/ᴵˊ;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final ᵔי(Lˊᐧ/ﾞᴵ;J)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﾞʻ(Lˊᐧ/ʼˎ;)Lˊᐧ/ᵎﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    invoke-virtual {p0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
