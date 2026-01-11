.class public final Lˊٴ/ˆʾ;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:J

.field public ᴵˊ:Ljava/io/OutputStream;


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lˊٴ/ˆʾ;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lˊٴ/ˆʾ;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˊٴ/ˆʾ;->ʽʽ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊٴ/ˆʾ;->ᴵˊ:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lˊٴ/ˆʾ;->ʾˋ:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lˊٴ/ˆʾ;->ʾˋ:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ZipEntryOutputStream is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
