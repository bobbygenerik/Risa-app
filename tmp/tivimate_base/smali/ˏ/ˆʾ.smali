.class public final Lˏ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋˑ/ⁱˊ;
.implements Lˋˑ/ﹳٴ;


# instance fields
.field public ⁱˊ:Ljava/util/ArrayDeque;

.field public final ﹳٴ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lˏ/ˆʾ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lˏ/ˆʾ;->ⁱˊ:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ﹳٴ()V
    .locals 5

    .prologue
    const-class v0, Lˉᵎ/ⁱˊ;

    sget-object v1, Lʿʿ/ﹳٴ;->ᴵˊ:Lʿʿ/ﹳٴ;

    sget-object v2, Lـˎ/ˈ;->ᴵˊ:Lـˎ/ˈ;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lˏ/ˆʾ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lˏ/ˆʾ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lˏ/ˆʾ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
