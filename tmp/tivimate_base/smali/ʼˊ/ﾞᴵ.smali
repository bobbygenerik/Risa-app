.class public final Lʼˊ/ﾞᴵ;
.super Lʼˊ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lʼˊ/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʼˊ/ʽ;

    invoke-direct {v0}, Lʼˊ/ʽ;-><init>()V

    iput-object v0, p0, Lʼˊ/ﾞᴵ;->ⁱˊ:Lʼˊ/ʽ;

    new-instance v0, Lʼˊ/ʽ;

    invoke-direct {v0}, Lʼˊ/ʽ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ([B)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼˊ/ﾞᴵ;->ⁱˊ:Lʼˊ/ʽ;

    array-length v1, p1

    const v2, 0x8000

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʼˊ/ˈ;

    if-nez v2, :cond_1

    new-instance v2, Lʼˊ/ˈ;

    invoke-direct {v2}, Lʼˊ/ˈ;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lʼˊ/ˈ;->ⁱˊ(Ljava/lang/ref/SoftReference;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(I)[B
    .locals 3

    .prologue
    iget-object v0, p0, Lʼˊ/ﾞᴵ;->ⁱˊ:Lʼˊ/ʽ;

    const v1, 0x8000

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼˊ/ˈ;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lʼˊ/ˈ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    :goto_0
    check-cast v2, [B

    if-nez v2, :cond_3

    new-array p1, p1, [B

    return-object p1

    :cond_3
    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
