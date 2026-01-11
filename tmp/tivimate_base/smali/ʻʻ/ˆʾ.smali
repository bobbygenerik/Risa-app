.class public final Lʻʻ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:J

.field public final ˈ:J

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʻʻ/ˆʾ;->ﹳٴ:I

    iput p2, p0, Lʻʻ/ˆʾ;->ⁱˊ:I

    iput-wide p3, p0, Lʻʻ/ˆʾ;->ʽ:J

    iput-wide p5, p0, Lʻʻ/ˆʾ;->ˈ:J

    return-void
.end method

.method public static ﹳٴ(Ljava/io/File;)Lʻʻ/ˆʾ;
    .locals 9

    .prologue
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance v2, Lʻʻ/ˆʾ;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-direct/range {v2 .. v8}, Lʻʻ/ˆʾ;-><init>(IIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lʻʻ/ˆʾ;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʻʻ/ˆʾ;

    iget v2, p0, Lʻʻ/ˆʾ;->ⁱˊ:I

    iget v3, p1, Lʻʻ/ˆʾ;->ⁱˊ:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lʻʻ/ˆʾ;->ʽ:J

    iget-wide v4, p1, Lʻʻ/ˆʾ;->ʽ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lʻʻ/ˆʾ;->ﹳٴ:I

    iget v3, p1, Lʻʻ/ˆʾ;->ﹳٴ:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lʻʻ/ˆʾ;->ˈ:J

    iget-wide v4, p1, Lʻʻ/ˆʾ;->ˈ:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lʻʻ/ˆʾ;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lʻʻ/ˆʾ;->ʽ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lʻʻ/ˆʾ;->ﹳٴ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lʻʻ/ˆʾ;->ˈ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final ⁱˊ(Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget p1, p0, Lʻʻ/ˆʾ;->ﹳٴ:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, Lʻʻ/ˆʾ;->ⁱˊ:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v1, p0, Lʻʻ/ˆʾ;->ʽ:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v1, p0, Lʻʻ/ˆʾ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
