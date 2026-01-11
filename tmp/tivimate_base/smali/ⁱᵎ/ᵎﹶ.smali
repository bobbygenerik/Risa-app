.class public final Lⁱᵎ/ᵎﹶ;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/util/LinkedHashMap;

.field public static ˈ:Landroid/net/NetworkCapabilities;

.field public static ˑﹳ:Z

.field public static final ⁱˊ:Ljava/lang/Object;

.field public static final ﹳٴ:Lⁱᵎ/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lⁱᵎ/ᵎﹶ;

    invoke-direct {v0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    sput-object v0, Lⁱᵎ/ᵎﹶ;->ﹳٴ:Lⁱᵎ/ᵎﹶ;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lⁱᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lⁱᵎ/ᵎﹶ;->ʽ:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static ﹳٴ(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Lˑᵢ/ᐧᴵ;)Lʽˋ/ـˆ;
    .locals 4

    .prologue
    sget-object v0, Lⁱᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lⁱᵎ/ᵎﹶ;->ʽ:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    sget-object v2, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v3, "NetworkRequestConstraintController register shared callback"

    invoke-virtual {v1, v2, v3}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lⁱᵎ/ᵎﹶ;->ﹳٴ:Lⁱᵎ/ᵎﹶ;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    sget-object v2, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v3, "NetworkRequestConstraintController send initial capabilities"

    invoke-virtual {v1, v2, v3}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lⁱᵎ/ᵎﹶ;->ﹳٴ:Lⁱᵎ/ᵎﹶ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lⁱᵎ/ᵎﹶ;->ˑﹳ:Z

    if-eqz v1, :cond_1

    sget-object v1, Lⁱᵎ/ᵎﹶ;->ˈ:Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    sput-object v1, Lⁱᵎ/ᵎﹶ;->ˈ:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    sput-boolean v2, Lⁱᵎ/ᵎﹶ;->ˑﹳ:Z

    :goto_1
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lⁱᵎ/ﹳٴ;->ﹳٴ:Lⁱᵎ/ﹳٴ;

    goto :goto_2

    :cond_2
    new-instance p1, Lⁱᵎ/ⁱˊ;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Lⁱᵎ/ⁱˊ;-><init>(I)V

    :goto_2
    invoke-virtual {p2, p1}, Lˑᵢ/ᐧᴵ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance p1, Lʽˋ/ـˆ;

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0, p0}, Lʽˋ/ـˆ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    :goto_3
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .prologue
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object v0, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "NetworkRequestConstraintController onCapabilitiesChanged callback"

    invoke-virtual {p1, v0, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lⁱᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sput-object p2, Lⁱᵎ/ᵎﹶ;->ˈ:Landroid/net/NetworkCapabilities;

    sget-object v0, Lⁱᵎ/ᵎﹶ;->ʽ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵⁱ/ﾞʻ;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    invoke-virtual {v1, p2}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lⁱᵎ/ﹳٴ;->ﹳٴ:Lⁱᵎ/ﹳٴ;

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    new-instance v1, Lⁱᵎ/ⁱˊ;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lⁱᵎ/ⁱˊ;-><init>(I)V

    :goto_1
    invoke-interface {v2, v1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p2
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 4

    .prologue
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object v0, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "NetworkRequestConstraintController onLost callback"

    invoke-virtual {p1, v0, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lⁱᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lⁱᵎ/ᵎﹶ;->ˈ:Landroid/net/NetworkCapabilities;

    sget-object v0, Lⁱᵎ/ᵎﹶ;->ʽ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵⁱ/ﾞʻ;

    new-instance v2, Lⁱᵎ/ⁱˊ;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lⁱᵎ/ⁱˊ;-><init>(I)V

    invoke-interface {v1, v2}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw v0
.end method
