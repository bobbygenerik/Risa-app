.class public abstract Lʿʼ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final ˈʿ:Lᵎˉ/ⁱˊ;

.field public static final ᵔٴ:Lٴﾞ/ˆʾ;


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:Lˎᴵ/ﹳٴ;

.field public final ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ˈٴ:Lיˆ/ʽ;

.field public final ˉٴ:I

.field public final ˊʻ:I

.field public final ٴʼ:I

.field public final ٴᵢ:J

.field public final ᴵˊ:Lʾⁱ/ˈ;

.field public final ᴵᵔ:Lʼﹳ/ʽ;

.field public final ᵎˊ:J

.field public final ᵎⁱ:J

.field public final ᵔי:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Lʼﹳ/ᵔᵢ;

    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v2, v1}, Lʼﹳ/ᵔᵢ;-><init>([B[B)V

    new-instance v0, Lٴﾞ/ˆʾ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v0, Lʿʼ/ﾞʻ;->ᵔٴ:Lٴﾞ/ˆʾ;

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʿʼ/ﾞʻ;->ˈʿ:Lᵎˉ/ⁱˊ;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lˎᴵ/ﹳٴ;Lʾⁱ/ˈ;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lʿʼ/ﾞʻ;->ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lʿʼ/ﾞʻ;->ʾˋ:Lˎᴵ/ﹳٴ;

    iput-object p2, p0, Lʿʼ/ﾞʻ;->ᴵˊ:Lʾⁱ/ˈ;

    iget-object p1, p2, Lʾⁱ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lיˆ/ʽ;

    iput-object p1, p0, Lʿʼ/ﾞʻ;->ˈٴ:Lיˆ/ʽ;

    iget-object v0, p2, Lʾⁱ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lٴٴ/ⁱˊ;

    iget-object v1, v0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v1, v1, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/יـ;

    iget-object v2, v1, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lʼﹳ/ʽ;

    iput-object v2, p0, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-object v0, v0, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget v2, v0, Lˎﹳ/ⁱˊ;->ᵔᵢ:I

    iget v3, v1, Lʽᴵ/יـ;->ʽ:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lʿʼ/ﾞʻ;->ˊʻ:I

    iget-wide v2, v0, Lˎﹳ/ⁱˊ;->ʼˎ:J

    iput-wide v2, p0, Lʿʼ/ﾞʻ;->ٴᵢ:J

    iget v2, v0, Lˎﹳ/ⁱˊ;->ˆʾ:I

    iget v3, v1, Lʽᴵ/יـ;->ˈ:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lʿʼ/ﾞʻ;->ˉٴ:I

    iget-wide v2, v0, Lˎﹳ/ⁱˊ;->ٴﹶ:J

    iput-wide v2, p0, Lʿʼ/ﾞʻ;->ᵎⁱ:J

    iget v2, v0, Lˎﹳ/ⁱˊ;->ﾞʻ:I

    iget v1, v1, Lʽᴵ/יـ;->ⁱˊ:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lʿʼ/ﾞʻ;->ٴʼ:I

    iget-wide v0, v0, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    iput-wide v0, p0, Lʿʼ/ﾞʻ;->ᵎˊ:J

    iget-wide v0, p1, Lיˆ/ʽ;->ʾˋ:J

    iput-wide v0, p0, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide p1, p2, Lʾⁱ/ˈ;->ᴵˊ:J

    iput-wide p1, p0, Lʿʼ/ﾞʻ;->ʽʽ:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 13

    .prologue
    iget-object v0, p0, Lʿʼ/ﾞʻ;->ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lʿʼ/ﾞʻ;->ᴵˊ:Lʾⁱ/ˈ;

    iget-object v1, v0, Lʾⁱ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Lᵎˑ/ⁱˊ;

    iget-object v2, v0, Lʾⁱ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lٴٴ/ⁱˊ;

    iget-object v3, v0, Lʾⁱ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lיˆ/ʽ;

    const-string v4, "Error closing connection to "

    :try_start_0
    new-instance v5, Lˊʾ/ⁱˊ;

    iget-object v6, v2, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v6, v6, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v6, Lʽᴵ/יـ;

    iget-object v6, v6, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lʼﹳ/ʽ;

    iget-wide v9, v3, Lיˆ/ʽ;->ʾˋ:J

    iget-wide v11, v0, Lʾⁱ/ˈ;->ᴵˊ:J

    sget-object v8, Lʼﹳ/ﾞʻ;->ˊʻ:Lʼﹳ/ﾞʻ;

    const/4 v6, 0x4

    invoke-direct/range {v5 .. v12}, Lˊʾ/ⁱˊ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    invoke-virtual {v3, v5}, Lיˆ/ʽ;->ـˆ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object v5

    iget-object v2, v2, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget-wide v6, v2, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    invoke-static {v5, v6, v7}, Lˈˆ/ﾞᴵ;->ﹳᐧ(Lˋٴ/ⁱˊ;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʼﹳ/ˉˆ;

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v5

    check-cast v5, Lʼﹳ/ٴﹶ;

    iget-wide v5, v5, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v5, v6}, Lٴˎ/ﹳٴ;->ﹳٴ(J)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    new-instance v0, Lᵎˑ/ʽ;

    iget-wide v2, v3, Lיˆ/ʽ;->ʾˋ:J

    invoke-direct {v0, v2, v3}, Lᵎˑ/ʽ;-><init>(J)V

    iget-object v1, v1, Lᵎˑ/ⁱˊ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    return-void

    :cond_0
    :try_start_1
    new-instance v5, Lcom/hierynomus/mssmb2/SMBApiException;

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v2

    check-cast v2, Lʼﹳ/ٴﹶ;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˎᴵ/ﹳٴ;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    new-instance v2, Lᵎˑ/ʽ;

    iget-wide v3, v3, Lיˆ/ʽ;->ʾˋ:J

    invoke-direct {v2, v3, v4}, Lᵎˑ/ʽ;-><init>(J)V

    iget-object v1, v1, Lᵎˑ/ⁱˊ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v2}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    throw v0

    :cond_1
    return-void
.end method

.method public final ʽ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;
    .locals 2

    .prologue
    iget-object v0, p0, Lʿʼ/ﾞʻ;->ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lʿʼ/ﾞʻ;->ˈٴ:Lיˆ/ʽ;

    invoke-virtual {v0, p1}, Lיˆ/ʽ;->ـˆ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " has already been closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵎﹶ(Lʼﹳ/ˉˆ;Ljava/lang/String;Ljava/lang/Object;Lʿʼ/ˉʿ;J)Lʼﹳ/ˉˆ;
    .locals 2

    .prologue
    invoke-virtual {p0, p1}, Lʿʼ/ﾞʻ;->ʽ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    invoke-static {p1, p5, p6}, Lˈˆ/ﾞᴵ;->ﹳᐧ(Lˋٴ/ⁱˊ;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼﹳ/ˉˆ;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    sget-object p5, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;
    :try_end_0
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p1, Lˋٴ/ⁱˊ;->ʾˋ:Lˋٴ/ˈ;

    invoke-virtual {p1}, Lˋٴ/ˈ;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    check-cast p1, Lʼﹳ/ˉˆ;
    :try_end_2
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object p5

    check-cast p5, Lʼﹳ/ٴﹶ;

    iget-wide p5, p5, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-interface {p4, p5, p6}, Lʿʼ/ˉʿ;->ﾞᴵ(J)Z

    move-result p4

    if-eqz p4, :cond_1

    return-object p1

    :cond_1
    new-instance p4, Lcom/hierynomus/mssmb2/SMBApiException;

    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object p1

    check-cast p1, Lʼﹳ/ٴﹶ;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed for "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p1, p2}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw p4

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {p5, p1}, Lᵎˉ/ⁱˊ;->ᵔʾ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p5, p1}, Lᵎˉ/ⁱˊ;->ᵔʾ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
    :try_end_3
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    new-instance p2, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
