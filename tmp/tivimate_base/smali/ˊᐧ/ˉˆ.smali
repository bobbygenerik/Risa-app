.class public final Lˊᐧ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ᴵˊ;


# instance fields
.field public final ʽʽ:Ljava/util/zip/Inflater;

.field public ʾˋ:B

.field public final ˈٴ:Lˊᐧ/ʼᐧ;

.field public final ᴵˊ:Lˊᐧ/ـˆ;

.field public final ᴵᵔ:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lˊᐧ/ᵔᵢ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˊᐧ/ـˆ;

    invoke-direct {v0, p1}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    iput-object v0, p0, Lˊᐧ/ˉˆ;->ᴵˊ:Lˊᐧ/ـˆ;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lˊᐧ/ˉˆ;->ʽʽ:Ljava/util/zip/Inflater;

    new-instance v1, Lˊᐧ/ʼᐧ;

    invoke-direct {v1, v0, p1}, Lˊᐧ/ʼᐧ;-><init>(Lˊᐧ/ـˆ;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lˊᐧ/ˉˆ;->ˈٴ:Lˊᐧ/ʼᐧ;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lˊᐧ/ˉˆ;->ᴵᵔ:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static ʽ(IILjava/lang/String;)V
    .locals 2

    .prologue
    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, ": actual 0x"

    invoke-static {p2, v1}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/bumptech/glide/ˈ;->ᵎⁱ(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {v1, p1}, Lﹶˑ/ˆʾ;->ˑ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " != expected 0x"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/bumptech/glide/ˈ;->ᵎⁱ(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lﹶˑ/ˆʾ;->ˑ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lˊᐧ/ˉˆ;->ˈٴ:Lˊᐧ/ʼᐧ;

    invoke-virtual {v0}, Lˊᐧ/ʼᐧ;->close()V

    return-void
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    iget-object v0, p0, Lˊᐧ/ˉˆ;->ᴵˊ:Lˊᐧ/ـˆ;

    iget-object v0, v0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    invoke-interface {v0}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v0

    return-object v0
.end method

.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 23

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-ltz v3, :cond_12

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    iget-byte v1, v0, Lˊᐧ/ˉˆ;->ʾˋ:B

    iget-object v9, v0, Lˊᐧ/ˉˆ;->ᴵᵔ:Ljava/util/zip/CRC32;

    const/4 v10, 0x1

    iget-object v11, v0, Lˊᐧ/ˉˆ;->ᴵˊ:Lˊᐧ/ـˆ;

    const-wide/16 v17, -0x1

    if-nez v1, :cond_d

    const-wide/16 v1, 0xa

    invoke-virtual {v11, v1, v2}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    iget-object v1, v11, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v19

    shr-int/lit8 v2, v19, 0x1

    and-int/2addr v2, v10

    const/4 v12, 0x0

    if-ne v2, v10, :cond_1

    move/from16 v20, v10

    goto :goto_0

    :cond_1
    move/from16 v20, v12

    :goto_0
    if-eqz v20, :cond_2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ˉˆ;->ᵎﹶ(Lˊᐧ/ﾞᴵ;JJ)V

    :cond_2
    invoke-virtual {v11}, Lˊᐧ/ـˆ;->readShort()S

    move-result v0

    const-string v2, "ID1ID2"

    const/16 v3, 0x1f8b

    invoke-static {v3, v0, v2}, Lˊᐧ/ˉˆ;->ʽ(IILjava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Lˊᐧ/ـˆ;->skip(J)V

    shr-int/lit8 v0, v19, 0x2

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_5

    const-wide/16 v2, 0x2

    invoke-virtual {v11, v2, v3}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    if-eqz v20, :cond_3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ˉˆ;->ᵎﹶ(Lˊᐧ/ﾞᴵ;JJ)V

    :cond_3
    invoke-virtual {v1}, Lˊᐧ/ﾞᴵ;->ˆﾞ()S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v11, v4, v5}, Lˊᐧ/ـˆ;->ᐧﾞ(J)V

    if-eqz v20, :cond_4

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ˉˆ;->ᵎﹶ(Lˊᐧ/ﾞᴵ;JJ)V

    :cond_4
    invoke-virtual {v11, v4, v5}, Lˊᐧ/ـˆ;->skip(J)V

    :cond_5
    shr-int/lit8 v0, v19, 0x3

    and-int/2addr v0, v10

    const-wide/16 v21, 0x1

    if-ne v0, v10, :cond_8

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    invoke-virtual/range {v11 .. v16}, Lˊᐧ/ـˆ;->ʽ(BJJ)J

    move-result-wide v13

    cmp-long v0, v13, v17

    if-eqz v0, :cond_7

    if-eqz v20, :cond_6

    const-wide/16 v2, 0x0

    add-long v4, v13, v21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ˉˆ;->ᵎﹶ(Lˊᐧ/ﾞᴵ;JJ)V

    :cond_6
    add-long v13, v13, v21

    invoke-virtual {v11, v13, v14}, Lˊᐧ/ـˆ;->skip(J)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    :goto_1
    shr-int/lit8 v0, v19, 0x4

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_b

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    invoke-virtual/range {v11 .. v16}, Lˊᐧ/ـˆ;->ʽ(BJJ)J

    move-result-wide v12

    cmp-long v0, v12, v17

    if-eqz v0, :cond_a

    if-eqz v20, :cond_9

    const-wide/16 v2, 0x0

    add-long v4, v12, v21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ˉˆ;->ᵎﹶ(Lˊᐧ/ﾞᴵ;JJ)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    :goto_2
    add-long v12, v12, v21

    invoke-virtual {v11, v12, v13}, Lˊᐧ/ـˆ;->skip(J)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_b
    move-object/from16 v0, p0

    :goto_3
    if-eqz v20, :cond_c

    invoke-virtual {v11}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    const-string v3, "FHCRC"

    invoke-static {v1, v2, v3}, Lˊᐧ/ˉˆ;->ʽ(IILjava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    :cond_c
    iput-byte v10, v0, Lˊᐧ/ˉˆ;->ʾˋ:B

    :cond_d
    iget-byte v1, v0, Lˊᐧ/ˉˆ;->ʾˋ:B

    const/4 v12, 0x2

    if-ne v1, v10, :cond_f

    iget-wide v2, v6, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    iget-object v1, v0, Lˊᐧ/ˉˆ;->ˈٴ:Lˊᐧ/ʼᐧ;

    invoke-virtual {v1, v6, v7, v8}, Lˊᐧ/ʼᐧ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_e

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lˊᐧ/ˉˆ;->ᵎﹶ(Lˊᐧ/ﾞᴵ;JJ)V

    return-wide v4

    :cond_e
    iput-byte v12, v0, Lˊᐧ/ˉˆ;->ʾˋ:B

    :cond_f
    iget-byte v1, v0, Lˊᐧ/ˉˆ;->ʾˋ:B

    if-ne v1, v12, :cond_11

    invoke-virtual {v11}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "CRC"

    invoke-static {v1, v2, v3}, Lˊᐧ/ˉˆ;->ʽ(IILjava/lang/String;)V

    invoke-virtual {v11}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v1

    iget-object v2, v0, Lˊᐧ/ˉˆ;->ʽʽ:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "ISIZE"

    invoke-static {v1, v2, v3}, Lˊᐧ/ˉˆ;->ʽ(IILjava/lang/String;)V

    const/4 v1, 0x3

    iput-byte v1, v0, Lˊᐧ/ˉˆ;->ʾˋ:B

    invoke-virtual {v11}, Lˊᐧ/ـˆ;->ᵎⁱ()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "gzip finished without exhausting source"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_4
    return-wide v17

    :cond_12
    const-string v1, "byteCount < 0: "

    invoke-static {v1, v7, v8}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final ᵎﹶ(Lˊᐧ/ﾞᴵ;JJ)V
    .locals 4

    .prologue
    iget-object p1, p1, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    :goto_0
    iget v0, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v1, p1, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lˊᐧ/ʾᵎ;->ʽ:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lˊᐧ/ˉˆ;->ᴵᵔ:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method
