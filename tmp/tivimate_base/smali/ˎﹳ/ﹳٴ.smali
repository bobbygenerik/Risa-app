.class public final Lˎﹳ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ᴵᵔ:Lﾞʼ/ﹳٴ;


# instance fields
.field public ʽʽ:Lᵎˑ/ⁱˊ;

.field public ʾˋ:Lj$/util/concurrent/ConcurrentHashMap;

.field public ˈٴ:Lˉˆ/ʿ;

.field public ᴵˊ:Lˎﹳ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lˎﹳ/ﹳٴ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lˎﹳ/ﹳٴ;->ᴵᵔ:Lﾞʼ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    sget-object v0, Lˎﹳ/ﹳٴ;->ᴵᵔ:Lﾞʼ/ﹳٴ;

    invoke-interface {v0}, Lﾞʼ/ﹳٴ;->ˑﹳ()V

    iget-object v1, p0, Lˎﹳ/ﹳٴ;->ʾˋ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lٴٴ/ⁱˊ;

    :try_start_0
    invoke-virtual {v2}, Lٴٴ/ⁱˊ;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Error closing connection to host {}"

    iget-object v2, v2, Lٴٴ/ⁱˊ;->ˉٴ:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lﾞʼ/ﹳٴ;->יـ(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʽ(Ljava/lang/String;)Lٴٴ/ⁱˊ;
    .locals 4

    .prologue
    const-string v0, ":445"

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lˎﹳ/ﹳٴ;->ʾˋ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴٴ/ⁱˊ;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Lٴٴ/ⁱˊ;->ᵎˊ:Lˊﹶ/ⁱˊ;

    invoke-virtual {v2}, Lˊﹶ/ⁱˊ;->ﾞᴵ()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v1, Lٴٴ/ⁱˊ;

    iget-object v2, p0, Lˎﹳ/ﹳٴ;->ᴵˊ:Lˎﹳ/ⁱˊ;

    iget-object v3, p0, Lˎﹳ/ﹳٴ;->ʽʽ:Lᵎˑ/ⁱˊ;

    invoke-direct {v1, v2, p0, v3}, Lٴٴ/ⁱˊ;-><init>(Lˎﹳ/ⁱˊ;Lˎﹳ/ﹳٴ;Lᵎˑ/ⁱˊ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Lٴٴ/ⁱˊ;->ʽˑ(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lˎﹳ/ﹳٴ;->ʾˋ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/AutoCloseable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lᴵʿ/ﾞᴵ;->ﹳٴ:I

    aget-object v0, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-static {v0}, Lˉˆ/ٴᴵ;->ʽﹳ(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_4
    :try_start_4
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
