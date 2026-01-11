.class public final Lᵔᐧ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ˊʻ:Ljava/util/logging/Logger;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Lˊᐧ/ᵎﹶ;

.field public ˈٴ:Z

.field public final ᴵˊ:Lˊᐧ/ﾞᴵ;

.field public final ᴵᵔ:Lᵔᐧ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lᵔᐧ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ـˆ;->ˊʻ:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ᵎﹶ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    const/16 v0, 0x4000

    iput v0, p0, Lᵔᐧ/ـˆ;->ʽʽ:I

    new-instance v0, Lᵔᐧ/ˈ;

    invoke-direct {v0, p1}, Lᵔᐧ/ˈ;-><init>(Lˊᐧ/ﾞᴵ;)V

    iput-object v0, p0, Lᵔᐧ/ـˆ;->ᴵᵔ:Lᵔᐧ/ˈ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    iget-object v0, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0}, Lˊᐧ/ʾˋ;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final ʽ(Lᵔᐧ/ᵢˏ;)V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_7

    iget v0, p0, Lᵔᐧ/ـˆ;->ʽʽ:I

    iget v1, p1, Lᵔᐧ/ᵢˏ;->ﹳٴ:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    iget-object v0, p1, Lᵔᐧ/ᵢˏ;->ⁱˊ:[I

    const/4 v2, 0x5

    aget v0, v0, v2

    :cond_0
    iput v0, p0, Lᵔᐧ/ـˆ;->ʽʽ:I

    and-int/lit8 v0, v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lᵔᐧ/ᵢˏ;->ⁱˊ:[I

    aget v0, v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v4, 0x0

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lᵔᐧ/ـˆ;->ᴵᵔ:Lᵔᐧ/ˈ;

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object p1, p1, Lᵔᐧ/ᵢˏ;->ⁱˊ:[I

    aget v2, p1, v3

    :cond_2
    const/16 p1, 0x4000

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, v0, Lᵔᐧ/ˈ;->ˈ:I

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v1, :cond_4

    iget v1, v0, Lᵔᐧ/ˈ;->ⁱˊ:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lᵔᐧ/ˈ;->ⁱˊ:I

    :cond_4
    iput-boolean v3, v0, Lᵔᐧ/ˈ;->ʽ:Z

    iput p1, v0, Lᵔᐧ/ˈ;->ˈ:I

    iget v1, v0, Lᵔᐧ/ˈ;->ᵔᵢ:I

    if-ge p1, v1, :cond_6

    if-nez p1, :cond_5

    iget-object p1, v0, Lᵔᐧ/ˈ;->ˑﹳ:[Lᵔᐧ/ⁱˊ;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p1, v0, Lᵔᐧ/ˈ;->ˑﹳ:[Lᵔᐧ/ⁱˊ;

    array-length p1, p1

    sub-int/2addr p1, v3

    iput p1, v0, Lᵔᐧ/ˈ;->ﾞᴵ:I

    iput v4, v0, Lᵔᐧ/ˈ;->ᵎﹶ:I

    iput v4, v0, Lᵔᐧ/ˈ;->ᵔᵢ:I

    goto :goto_1

    :cond_5
    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lᵔᐧ/ˈ;->ﹳٴ(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {p0, v4, v4, p1, v3}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final ʾˋ(IIZ)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p3}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    iget-object p3, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p3, p1}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1, p2}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final ˈʿ(IJ)V
    .locals 4

    .prologue
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    sget-object v0, Lᵔᐧ/ـˆ;->ˊʻ:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, v2, p2, p3, v3}, Lᵔᐧ/ﾞᴵ;->ʽ(IIJZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v2, v0, v3}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final ˈٴ(II)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0, v1}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-static {p2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p2

    invoke-interface {p1, p2}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final ˉˆ(IIII)V
    .locals 2

    .prologue
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v1, Lᵔᐧ/ـˆ;->ˊʻ:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3, p4}, Lᵔᐧ/ﾞᴵ;->ⁱˊ(ZIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lᵔᐧ/ـˆ;->ʽʽ:I

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    sget-object v0, Lⁱᐧ/ʽ;->ﹳٴ:[B

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v1, v0}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {v1, v0}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    and-int/lit16 p2, p2, 0xff

    invoke-interface {v1, p2}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    and-int/lit16 p2, p3, 0xff

    invoke-interface {v1, p2}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    and-int/lit16 p2, p4, 0xff

    invoke-interface {v1, p2}, Lˊᐧ/ᵎﹶ;->writeByte(I)Lˊᐧ/ᵎﹶ;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-interface {v1, p1}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    return-void

    :cond_1
    const-string p2, "reserved bit set: "

    invoke-static {p1, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "FRAME_SIZE_ERROR length > "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lᵔᐧ/ـˆ;->ʽʽ:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ـˆ(ZILjava/util/ArrayList;)V
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lᵔᐧ/ـˆ;->ᴵᵔ:Lᵔᐧ/ˈ;

    invoke-virtual {v0, p3}, Lᵔᐧ/ˈ;->ˈ(Ljava/util/ArrayList;)V

    iget-object p3, p0, Lᵔᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v0, p3, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    iget p3, p0, Lᵔᐧ/ـˆ;->ʽʽ:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long p3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez p3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v6, v6, 0x1

    :cond_1
    long-to-int p1, v2

    const/4 v7, 0x1

    invoke-virtual {p0, p2, p1, v7, v6}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    iget-object v6, p0, Lᵔᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-interface {p1, v6, v2, v3}, Lˊᐧ/ʾˋ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    if-lez p3, :cond_3

    sub-long/2addr v0, v2

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    iget p1, p0, Lᵔᐧ/ـˆ;->ʽʽ:I

    int-to-long v6, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-int p1, v6

    cmp-long p3, v0, v2

    if-nez p3, :cond_2

    move p3, v5

    goto :goto_2

    :cond_2
    move p3, v4

    :goto_2
    const/16 v2, 0x9

    invoke-virtual {p0, p2, p1, v2, p3}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    iget-object p3, p0, Lᵔᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-interface {p1, p3, v6, v7}, Lˊᐧ/ʾˋ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final ᵎˊ(Lᵔᐧ/ᵢˏ;)V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_3

    iget v0, p1, Lᵔᐧ/ᵢˏ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    move v0, v2

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    shl-int v3, v1, v0

    iget v4, p1, Lᵔᐧ/ᵢˏ;->ﹳٴ:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v1, v0}, Lˊᐧ/ᵎﹶ;->writeShort(I)Lˊᐧ/ᵎﹶ;

    iget-object v1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    iget-object v3, p1, Lᵔᐧ/ᵢˏ;->ⁱˊ:[I

    aget v3, v3, v0

    invoke-interface {v1, v3}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final ᵎﹶ(ZILˊᐧ/ﾞᴵ;I)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p4, v0, p1}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    if-lez p4, :cond_0

    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lˊᐧ/ʾˋ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ﹳᐧ([BII)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v0, :cond_2

    invoke-static {p3}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lᵔᐧ/ـˆ;->ˉˆ(IIII)V

    iget-object v0, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0, p2}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    iget-object p2, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-static {p3}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p3

    invoke-interface {p2, p3}, Lˊᐧ/ᵎﹶ;->writeInt(I)Lˊᐧ/ᵎﹶ;

    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p2, p1}, Lˊᐧ/ᵎﹶ;->write([B)Lˊᐧ/ᵎﹶ;

    :goto_0
    iget-object p1, p0, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {p1}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method
