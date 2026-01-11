.class public final Lⁱᴵ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱᴵ/ﾞʻ;


# instance fields
.field public ʼˈ:Landroid/os/Handler;

.field public final ʽʽ:Lⁱᴵ/ʽﹳ;

.field public final ʾˋ:Ljava/util/UUID;

.field public final ˆﾞ:Ljava/util/Set;

.field public ˈʿ:Lⁱᴵ/ᵔﹳ;

.field public final ˈٴ:Ljava/util/HashMap;

.field public final ˉٴ:Lʻᴵ/יـ;

.field public final ˊʻ:Z

.field public ˊˋ:Landroid/os/Looper;

.field public ˋᵔ:Lⁱᴵ/ʽ;

.field public ˑٴ:Lⁱᴵ/ʽ;

.field public ـˏ:Lʻʿ/יـ;

.field public final ٴʼ:J

.field public final ٴᵢ:Lˑʼ/ᵎˊ;

.field public final ᴵˊ:Lᵔﹶ/ˉʿ;

.field public final ᴵᵔ:[I

.field public final ᵎˊ:Ljava/util/ArrayList;

.field public final ᵎⁱ:Lⁱʽ/ﹳٴ;

.field public final ᵔי:Ljava/util/Set;

.field public ᵔٴ:I

.field public volatile ﹳـ:Lʻᐧ/ᵔﹳ;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lⁱᴵ/ʽﹳ;Ljava/util/HashMap;[IZLʻᴵ/יـ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ʾˋ:Ljava/util/UUID;

    sget-object p1, Lⁱᴵ/ˏי;->ˈٴ:Lᵔﹶ/ˉʿ;

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ᴵˊ:Lᵔﹶ/ˉʿ;

    iput-object p2, p0, Lⁱᴵ/ˑﹳ;->ʽʽ:Lⁱᴵ/ʽﹳ;

    iput-object p3, p0, Lⁱᴵ/ˑﹳ;->ˈٴ:Ljava/util/HashMap;

    iput-object p4, p0, Lⁱᴵ/ˑﹳ;->ᴵᵔ:[I

    iput-boolean p5, p0, Lⁱᴵ/ˑﹳ;->ˊʻ:Z

    iput-object p6, p0, Lⁱᴵ/ˑﹳ;->ˉٴ:Lʻᴵ/יـ;

    new-instance p1, Lˑʼ/ᵎˊ;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lˑʼ/ᵎˊ;-><init>(I)V

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ٴᵢ:Lˑʼ/ᵎˊ;

    new-instance p1, Lⁱʽ/ﹳٴ;

    invoke-direct {p1, p0}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ᵎⁱ:Lⁱʽ/ﹳٴ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ᵎˊ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ᵔי:Ljava/util/Set;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ˆﾞ:Ljava/util/Set;

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lⁱᴵ/ˑﹳ;->ٴʼ:J

    return-void
.end method

.method public static ʽ(Lⁱᴵ/ʽ;)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lⁱᴵ/ʽ;->ˉˆ()V

    iget v0, p0, Lⁱᴵ/ʽ;->ˉˆ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lⁱᴵ/ʽ;->ﾞᴵ()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Landroid/media/ResourceBusyException;

    if-nez v0, :cond_2

    invoke-static {p0}, Lˈˊ/ˉˆ;->ـˆ(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public static ٴﹶ(Lʽⁱ/ᵔʾ;Ljava/util/UUID;Z)Ljava/util/ArrayList;
    .locals 4

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lʽⁱ/ᵔʾ;->ˈٴ:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lʽⁱ/ᵔʾ;->ˈٴ:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lʽⁱ/ᵔʾ;->ʾˋ:[Lʽⁱ/ˉʿ;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lʽⁱ/ˉʿ;->ﹳٴ(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lʽⁱ/ˉʿ;->ﹳٴ(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, v2, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final ʼˎ(Landroid/os/Looper;Lʻʿ/יـ;)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    if-nez v0, :cond_0

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lⁱᴵ/ˑﹳ;->ʼˈ:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object p1, p0, Lⁱᴵ/ˑﹳ;->ʼˈ:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    iput-object p2, p0, Lⁱᴵ/ˑﹳ;->ـˏ:Lʻʿ/יـ;

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˆʾ(Lⁱᴵ/ʼˎ;Lʽⁱ/ﹳᐧ;)Lⁱᴵ/ٴﹶ;
    .locals 3

    .prologue
    iget v0, p0, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    new-instance v0, Lⁱᴵ/ˈ;

    invoke-direct {v0, p0, p1}, Lⁱᴵ/ˈ;-><init>(Lⁱᴵ/ˑﹳ;Lⁱᴵ/ʼˎ;)V

    iget-object p1, p0, Lⁱᴵ/ˑﹳ;->ʼˈ:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lᐧᵢ/ˉʿ;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2, p2}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final ˈ(Ljava/util/List;ZLⁱᴵ/ʼˎ;)Lⁱᴵ/ʽ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lⁱᴵ/ˑﹳ;->ˊʻ:Z

    or-int v8, v1, p2

    new-instance v2, Lⁱᴵ/ʽ;

    iget-object v4, v0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    iget-object v13, v0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Lⁱᴵ/ˑﹳ;->ـˏ:Lʻʿ/יـ;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lⁱᴵ/ˑﹳ;->ʾˋ:Ljava/util/UUID;

    iget-object v5, v0, Lⁱᴵ/ˑﹳ;->ٴᵢ:Lˑʼ/ᵎˊ;

    iget-object v6, v0, Lⁱᴵ/ˑﹳ;->ᵎⁱ:Lⁱʽ/ﹳٴ;

    const/4 v10, 0x0

    iget-object v11, v0, Lⁱᴵ/ˑﹳ;->ˈٴ:Ljava/util/HashMap;

    iget-object v12, v0, Lⁱᴵ/ˑﹳ;->ʽʽ:Lⁱᴵ/ʽﹳ;

    iget-object v14, v0, Lⁱᴵ/ˑﹳ;->ˉٴ:Lʻᴵ/יـ;

    move-object/from16 v7, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v15}, Lⁱᴵ/ʽ;-><init>(Ljava/util/UUID;Lⁱᴵ/ᵔﹳ;Lˑʼ/ᵎˊ;Lⁱʽ/ﹳٴ;Ljava/util/List;ZZ[BLjava/util/HashMap;Lⁱᴵ/ʽﹳ;Landroid/os/Looper;Lʻᴵ/יـ;Lʻʿ/יـ;)V

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Lⁱᴵ/ʽ;->ʽ(Lⁱᴵ/ʼˎ;)V

    iget-wide v3, v0, Lⁱᴵ/ˑﹳ;->ٴʼ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lⁱᴵ/ʽ;->ʽ(Lⁱᴵ/ʼˎ;)V

    :cond_0
    return-object v2
.end method

.method public final ˉʿ(Z)V
    .locals 2

    .prologue
    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, v1, p1}, Lᐧˎ/ﹳٴ;->ᴵᵔ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, p1, v1}, Lᐧˎ/ﹳٴ;->ᴵᵔ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final ˑﹳ(Lⁱᴵ/ʼˎ;Lʽⁱ/ﹳᐧ;)Lⁱᴵ/ﾞᴵ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lⁱᴵ/ˑﹳ;->ˉʿ(Z)V

    iget v1, p0, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ˊˋ:Landroid/os/Looper;

    invoke-virtual {p0, v0, p1, p2, v2}, Lⁱᴵ/ˑﹳ;->ⁱˊ(Landroid/os/Looper;Lⁱᴵ/ʼˎ;Lʽⁱ/ﹳᐧ;Z)Lⁱᴵ/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎﹶ(Lʽⁱ/ﹳᐧ;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lⁱᴵ/ˑﹳ;->ˉʿ(Z)V

    iget-object v1, p0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lⁱᴵ/ᵔﹳ;->ᵔﹳ()I

    move-result v1

    iget-object v2, p1, Lʽⁱ/ﹳᐧ;->ﹳᐧ:Lʽⁱ/ᵔʾ;

    if-nez v2, :cond_3

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {p1}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result p1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lⁱᴵ/ˑﹳ;->ᴵᵔ:[I

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_1
    if-eq v2, v5, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lⁱᴵ/ˑﹳ;->ʾˋ:Ljava/util/UUID;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lⁱᴵ/ˑﹳ;->ٴﹶ(Lʽⁱ/ᵔʾ;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v2, Lʽⁱ/ᵔʾ;->ˈٴ:I

    if-ne v4, v3, :cond_7

    iget-object v4, v2, Lʽⁱ/ᵔʾ;->ʾˋ:[Lʽⁱ/ˉʿ;

    aget-object v0, v4, v0

    sget-object v4, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Lʽⁱ/ˉʿ;->ﹳٴ(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultDrmSessionMgr"

    invoke-static {v0, p1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, v2, Lʽⁱ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v0, "cenc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_7

    goto :goto_2

    :cond_6
    const-string v0, "cbc1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    return v3

    :cond_8
    :goto_2
    return v1
.end method

.method public final ᵔᵢ()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lⁱᴵ/ˑﹳ;->ˉʿ(Z)V

    iget v0, p0, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    if-nez v0, :cond_1

    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ʾˋ:Ljava/util/UUID;

    iget-object v1, p0, Lⁱᴵ/ˑﹳ;->ᴵˊ:Lᵔﹶ/ˉʿ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Lⁱᴵ/ˏי;

    invoke-direct {v1, v0}, Lⁱᴵ/ˏי;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v2, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameworkMediaDrm"

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ʼᐧ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔﹶ/ᵔʾ;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lᵔﹶ/ᵔʾ;-><init>(I)V

    :goto_2
    iput-object v1, p0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v2, 0xb

    invoke-direct {v0, v2, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v0}, Lⁱᴵ/ᵔﹳ;->ᵔᵢ(Lᐧﹳ/ʽ;)V

    return-void

    :cond_1
    iget-wide v0, p0, Lⁱᴵ/ˑﹳ;->ٴʼ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lⁱᴵ/ˑﹳ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ʽ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lⁱᴵ/ʽ;->ʽ(Lⁱᴵ/ʼˎ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    return-void
.end method

.method public final ⁱˊ(Landroid/os/Looper;Lⁱᴵ/ʼˎ;Lʽⁱ/ﹳᐧ;Z)Lⁱᴵ/ﾞᴵ;
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ﹳـ:Lʻᐧ/ᵔﹳ;

    if-nez v0, :cond_0

    new-instance v0, Lʻᐧ/ᵔﹳ;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lʻᐧ/ᵔﹳ;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p0, Lⁱᴵ/ˑﹳ;->ﹳـ:Lʻᐧ/ᵔﹳ;

    :cond_0
    iget-object p1, p3, Lʽⁱ/ﹳᐧ;->ﹳᐧ:Lʽⁱ/ᵔʾ;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p3, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {p1}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lⁱᴵ/ᵔﹳ;->ᵔﹳ()I

    move-result p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p3, v1, :cond_1

    sget-boolean p3, Lⁱᴵ/ﹳᐧ;->ʽ:Z

    if-eqz p3, :cond_1

    goto :goto_3

    :cond_1
    iget-object p3, p0, Lⁱᴵ/ˑﹳ;->ᴵᵔ:[I

    :goto_0
    array-length v1, p3

    const/4 v3, -0x1

    if-ge v0, v1, :cond_3

    aget v1, p3, v0

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_6

    invoke-interface {p2}, Lⁱᴵ/ᵔﹳ;->ᵔﹳ()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lⁱᴵ/ˑﹳ;->ˑٴ:Lⁱᴵ/ʽ;

    if-nez p1, :cond_5

    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    invoke-virtual {p0, p1, p2, v2, p4}, Lⁱᴵ/ˑﹳ;->ﾞᴵ(Ljava/util/List;ZLⁱᴵ/ʼˎ;Z)Lⁱᴵ/ʽ;

    move-result-object p1

    iget-object p2, p0, Lⁱᴵ/ˑﹳ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ˑٴ:Lⁱᴵ/ʽ;

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Lⁱᴵ/ʽ;->ʽ(Lⁱᴵ/ʼˎ;)V

    :goto_2
    iget-object p1, p0, Lⁱᴵ/ˑﹳ;->ˑٴ:Lⁱᴵ/ʽ;

    return-object p1

    :cond_6
    :goto_3
    return-object v2

    :cond_7
    iget-object p3, p0, Lⁱᴵ/ˑﹳ;->ʾˋ:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Lⁱᴵ/ˑﹳ;->ٴﹶ(Lʽⁱ/ᵔʾ;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object p3, p0, Lⁱᴵ/ˑﹳ;->ʾˋ:Ljava/util/UUID;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Media does not support uuid: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    invoke-static {p3, p4, p1}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lⁱᴵ/ʼˎ;->ˈ(Ljava/lang/Exception;)V

    :cond_8
    new-instance p2, Lⁱᴵ/ᵔʾ;

    new-instance p3, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    const/16 p4, 0x1773

    invoke-direct {p3, p4, p1}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(ILjava/lang/Throwable;)V

    invoke-direct {p2, p3}, Lⁱᴵ/ᵔʾ;-><init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p2

    :cond_9
    iget-object p3, p0, Lⁱᴵ/ˑﹳ;->ˋᵔ:Lⁱᴵ/ʽ;

    if-nez p3, :cond_a

    invoke-virtual {p0, p1, v0, p2, p4}, Lⁱᴵ/ˑﹳ;->ﾞᴵ(Ljava/util/List;ZLⁱᴵ/ʼˎ;Z)Lⁱᴵ/ʽ;

    move-result-object p1

    iput-object p1, p0, Lⁱᴵ/ˑﹳ;->ˋᵔ:Lⁱᴵ/ʽ;

    iget-object p2, p0, Lⁱᴵ/ˑﹳ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_a
    invoke-virtual {p3, p2}, Lⁱᴵ/ʽ;->ʽ(Lⁱᴵ/ʼˎ;)V

    return-object p3
.end method

.method public final ﹳٴ()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lⁱᴵ/ˑﹳ;->ˉʿ(Z)V

    iget v1, p0, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    sub-int/2addr v1, v0

    iput v1, p0, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lⁱᴵ/ˑﹳ;->ٴʼ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lⁱᴵ/ˑﹳ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱᴵ/ʽ;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lⁱᴵ/ʽ;->ˈ(Lⁱᴵ/ʼˎ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ᵔי:Ljava/util/Set;

    invoke-static {v0}, Lʼʻ/ᵔٴ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵔٴ;

    move-result-object v0

    invoke-virtual {v0}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ˈ;

    invoke-virtual {v1}, Lⁱᴵ/ˈ;->ﹳٴ()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lⁱᴵ/ˑﹳ;->ﾞʻ()V

    return-void
.end method

.method public final ﾞʻ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    if-eqz v0, :cond_0

    iget v0, p0, Lⁱᴵ/ˑﹳ;->ᵔٴ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ᵔי:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lⁱᴵ/ᵔﹳ;->ﹳٴ()V

    const/4 v0, 0x0

    iput-object v0, p0, Lⁱᴵ/ˑﹳ;->ˈʿ:Lⁱᴵ/ᵔﹳ;

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(Ljava/util/List;ZLⁱᴵ/ʼˎ;Z)Lⁱᴵ/ʽ;
    .locals 9

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lⁱᴵ/ˑﹳ;->ˈ(Ljava/util/List;ZLⁱᴵ/ʼˎ;)Lⁱᴵ/ʽ;

    move-result-object v0

    invoke-static {v0}, Lⁱᴵ/ˑﹳ;->ʽ(Lⁱᴵ/ʽ;)Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, p0, Lⁱᴵ/ˑﹳ;->ٴʼ:J

    const/4 v6, 0x0

    iget-object v7, p0, Lⁱᴵ/ˑﹳ;->ˆﾞ:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v7}, Lʼʻ/ᵔٴ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵔٴ;

    move-result-object v1

    invoke-virtual {v1}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lⁱᴵ/ﾞᴵ;

    invoke-interface {v8, v6}, Lⁱᴵ/ﾞᴵ;->ˈ(Lⁱᴵ/ʼˎ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Lⁱᴵ/ʽ;->ˈ(Lⁱᴵ/ʼˎ;)V

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Lⁱᴵ/ʽ;->ˈ(Lⁱᴵ/ʼˎ;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lⁱᴵ/ˑﹳ;->ˈ(Ljava/util/List;ZLⁱᴵ/ʼˎ;)Lⁱᴵ/ʽ;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lⁱᴵ/ˑﹳ;->ʽ(Lⁱᴵ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    iget-object p4, p0, Lⁱᴵ/ˑﹳ;->ᵔי:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p4}, Lʼʻ/ᵔٴ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵔٴ;

    move-result-object p4

    invoke-virtual {p4}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ˈ;

    invoke-virtual {v1}, Lⁱᴵ/ˈ;->ﹳٴ()V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {v7}, Lʼʻ/ᵔٴ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵔٴ;

    move-result-object p4

    invoke-virtual {p4}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ﾞᴵ;

    invoke-interface {v1, v6}, Lⁱᴵ/ﾞᴵ;->ˈ(Lⁱᴵ/ʼˎ;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p3}, Lⁱᴵ/ʽ;->ˈ(Lⁱᴵ/ʼˎ;)V

    cmp-long p4, v4, v2

    if-eqz p4, :cond_5

    invoke-virtual {v0, v6}, Lⁱᴵ/ʽ;->ˈ(Lⁱᴵ/ʼˎ;)V

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lⁱᴵ/ˑﹳ;->ˈ(Ljava/util/List;ZLⁱᴵ/ʼˎ;)Lⁱᴵ/ʽ;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method
