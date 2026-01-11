.class public final Lˊᐧ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ᵔᵢ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lˊᐧ/ᴵˊ;

.field public final ᴵˊ:Lˊᐧ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lˊᐧ/ᴵˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    iget-object v0, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ـˆ()V

    :cond_0
    return-void
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    .prologue
    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v1, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->readByte()B

    move-result v0

    return v0
.end method

.method public final readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->readInt()I

    move-result v0

    return v0
.end method

.method public final readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->readShort()S

    move-result v0

    return v0
.end method

.method public final request(J)Z
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v1, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget-object v1, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "byteCount < 0: "

    invoke-static {v0, p1, p2}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final skip(J)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v3, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-wide v0, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lˊᐧ/ﾞᴵ;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʻˋ(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    iget-object v1, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v1, v0}, Lˊᐧ/ﾞᴵ;->י(Lˊᐧ/ᴵˊ;)J

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-virtual {v1, v2, v3, p1}, Lˊᐧ/ﾞᴵ;->ˊᵔ(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ʽ(BJJ)J
    .locals 9

    .prologue
    iget-boolean p2, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    move-wide v3, p2

    :goto_0
    cmp-long p2, v3, p4

    const-wide/16 v7, -0x1

    if-gez p2, :cond_2

    iget-object v1, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    move v2, p1

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lˊᐧ/ﾞᴵ;->ˈʿ(BJJ)J

    move-result-wide p1

    cmp-long p3, p1, v7

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    iget-wide p1, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long p3, p1, v5

    if-gez p3, :cond_2

    iget-object p3, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 p4, 0x2000

    invoke-interface {p3, v1, p4, p5}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide p3

    cmp-long p3, p3, v7

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move p1, v2

    move-wide p4, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    move-wide v5, p4

    const-string p1, "fromIndex=0 toIndex="

    invoke-static {p1, v5, v6}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˆﾞ()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ˆﾞ()S

    move-result v0

    return v0
.end method

.method public final ˈ()Lˊᐧ/ﾞᴵ;
    .locals 1

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    return-object v0
.end method

.method public final ˉʿ(J)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1, p2, v1}, Lˊᐧ/ﾞᴵ;->ˊᵔ(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ˊʻ(Lˊᐧ/ʼˎ;)J
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v2

    invoke-static {p0, p1, v2, v0, v1}, Lⁱٴ/ⁱˊ;->ʽ(Lˊᐧ/ـˆ;Lˊᐧ/ʼˎ;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˊˋ(J)Ljava/lang/String;
    .locals 18

    .prologue
    move-wide/from16 v6, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    const-wide/16 v10, 0x1

    if-nez v0, :cond_0

    move-wide v4, v8

    goto :goto_0

    :cond_0
    add-long v0, v6, v10

    move-wide v4, v0

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ـˆ;->ʽ(BJJ)J

    move-result-wide v1

    const-wide/16 v12, -0x1

    cmp-long v3, v1, v12

    iget-object v12, v0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    if-eqz v3, :cond_1

    invoke-static {v12, v1, v2}, Lⁱٴ/ﹳٴ;->ʽ(Lˊᐧ/ﾞᴵ;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    invoke-virtual {v0, v4, v5}, Lˊᐧ/ـˆ;->request(J)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-long v1, v4, v10

    invoke-virtual {v12, v1, v2}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    add-long v1, v4, v10

    invoke-virtual {v0, v1, v2}, Lˊᐧ/ـˆ;->request(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v12, v4, v5}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-static {v12, v4, v5}, Lⁱٴ/ﹳٴ;->ʽ(Lˊᐧ/ﾞᴵ;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v13, Lˊᐧ/ﾞᴵ;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v12, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const/16 v3, 0x20

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v17}, Lˊᐧ/ﾞᴵ;->ˈٴ(Lˊᐧ/ﾞᴵ;JJ)V

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v12, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-virtual {v13, v3, v4}, Lˊᐧ/ﾞᴵ;->יـ(J)Lˊᐧ/ʼˎ;

    move-result-object v3

    invoke-virtual {v3}, Lˊᐧ/ʼˎ;->ˈ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2026

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v0, p0

    const-string v1, "limit < 0: "

    invoke-static {v1, v6, v7}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final ˏי(Lˊᐧ/ʼˎ;)Z
    .locals 4

    .prologue
    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    iget-boolean v1, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v1, :cond_4

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v1

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lⁱٴ/ⁱˊ;->ʽ(Lˊᐧ/ـˆ;Lˊᐧ/ʼˎ;IJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    iget-object v0, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    invoke-interface {v0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v0

    return-object v0
.end method

.method public final יـ(J)Lˊᐧ/ʼˎ;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1, p2}, Lˊᐧ/ﾞᴵ;->יـ(J)Lˊᐧ/ʼˎ;

    move-result-object p1

    return-object p1
.end method

.method public final ـˏ(Lˊᐧ/ˏי;)I
    .locals 6

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-static {v1, p1, v0}, Lⁱٴ/ﹳٴ;->ˈ(Lˊᐧ/ﾞᴵ;Lˊᐧ/ˏי;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_2

    iget-object p1, p1, Lˊᐧ/ˏי;->ʾˋ:[Lˊᐧ/ʼˎ;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lˊᐧ/ﾞᴵ;->skip(J)V

    return v0

    :cond_1
    iget-object v0, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v4, 0x2000

    invoke-interface {v0, v1, v4, v5}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    :cond_2
    return v3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ٴᵢ()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ٴᵢ()I

    move-result v0

    return v0
.end method

.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-boolean v3, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v4, v3, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v1, 0x2000

    invoke-interface {v0, v3, v1, v2}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    return-wide v4

    :cond_1
    iget-wide v0, v3, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide p1

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "byteCount < 0: "

    invoke-static {p1, p2, p3}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ᐧﾞ(J)V
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lˊᐧ/ـˆ;->request(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final ᴵᵔ()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ـˆ;->ˊˋ(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ᵎʻ()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lˊᐧ/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lˊᐧ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final ᵎⁱ()Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ᵎⁱ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎﹶ()J
    .locals 23

    .prologue
    move-object/from16 v0, p0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v1, v0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-object v6, v1, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    iget v7, v6, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget v8, v6, Lˊᐧ/ʾᵎ;->ʽ:I

    sub-int v9, v8, v7

    int-to-long v9, v9

    cmp-long v9, v9, v4

    const/16 v12, 0x38

    const/16 v14, 0x20

    const-wide/16 v15, 0xff

    if-gez v9, :cond_0

    invoke-virtual {v1}, Lˊᐧ/ﾞᴵ;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    shl-long/2addr v2, v14

    invoke-virtual {v1}, Lˊᐧ/ﾞᴵ;->readInt()I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    move/from16 v22, v12

    const/16 v12, 0x8

    const/16 v17, 0x28

    const/16 v21, 0x18

    goto :goto_1

    :cond_0
    iget-object v9, v6, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    add-int/lit8 v17, v7, 0x1

    move-wide/from16 v18, v4

    aget-byte v4, v9, v7

    int-to-long v4, v4

    and-long/2addr v4, v15

    shl-long/2addr v4, v12

    add-int/lit8 v20, v7, 0x2

    const/16 v21, 0x18

    aget-byte v10, v9, v17

    move/from16 v22, v12

    const/16 v17, 0x28

    int-to-long v11, v10

    and-long/2addr v11, v15

    const/16 v10, 0x30

    shl-long v10, v11, v10

    or-long/2addr v4, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v11, v9, v20

    int-to-long v11, v11

    and-long/2addr v11, v15

    shl-long v11, v11, v17

    or-long/2addr v4, v11

    add-int/lit8 v11, v7, 0x4

    aget-byte v10, v9, v10

    move/from16 v20, v14

    const/16 v12, 0x8

    int-to-long v13, v10

    and-long/2addr v13, v15

    shl-long v13, v13, v20

    or-long/2addr v4, v13

    add-int/lit8 v10, v7, 0x5

    aget-byte v11, v9, v11

    int-to-long v13, v11

    and-long/2addr v13, v15

    shl-long v13, v13, v21

    or-long/2addr v4, v13

    add-int/lit8 v11, v7, 0x6

    aget-byte v10, v9, v10

    int-to-long v13, v10

    and-long/2addr v13, v15

    const/16 v10, 0x10

    shl-long/2addr v13, v10

    or-long/2addr v4, v13

    add-int/lit8 v10, v7, 0x7

    aget-byte v11, v9, v11

    int-to-long v13, v11

    and-long/2addr v13, v15

    shl-long/2addr v13, v12

    or-long/2addr v4, v13

    add-int/2addr v7, v12

    aget-byte v9, v9, v10

    int-to-long v9, v9

    and-long/2addr v9, v15

    or-long/2addr v4, v9

    sub-long v2, v2, v18

    iput-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Lˊᐧ/ʾᵎ;->ﹳٴ()Lˊᐧ/ʾᵎ;

    move-result-object v2

    iput-object v2, v1, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    invoke-static {v6}, Lˊᐧ/ʼʼ;->ﹳٴ(Lˊᐧ/ʾᵎ;)V

    :goto_0
    move-wide v2, v4

    goto :goto_1

    :cond_1
    iput v7, v6, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    goto :goto_0

    :goto_1
    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v4, v2

    ushr-long v4, v4, v22

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v6, v2

    ushr-long v6, v6, v17

    or-long/2addr v4, v6

    const-wide v6, 0xff0000000000L

    and-long/2addr v6, v2

    ushr-long v6, v6, v21

    or-long/2addr v4, v6

    const-wide v6, 0xff00000000L

    and-long/2addr v6, v2

    ushr-long/2addr v6, v12

    or-long/2addr v4, v6

    const-wide v6, 0xff000000L

    and-long/2addr v6, v2

    shl-long/2addr v6, v12

    or-long/2addr v4, v6

    const-wide/32 v6, 0xff0000

    and-long/2addr v6, v2

    shl-long v6, v6, v21

    or-long/2addr v4, v6

    const-wide/32 v6, 0xff00

    and-long/2addr v6, v2

    shl-long v6, v6, v17

    or-long/2addr v4, v6

    and-long/2addr v2, v15

    shl-long v1, v2, v22

    or-long/2addr v1, v4

    return-wide v1

    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final ᵔʾ(Lˊᐧ/ʼˎ;)J
    .locals 10

    .prologue
    iget-boolean v0, p0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v2, p1, v0, v1}, Lˊᐧ/ﾞᴵ;->ᴵˑ(Lˊᐧ/ʼˎ;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    return-wide v3

    :cond_0
    iget-wide v3, v2, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    iget-object v7, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v8, 0x2000

    invoke-interface {v7, v2, v8, v9}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_1

    return-wide v5

    :cond_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔٴ()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/16 v1, 0xa

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ـˆ;->ʽ(BJJ)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    iget-object v4, v0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    if-nez v3, :cond_1

    iget-wide v1, v4, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lˊᐧ/ـˆ;->ˉʿ(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-static {v4, v1, v2}, Lⁱٴ/ﹳٴ;->ʽ(Lˊᐧ/ﾞᴵ;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final ᵢˏ(Lˊᐧ/ﾞᴵ;)J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v5, 0x2000

    iget-object v7, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-interface {v4, v7, v5, v6}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Lˊᐧ/ﾞᴵ;->ʾˋ()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lˊᐧ/ﾞᴵ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lˊᐧ/ﾞᴵ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    :cond_2
    return-wide v2
.end method

.method public final ﹳﹳ()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lˊᐧ/ـˆ;->request(J)Z

    move-result v2

    iget-object v3, p0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x10

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ʽ(I)V

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lˊᐧ/ﾞᴵ;->ﹳﹳ()J

    move-result-wide v0

    return-wide v0
.end method
