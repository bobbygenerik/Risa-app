.class public final Lٴٴ/ⁱˊ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ˈʿ:Lﾞʼ/ﹳٴ;

.field public static final ˑٴ:Lˊⁱ/ˑﹳ;


# instance fields
.field public final ʽʽ:Lˑʼ/ᵎˊ;

.field public final ˆﾞ:Ljava/util/concurrent/locks/ReentrantLock;

.field public final ˈٴ:Lˑʼ/ᵎˊ;

.field public ˉٴ:Ljava/lang/String;

.field public ˊʻ:Lـʾ/ᵔﹳ;

.field public final ٴʼ:Lˎﹳ/ⁱˊ;

.field public final ٴᵢ:Lـˎ/ˈ;

.field public ᴵˊ:Lˊﹶ/ⁱˊ;

.field public final ᴵᵔ:Lᵢ/ﹳٴ;

.field public final ᵎˊ:Lˊﹶ/ⁱˊ;

.field public final ᵎⁱ:Lˎﹳ/ﹳٴ;

.field public final ᵔי:Lᵎˑ/ⁱˊ;

.field public ᵔٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lٴٴ/ⁱˊ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    new-instance v0, Lˊⁱ/ˑﹳ;

    new-instance v1, Lٴﾞ/ˆʾ;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lٴﾞ/ˆʾ;-><init>(I)V

    new-instance v2, Lᵎˉ/ⁱˊ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lˆˋ/ﹳٴ;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lˊⁱ/ˑﹳ;-><init>(IZ)V

    iput-object v3, v0, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    sput-object v0, Lٴٴ/ⁱˊ;->ˑٴ:Lˊⁱ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Lˎﹳ/ⁱˊ;Lˎﹳ/ﹳٴ;Lᵎˑ/ⁱˊ;)V
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lʽⁱ/ᵎﹶ;-><init>(I)V

    new-instance v0, Lˑʼ/ᵎˊ;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lˑʼ/ᵎˊ;-><init>(I)V

    iput-object v0, p0, Lٴٴ/ⁱˊ;->ʽʽ:Lˑʼ/ᵎˊ;

    new-instance v0, Lˑʼ/ᵎˊ;

    invoke-direct {v0, v1}, Lˑʼ/ᵎˊ;-><init>(I)V

    iput-object v0, p0, Lٴٴ/ⁱˊ;->ˈٴ:Lˑʼ/ᵎˊ;

    new-instance v0, Lᵢ/ﹳٴ;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lᵢ/ﹳٴ;-><init>(IZ)V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v0, p0, Lٴٴ/ⁱˊ;->ᴵᵔ:Lᵢ/ﹳٴ;

    new-instance v0, Lـˎ/ˈ;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lـˎ/ˈ;-><init>(I)V

    iput-object v0, p0, Lٴٴ/ⁱˊ;->ٴᵢ:Lـˎ/ˈ;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lٴٴ/ⁱˊ;->ˆﾞ:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iput-object p2, p0, Lٴٴ/ⁱˊ;->ᵎⁱ:Lˎﹳ/ﹳٴ;

    iget-object p2, p1, Lˎﹳ/ⁱˊ;->ˉʿ:Lﹳˋ/ʼˎ;

    new-instance v0, Lcom/parse/ٴʼ;

    new-instance v1, Lـˎ/ˈ;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lـˎ/ˈ;-><init>(I)V

    sget-object v2, Lٴٴ/ⁱˊ;->ˑٴ:Lˊⁱ/ˑﹳ;

    const/16 v3, 0x8

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/parse/ٴʼ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lˊﹶ/ⁱˊ;

    iget-object v1, p1, Lˎﹳ/ⁱˊ;->ʽ:Ljavax/net/SocketFactory;

    iget p1, p1, Lˎﹳ/ⁱˊ;->ʼᐧ:I

    invoke-direct {p2, v1, p1, v0}, Lˊﹶ/ⁱˊ;-><init>(Ljavax/net/SocketFactory;ILcom/parse/ٴʼ;)V

    iput-object p2, p0, Lٴٴ/ⁱˊ;->ᵎˊ:Lˊﹶ/ⁱˊ;

    iput-object p3, p0, Lٴٴ/ⁱˊ;->ᵔי:Lᵎˑ/ⁱˊ;

    invoke-virtual {p3, p0}, Lᵎˑ/ⁱˊ;->ﹳٴ(Ljava/lang/AutoCloseable;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 11

    .prologue
    iget-object v0, p0, Lٴٴ/ⁱˊ;->ᵔי:Lᵎˑ/ⁱˊ;

    const-string v1, "Closed connection to {}"

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ᵎˊ:Lˊﹶ/ⁱˊ;

    sget-object v3, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    iget-object v4, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-gtz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lٴٴ/ⁱˊ;->ʽʽ:Lˑʼ/ᵎˊ;

    iget-object v5, v4, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v4, v4, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lיˆ/ʽ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Lיˆ/ʽ;->ﹳᐧ()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_4
    iget-wide v9, v7, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7, v8}, Lﾞʼ/ﹳٴ;->ʼᐧ(Ljava/lang/Long;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lˊﹶ/ⁱˊ;->ʽ()V

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Lﾞʼ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lᵎˑ/ﹳٴ;

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    iget v3, p0, Lٴٴ/ⁱˊ;->ᵔٴ:I

    invoke-direct {v1, v3, v2}, Lᵎˑ/ﹳٴ;-><init>(ILjava/lang/String;)V

    iget-object v0, v0, Lᵎˑ/ⁱˊ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0, v1}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    return-void

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    invoke-virtual {v2}, Lˊﹶ/ⁱˊ;->ʽ()V

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Lﾞʼ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lᵎˑ/ﹳٴ;

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    iget v3, p0, Lٴٴ/ⁱˊ;->ᵔٴ:I

    invoke-direct {v1, v3, v2}, Lᵎˑ/ﹳٴ;-><init>(ILjava/lang/String;)V

    iget-object v0, v0, Lᵎˑ/ⁱˊ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0, v1}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    throw v4

    :cond_1
    return-void
.end method

.method public final ʼᵢ(J[B)Lˊʾ/ˏי;
    .locals 6

    new-instance v0, Lˊʾ/ˏי;

    iget-object v1, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v1, v1, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/יـ;

    iget-object v1, v1, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lʼﹳ/ʽ;

    sget-object v2, Lˊʾ/ﹳᐧ;->ᴵˊ:Lˊʾ/ﹳᐧ;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v3, v3, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    const/16 v4, 0x19

    sget-object v5, Lʼﹳ/ﾞʻ;->ʽʽ:Lʼﹳ/ﾞʻ;

    invoke-direct {v0, v4, v1, v5}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;)V

    iput-object v1, v0, Lˊʾ/ˏי;->ˊʻ:Lʼﹳ/ʽ;

    invoke-static {v2}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lˊʾ/ˏי;->ٴᵢ:B

    invoke-static {v3}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v1

    iput-wide v1, v0, Lˊʾ/ˏי;->ˉٴ:J

    iput-object p3, v0, Lˊʾ/ˏי;->ᵎⁱ:[B

    iget-object p3, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p3, Lˋʼ/ⁱˊ;

    check-cast p3, Lʼﹳ/ٴﹶ;

    iput-wide p1, p3, Lʼﹳ/ٴﹶ;->ᵔᵢ:J

    invoke-virtual {p0, v0}, Lٴٴ/ⁱˊ;->ﾞˋ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object p1

    iget-object p2, p0, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget-wide p2, p2, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    invoke-static {p1, p2, p3}, Lˈˆ/ﾞᴵ;->ﹳᐧ(Lˋٴ/ⁱˊ;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼﹳ/ˉˆ;

    check-cast p1, Lˊʾ/ˏי;

    return-object p1
.end method

.method public final ʽˑ(Ljava/lang/String;)V
    .locals 10

    .prologue
    iget-object v0, p0, Lٴٴ/ⁱˊ;->ᵎˊ:Lˊﹶ/ⁱˊ;

    invoke-virtual {v0}, Lˊﹶ/ⁱˊ;->ﾞᴵ()Z

    move-result v1

    if-nez v1, :cond_a

    iput-object p1, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    const/16 v1, 0x1bd

    iput v1, p0, Lٴٴ/ⁱˊ;->ᵔٴ:I

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Ljavax/net/SocketFactory;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, v0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    iget v3, v0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, v0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x2328

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, v0, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    new-instance v2, Lˊﹶ/ﹳٴ;

    iget-object v3, v0, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, v0, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v4, Lcom/parse/ٴʼ;

    iget-object v5, v4, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Lˆˋ/ﹳٴ;

    iget-object v4, v4, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lٴٴ/ⁱˊ;

    invoke-direct {v2, v1, v3, v5, v4}, Lˊﹶ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lˆˋ/ﹳٴ;Lٴٴ/ⁱˊ;)V

    iput-object v2, v0, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    sget-object v1, Lˋʽ/ﹳٴ;->ᴵᵔ:Lﾞʼ/ﹳٴ;

    iget-object v2, v2, Lˋʽ/ﹳٴ;->ˈٴ:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Starting PacketReader on thread: {}"

    invoke-interface {v1, v3, v4}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v1, Lـʾ/ᵔﹳ;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lـʾ/ᵔﹳ;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    new-instance v3, Ljava/util/concurrent/Semaphore;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, p0, Lٴٴ/ⁱˊ;->ˊʻ:Lـʾ/ᵔﹳ;

    new-instance v1, Lˊﹶ/ⁱˊ;

    iget-object v3, p0, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget-object v7, v3, Lˎﹳ/ⁱˊ;->ˑﹳ:Ljava/util/UUID;

    iget-object v8, v3, Lˎﹳ/ⁱˊ;->ﹳٴ:Ljava/util/EnumSet;

    invoke-direct {v1, v2}, Lˊﹶ/ⁱˊ;-><init>(I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    iput-object v7, v1, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v7, v2, [B

    iput-object v7, v1, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iput-object p1, v1, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    sget-object p1, Lʼﹳ/ˆʾ;->ᴵˊ:Lʼﹳ/ˆʾ;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, v1, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    iput-object v1, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    invoke-static {v8}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iget-object v1, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    sget-object v7, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    const-string v9, "Negotiating dialects {} with server {}"

    invoke-interface {v7, p1, v1, v9}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, v3, Lˎﹳ/ⁱˊ;->ﾞᴵ:Z

    if-eqz p1, :cond_3

    new-instance p1, Lʾʾ/ﹳٴ;

    invoke-static {v8}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    new-instance v8, Lˎʻ/ﹳٴ;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, v8}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lʾʾ/ﹳٴ;->ᴵˊ:Ljava/util/EnumSet;

    iget-object v1, p0, Lٴٴ/ⁱˊ;->ˊʻ:Lـʾ/ᵔﹳ;

    invoke-virtual {v1, v6}, Lـʾ/ᵔﹳ;->ᵔʾ(I)[J

    move-result-object v1

    aget-wide v8, v1, v2

    cmp-long v1, v8, v4

    if-nez v1, :cond_2

    new-instance v1, Lٴٴ/ʽ;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v1, p1, v8, v9, v4}, Lٴٴ/ʽ;-><init>(Lʽⁱ/ᵎﹶ;JLjava/util/UUID;)V

    iget-object v4, p0, Lٴٴ/ⁱˊ;->ᴵᵔ:Lᵢ/ﹳٴ;

    invoke-virtual {v4, v1}, Lᵢ/ﹳٴ;->ˈٴ(Lٴٴ/ʽ;)V

    invoke-virtual {v0, p1}, Lˊﹶ/ⁱˊ;->ʼˎ(Lʽⁱ/ᵎﹶ;)V

    iget-object p1, v1, Lٴٴ/ʽ;->ﹳٴ:Lˋٴ/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iget-wide v0, v3, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    :try_start_0
    invoke-virtual {p1, v0, v1, v3}, Lˋٴ/ʽ;->ᵎﹶ(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    check-cast v0, Lʼﹳ/ˉˆ;

    instance-of p1, v0, Lˊʾ/ˆʾ;

    if-eqz p1, :cond_0

    check-cast v0, Lˊʾ/ˆʾ;

    iget-object p1, v0, Lˊʾ/ˆʾ;->ٴᵢ:Lʼﹳ/ʽ;

    sget-object v1, Lʼﹳ/ʽ;->ᴵᵔ:Lʼﹳ/ʽ;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lٴٴ/ⁱˊ;->ˈـ()Lʼﹳ/ˉˆ;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a SMB2 NEGOTIATE Response to our SMB_COM_NEGOTIATE, but got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    iget-object p1, p1, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lˋⁱ/ﾞᴵ;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout expired"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lˋⁱ/ﾞᴵ;->ᵢˏ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {v4, p1}, Lᵎˉ/ⁱˊ;->ᵔʾ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v4, p1}, Lᵎˉ/ⁱˊ;->ᵔʾ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The SMBv1 SMB_COM_NEGOTIATE packet needs to be the first packet sent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lٴٴ/ⁱˊ;->ˈـ()Lʼﹳ/ˉˆ;

    move-result-object v0

    :cond_4
    :goto_1
    instance-of p1, v0, Lˊʾ/ˆʾ;

    if-eqz p1, :cond_9

    check-cast v0, Lˊʾ/ˆʾ;

    iget-object p1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lˋʼ/ⁱˊ;

    check-cast p1, Lʼﹳ/ٴﹶ;

    iget-wide v3, p1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v3, v4}, Lٴˎ/ﹳٴ;->ﹳٴ(J)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lˊʾ/ˆʾ;->ˉٴ:Ljava/util/UUID;

    iput-object v1, p1, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    iget-wide v3, v0, Lˊʾ/ˆʾ;->ᵎⁱ:J

    const-class v1, Lʼﹳ/ˆʾ;

    invoke-static {v3, v4, v1}, Lᴵʿ/ﹳٴ;->ˈ(JLjava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p1, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    new-instance v3, Lʽᴵ/יـ;

    iget-object v4, v0, Lˊʾ/ˆʾ;->ٴᵢ:Lʼﹳ/ʽ;

    iget v5, v0, Lˊʾ/ˆʾ;->ٴʼ:I

    iget v6, v0, Lˊʾ/ˆʾ;->ᵎˊ:I

    iget v8, v0, Lˊʾ/ˆʾ;->ᵔי:I

    sget-object v9, Lʼﹳ/ˆʾ;->ʽʽ:Lʼﹳ/ˆʾ;

    invoke-virtual {v1, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x2

    invoke-direct {v3, v2, v9}, Lʽᴵ/יـ;-><init>(BI)V

    iput-object v4, v3, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    const/high16 v2, 0x10000

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_2
    iput v5, v3, Lʽᴵ/יـ;->ⁱˊ:I

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_3
    iput v6, v3, Lʽᴵ/יـ;->ʽ:I

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_4
    iput v8, v3, Lʽᴵ/יـ;->ˈ:I

    iput-object v3, p1, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    iget v1, v0, Lˊʾ/ˆʾ;->ˊʻ:I

    iput v1, p1, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p1, v0, Lˊʾ/ˆʾ;->ˆﾞ:Lﾞʾ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Lﾞʾ/ⁱˊ;->ﹳٴ:J

    const-wide v3, 0x19db1ded53e8000L

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    const-string p1, "Negotiated the following connection settings: {}"

    iget-object v0, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    invoke-interface {v7, v0, p1}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Successfully connected to: {}"

    iget-object v0, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    invoke-interface {v7, v0, p1}, Lﾞʼ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_8
    new-instance p1, Lcom/hierynomus/mssmb2/SMBApiException;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    check-cast v0, Lʼﹳ/ٴﹶ;

    const-string v1, "Failure during dialect negotiation"

    invoke-direct {p1, v0, v1}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a SMB2 NEGOTIATE Response, but got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    const-string v1, "This connection is already connected to "

    invoke-static {v1, v0}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈـ()Lʼﹳ/ˉˆ;
    .locals 11

    new-instance v0, Lˊʾ/ʼˎ;

    iget-object v8, p0, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget-object v1, v8, Lˎﹳ/ⁱˊ;->ﹳٴ:Ljava/util/EnumSet;

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v9

    iget-object v1, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v1, v1, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/util/UUID;

    sget-object v3, Lʼﹳ/ﾞʻ;->ᴵˊ:Lʼﹳ/ﾞʻ;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v1, 0x24

    sget-object v2, Lʼﹳ/ʽ;->ᴵˊ:Lʼﹳ/ʽ;

    invoke-direct/range {v0 .. v7}, Lˊʾ/ʼˎ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    iput-object v9, v0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    iput-object v10, v0, Lˊʾ/ʼˎ;->ˉٴ:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lٴٴ/ⁱˊ;->ﾞˋ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object v0

    iget-wide v1, v8, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    invoke-static {v0, v1, v2}, Lˈˆ/ﾞᴵ;->ﹳᐧ(Lˋٴ/ⁱˊ;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼﹳ/ˉˆ;

    return-object v0
.end method

.method public final ˋˊ(Lᵢ/ﹳٴ;)Lᵢ/ⁱˊ;
    .locals 11

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lˎﹳ/ⁱˊ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v2, v2, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    new-instance v1, Lﹳʿ/ﹳٴ;

    invoke-direct {v1}, Lﹳʿ/ⁱˊ;-><init>()V

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v2, v2, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v2, [B

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    new-instance v4, Lˎʿ/ﹳٴ;

    sget-object v5, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6, v5}, Lˎʿ/ⁱˊ;-><init>([BZLˎʿ/ʽ;)V

    const-string v2, "Expected to find the SPNEGO OID ("

    const-string v5, "Incorrect GSS-API ASN.1 token received, expected to find an [APPLICATION 0], not: "

    :try_start_0
    new-instance v7, Lﾞʽ/ﹳٴ;

    new-instance v8, Lᵢᴵ/ﹳٴ;

    const/16 v9, 0x17

    invoke-direct {v8, v9}, Lﹳˋ/ʼˎ;-><init>(I)V

    new-instance v9, Lˊᐧ/ˑﹳ;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v4}, Lˊᐧ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v7, v8, v9}, Lﾞʽ/ﹳٴ;-><init>(Lᵢᴵ/ﹳٴ;Lˊᐧ/ˑﹳ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7}, Lﾞʽ/ﹳٴ;->ᵎﹶ()Lˎᵔ/ⁱˊ;

    move-result-object v4

    check-cast v4, Lˈˑ/ʽ;

    iget-object v8, v4, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    iget-object v8, v8, Lˎᵔ/ﾞᴵ;->ﹳٴ:Lˎᵔ/ᵎﹶ;

    sget-object v9, Lˎᵔ/ᵎﹶ;->ʽʽ:Lˎᵔ/ᵎﹶ;

    if-ne v8, v9, :cond_1

    sget-object v5, Lˎᵔ/ﾞᴵ;->ˉʿ:Lˎᵔ/ˑﹳ;

    invoke-virtual {v4, v5}, Lˈˑ/ʽ;->ˑﹳ(Lˎᵔ/ﾞᴵ;)Lˎᵔ/ⁱˊ;

    move-result-object v4

    check-cast v4, Lˈˑ/ﹳٴ;

    iget-object v4, v4, Lˈˑ/ﹳٴ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˎᵔ/ⁱˊ;

    instance-of v8, v5, Lˆⁱ/ᵎﹶ;

    if-eqz v8, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˎᵔ/ⁱˊ;

    invoke-virtual {v1, v2}, Lᵎᵎ/ʽ;->ⁱˊ(Lˎᵔ/ⁱˊ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v1, v1, Lﹳʿ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lﹳʿ/ʽ;->ﹳٴ:Lˆⁱ/ᵎﹶ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), not: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    const-string v1, "Could not read NegTokenInit from buffer"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_3
    if-ge v3, v0, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lᴵʿ/ˈ;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lˆⁱ/ᵎﹶ;

    invoke-interface {v4}, Lᴵʿ/ˈ;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lˆⁱ/ᵎﹶ;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    invoke-interface {v4}, Lᴵʿ/ˑﹳ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵢ/ⁱˊ;

    invoke-interface {v4, p1}, Lᵢ/ⁱˊ;->ⁱˊ(Lᵢ/ﹳٴ;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_5
    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find a configured authenticator for mechtypes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and authentication context: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final יˉ(Lᵢ/ⁱˊ;Lᵢ/ﹳٴ;[BLיˆ/ʽ;)[B
    .locals 0

    .prologue
    invoke-interface {p1, p2, p3}, Lᵢ/ⁱˊ;->ﹳٴ(Lᵢ/ﹳٴ;[B)Lʼﹳ/ᵔᵢ;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lʼﹳ/ᵔᵢ;->ⁱˊ:[B

    iget-object p1, p1, Lʼﹳ/ᵔᵢ;->ʽ:[B

    if-eqz p1, :cond_2

    iget-object p3, p4, Lיˆ/ʽ;->ᴵˊ:Lיˆ/ⁱˊ;

    iget-object p4, p3, Lיˆ/ⁱˊ;->ﹳٴ:Lʼﹳ/ʽ;

    invoke-virtual {p4}, Lʼﹳ/ʽ;->ﹳٴ()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "HmacSHA256"

    iput-object p4, p3, Lיˆ/ⁱˊ;->ʽ:Ljava/lang/String;

    iput-object p1, p3, Lיˆ/ⁱˊ;->ˈ:[B

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set a signing key (yet) for SMB3.x"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p2
.end method

.method public final ﹶˎ(Lᵢ/ﹳٴ;)Lיˆ/ʽ;
    .locals 18

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lٴٴ/ⁱˊ;->ˋˊ(Lᵢ/ﹳٴ;)Lᵢ/ⁱˊ;

    move-result-object v6

    iget-object v3, v2, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v0}, Lᵢ/ⁱˊ;->ʽ(Lˎﹳ/ⁱˊ;)V

    new-instance v3, Lיˆ/ʽ;

    move-object v4, v3

    iget-object v3, v1, Lٴٴ/ⁱˊ;->ᵔי:Lᵎˑ/ⁱˊ;

    iget-object v5, v1, Lٴٴ/ⁱˊ;->ᵎⁱ:Lˎﹳ/ﹳٴ;

    iget-object v5, v5, Lˎﹳ/ﹳٴ;->ˈٴ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˎﹳ/ⁱˊ;->ᵎﹶ:Lﾞˎ/ʽ;

    move-object/from16 v17, v5

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lיˆ/ʽ;-><init>(Lٴٴ/ⁱˊ;Lᵢ/ﹳٴ;Lᵎˑ/ⁱˊ;Lˉˆ/ʿ;Lﾞˎ/ʽ;)V

    iget-object v3, v1, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v3, v3, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3, v0}, Lٴٴ/ⁱˊ;->יˉ(Lᵢ/ⁱˊ;Lᵢ/ﹳٴ;[BLיˆ/ʽ;)[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lٴٴ/ⁱˊ;->ʼᵢ(J[B)Lˊʾ/ˏי;

    move-result-object v3

    iget-object v8, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lˋʼ/ⁱˊ;

    check-cast v8, Lʼﹳ/ٴﹶ;

    iget-wide v8, v8, Lʼﹳ/ٴﹶ;->ᵔᵢ:J
    :try_end_0
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v10, v8, v4

    iget-object v11, v1, Lٴٴ/ⁱˊ;->ˈٴ:Lˑʼ/ᵎˊ;

    if-eqz v10, :cond_0

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v11, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v13, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v14, v11, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    :try_start_4
    iget-object v12, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v12, Lˋʼ/ⁱˊ;

    move-object v13, v12

    check-cast v13, Lʼﹳ/ٴﹶ;

    iget-wide v13, v13, Lʼﹳ/ٴﹶ;->ˆʾ:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide v15, 0xc0000016L

    cmp-long v13, v13, v15

    sget-object v14, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    if-nez v13, :cond_1

    :try_start_5
    const-string v12, "More processing required for authentication of {} using {}"

    invoke-interface {v14, v7, v6, v12}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lˊʾ/ˏי;->ᵎⁱ:[B

    invoke-virtual {v1, v6, v2, v3, v0}, Lٴٴ/ⁱˊ;->יˉ(Lᵢ/ⁱˊ;Lᵢ/ﹳٴ;[BLיˆ/ʽ;)[B

    move-result-object v3

    invoke-virtual {v1, v8, v9, v3}, Lٴٴ/ⁱˊ;->ʼᵢ(J[B)Lˊʾ/ˏי;

    move-result-object v3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v13, v12

    check-cast v13, Lʼﹳ/ٴﹶ;

    move-wide v15, v4

    iget-wide v4, v13, Lʼﹳ/ٴﹶ;->ˆʾ:J

    cmp-long v4, v4, v15

    const/4 v5, 0x2

    const/4 v15, 0x0

    if-nez v4, :cond_4

    check-cast v12, Lʼﹳ/ٴﹶ;

    move-object v4, v14

    const/16 v16, 0x1

    iget-wide v13, v12, Lʼﹳ/ٴﹶ;->ᵔᵢ:J

    iput-wide v13, v0, Lיˆ/ʽ;->ʾˋ:J

    iget-object v12, v3, Lˊʾ/ˏי;->ᵎⁱ:[B

    if-eqz v12, :cond_2

    invoke-virtual {v1, v6, v2, v12, v0}, Lٴٴ/ⁱˊ;->יˉ(Lᵢ/ⁱˊ;Lᵢ/ﹳٴ;[BLיˆ/ʽ;)[B

    :cond_2
    invoke-virtual {v0, v3}, Lיˆ/ʽ;->ˉˆ(Lˊʾ/ˏי;)V

    iget-object v2, v1, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    iget-wide v12, v0, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v15

    aput-object v2, v6, v16

    aput-object v3, v6, v5

    invoke-interface {v4, v6}, Lﾞʼ/ﹳٴ;->ʾᵎ([Ljava/lang/Object;)V

    iget-object v2, v1, Lٴٴ/ⁱˊ;->ʽʽ:Lˑʼ/ᵎˊ;

    iget-wide v3, v0, Lיˆ/ʽ;->ʾˋ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v2, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, v2, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v10, :cond_3

    :try_start_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Lˑʼ/ᵎˊ;->ﹳـ(Ljava/lang/Long;)V
    :try_end_8
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    return-object v0

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    const/16 v16, 0x1

    new-instance v0, Lcom/hierynomus/mssmb2/SMBApiException;

    iget-object v2, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lˋʼ/ⁱˊ;

    check-cast v2, Lʼﹳ/ٴﹶ;

    const-string v3, "Authentication failed for \'%s\' using %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v7, v4, v15

    aput-object v6, v4, v16

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_1
    if-eqz v10, :cond_5

    :try_start_a
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Lˑʼ/ᵎˊ;->ﹳـ(Ljava/lang/Long;)V

    :cond_5
    throw v0
    :try_end_a
    .catch Lcom/hierynomus/spnego/SpnegoException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_2
    new-instance v2, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final ﾞˋ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;
    .locals 11

    .prologue
    iget-object v0, p0, Lٴٴ/ⁱˊ;->ˆﾞ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lʼﹳ/ˉˆ;->ʽˑ()Lʼﹳ/ˉˆ;

    move-result-object v1

    instance-of v1, v1, Lˊʾ/ﹳٴ;

    if-nez v1, :cond_4

    iget-object v1, p0, Lٴٴ/ⁱˊ;->ˊʻ:Lـʾ/ᵔﹳ;

    iget-object v1, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    invoke-virtual {p1}, Lʼﹳ/ˉˆ;->ﹶˎ()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/high16 v4, 0x10000

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    sget-object v4, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    if-le v2, v3, :cond_1

    :try_start_1
    iget-object v5, p0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    sget-object v6, Lʼﹳ/ˆʾ;->ʽʽ:Lʼﹳ/ˆʾ;

    iget-object v5, v5, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumSet;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v2, "Connection to {} does not support multi-credit requests."

    iget-object v5, p0, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lﾞʼ/ﹳٴ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-ge v2, v1, :cond_2

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_0

    if-le v1, v3, :cond_0

    add-int/lit8 v2, v1, -0x1

    :goto_0
    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v5

    check-cast v5, Lʼﹳ/ٴﹶ;

    iput v2, v5, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    if-nez v1, :cond_3

    const-string v5, "There are no credits left to send {}, will block until there are more credits available."

    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v6

    check-cast v6, Lʼﹳ/ٴﹶ;

    iget-object v6, v6, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    invoke-interface {v4, v6, v5}, Lﾞʼ/ﹳٴ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v5, p0, Lٴٴ/ⁱˊ;->ˊʻ:Lـʾ/ᵔﹳ;

    invoke-virtual {v5, v2}, Lـʾ/ᵔﹳ;->ᵔʾ(I)[J

    move-result-object v5

    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v6

    check-cast v6, Lʼﹳ/ٴﹶ;

    const/4 v7, 0x0

    aget-wide v8, v5, v7

    iput-wide v8, v6, Lʼﹳ/ٴﹶ;->ﾞᴵ:J

    const-string v6, "Granted {} (out of {}) credits to {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v7

    aput-object v9, v10, v3

    const/4 v3, 0x2

    aput-object p1, v10, v3

    invoke-interface {v4, v6, v10}, Lﾞʼ/ﹳٴ;->ʽ(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v3

    check-cast v3, Lʼﹳ/ٴﹶ;

    rsub-int v1, v1, 0x200

    sub-int/2addr v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lʼﹳ/ٴﹶ;->ʽ:I

    new-instance v1, Lٴٴ/ʽ;

    invoke-virtual {p1}, Lʼﹳ/ˉˆ;->ʽˑ()Lʼﹳ/ˉˆ;

    move-result-object v2

    aget-wide v3, v5, v7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lٴٴ/ʽ;-><init>(Lʽⁱ/ᵎﹶ;JLjava/util/UUID;)V

    iget-object v2, p0, Lٴٴ/ⁱˊ;->ᴵᵔ:Lᵢ/ﹳٴ;

    invoke-virtual {v2, v1}, Lᵢ/ﹳٴ;->ˈٴ(Lٴٴ/ʽ;)V

    new-instance v2, Lٴٴ/ﹳٴ;

    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v3

    check-cast v3, Lʼﹳ/ٴﹶ;

    iget-wide v3, v3, Lʼﹳ/ٴﹶ;->ᵔᵢ:J

    invoke-direct {v2, p0, v1, v3, v4}, Lٴٴ/ﹳٴ;-><init>(Lٴٴ/ⁱˊ;Lٴٴ/ʽ;J)V

    new-instance v3, Lˋٴ/ⁱˊ;

    iget-object v1, v1, Lٴٴ/ʽ;->ﹳٴ:Lˋٴ/ʽ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lˋٴ/ˈ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v1, v4, Lˋٴ/ˈ;->ʾˋ:Lˋٴ/ʽ;

    invoke-direct {v3, v4, v2}, Lˋٴ/ⁱˊ;-><init>(Lˋٴ/ˈ;Lٴٴ/ﹳٴ;)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v1, p0, Lٴٴ/ⁱˊ;->ᵎˊ:Lˊﹶ/ⁱˊ;

    invoke-virtual {v1, p1}, Lˊﹶ/ⁱˊ;->ʼˎ(Lʽⁱ/ᵎﹶ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
