.class public final Lﹶﾞ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾞᴵ:Ljava/lang/Object;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ˈ:Ljava/lang/Object;

.field public volatile ˑﹳ:Ljava/lang/Object;

.field public final ⁱˊ:Lﹶﾞ/ʽﹳ;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶﾞ/ˈٴ;->ﾞᴵ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lﹶﾞ/ʽﹳ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lﹶﾞ/ˈٴ;->ˈ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶﾞ/ˈٴ;->ˑﹳ:Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˈٴ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lﹶﾞ/ˈٴ;->ʽ:Ljava/lang/Object;

    iput-object p3, p0, Lﹶﾞ/ˈٴ;->ⁱˊ:Lﹶﾞ/ʽﹳ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˈٴ;->ˈ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lﹶﾞ/ʻᴵ;->ٴﹶ:Lᵔﹶ/ᵔʾ;

    if-nez p1, :cond_1

    iget-object p1, p0, Lﹶﾞ/ˈٴ;->ʽ:Ljava/lang/Object;

    return-object p1

    :cond_1
    sget-object p1, Lﹶﾞ/ˈٴ;->ﾞᴵ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-static {}, Lᵔﹶ/ᵔʾ;->ʻٴ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lﹶﾞ/ˈٴ;->ˑﹳ:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lﹶﾞ/ˈٴ;->ʽ:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lﹶﾞ/ˈٴ;->ˑﹳ:Ljava/lang/Object;

    :goto_0
    monitor-exit p1

    return-object v0

    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p1, Lﹶﾞ/ᴵᵔ;->ﹳٴ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹶﾞ/ˈٴ;

    invoke-static {}, Lᵔﹶ/ᵔʾ;->ʻٴ()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, v0, Lﹶﾞ/ˈٴ;->ⁱˊ:Lﹶﾞ/ʽﹳ;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lﹶﾞ/ʽﹳ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    :cond_4
    :try_start_4
    sget-object v2, Lﹶﾞ/ˈٴ;->ﾞᴵ:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iput-object v1, v0, Lﹶﾞ/ˈٴ;->ˑﹳ:Ljava/lang/Object;

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_6
    iget-object p1, p0, Lﹶﾞ/ˈٴ;->ⁱˊ:Lﹶﾞ/ʽﹳ;

    if-nez p1, :cond_7

    :catch_2
    iget-object p1, p0, Lﹶﾞ/ˈٴ;->ʽ:Ljava/lang/Object;

    goto :goto_2

    :cond_7
    :try_start_7
    invoke-interface {p1}, Lﹶﾞ/ʽﹳ;->ⁱˊ()Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_2
    return-object p1

    :goto_3
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1
.end method
