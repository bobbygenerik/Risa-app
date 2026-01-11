.class public final Lˎˏ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lᵎˉ/ⁱˊ;

.field public static final ˈ:Ljava/util/LinkedHashMap;


# instance fields
.field public final ⁱˊ:Lﹳʽ/ˊʻ;

.field public final ﹳٴ:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˎˏ/ﹳٴ;->ʽ:Lᵎˉ/ⁱˊ;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lˎˏ/ﹳٴ;->ˈ:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lˎˏ/ﹳٴ;->ʽ:Lᵎˉ/ⁱˊ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˎˏ/ﹳٴ;->ˈ:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput-object v2, p0, Lˎˏ/ﹳٴ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz p2, :cond_1

    new-instance p2, Lﹳʽ/ˊʻ;

    invoke-direct {p2, p1}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-object p2, p0, Lˎˏ/ﹳٴ;->ⁱˊ:Lﹳʽ/ˊʻ;

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method
