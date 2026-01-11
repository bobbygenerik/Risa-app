.class public final Lʿʾ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ﹳᐧ;
.implements Lʿʾ/ˏי;


# static fields
.field public static final ʼˎ:Z


# instance fields
.field public final ʽ:Lʾⁱ/ﾞᴵ;

.field public final ˈ:Lˑˋ/ˈ;

.field public final ˑﹳ:Lar/tvplayer/core/domain/ʽﹳ;

.field public final ᵎﹶ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ᵔᵢ:Lcom/parse/ٴʼ;

.field public final ⁱˊ:Lـˎ/ˈ;

.field public final ﹳٴ:Lcom/bumptech/glide/ﾞᴵ;

.field public final ﾞᴵ:Lᴵˈ/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lʿʾ/ˉʿ;->ʼˎ:Z

    return-void
.end method

.method public constructor <init>(Lʾⁱ/ﾞᴵ;Lﹳי/ʽ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;)V
    .locals 9

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʾ/ˉʿ;->ʽ:Lʾⁱ/ﾞᴵ;

    new-instance v0, Lᴵˈ/ᵔᵢ;

    invoke-direct {v0, p2}, Lᴵˈ/ᵔᵢ;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lʿʾ/ˉʿ;->ﾞᴵ:Lᴵˈ/ᵔᵢ;

    new-instance p2, Lcom/parse/ٴʼ;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lcom/parse/ٴʼ;-><init>(I)V

    iput-object p2, p0, Lʿʾ/ˉʿ;->ᵔᵢ:Lcom/parse/ٴʼ;

    monitor-enter p0

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p0, p2, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p2, Lـˎ/ˈ;

    const/16 v1, 0xb

    invoke-direct {p2, v1}, Lـˎ/ˈ;-><init>(I)V

    iput-object p2, p0, Lʿʾ/ˉʿ;->ⁱˊ:Lـˎ/ˈ;

    new-instance p2, Lcom/bumptech/glide/ﾞᴵ;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/bumptech/glide/ﾞᴵ;-><init>(I)V

    iput-object p2, p0, Lʿʾ/ˉʿ;->ﹳٴ:Lcom/bumptech/glide/ﾞᴵ;

    new-instance v2, Lˑˋ/ˈ;

    move-object v8, p0

    move-object v7, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v2 .. v8}, Lˑˋ/ˈ;-><init>(Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lʿʾ/ˉʿ;Lʿʾ/ˉʿ;)V

    iput-object v2, v7, Lʿʾ/ˉʿ;->ˈ:Lˑˋ/ˈ;

    new-instance p2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lᴵˈ/ᵔᵢ;)V

    iput-object p2, v7, Lʿʾ/ˉʿ;->ᵎﹶ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance p2, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(I)V

    iput-object p2, v7, Lʿʾ/ˉʿ;->ˑﹳ:Lar/tvplayer/core/domain/ʽﹳ;

    iput-object v7, p1, Lʾⁱ/ﾞᴵ;->ˈ:Lʿʾ/ˉʿ;

    return-void

    :catchall_0
    move-exception v0

    move-object v7, p0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, p0

    :goto_1
    move-object p1, v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public static ˈ(Ljava/lang/String;JLʿʾ/יـ;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p0, v0}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    nop

    return-void
.end method

.method public static ᵎﹶ(Lʿʾ/ᵢˏ;)V
    .locals 1

    .prologue
    instance-of v0, p0, Lʿʾ/ʽﹳ;

    if-eqz v0, :cond_0

    check-cast p0, Lʿʾ/ʽﹳ;

    invoke-virtual {p0}, Lʿʾ/ʽﹳ;->ˑﹳ()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ʽ(Lʿʾ/יـ;ZJ)Lʿʾ/ʽﹳ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lʿʾ/ˉʿ;->ᵔᵢ:Lcom/parse/ٴʼ;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʿʾ/ʽ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p2

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʿʾ/ʽﹳ;

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Lcom/parse/ٴʼ;->ٴᵢ(Lʿʾ/ʽ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    monitor-exit p2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lʿʾ/ʽﹳ;->ﹳٴ()V

    :cond_3
    if-eqz v2, :cond_5

    sget-boolean p2, Lʿʾ/ˉʿ;->ʼˎ:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    invoke-static {p2, p3, p4, p1}, Lʿʾ/ˉʿ;->ˈ(Ljava/lang/String;JLʿʾ/יـ;)V

    :cond_4
    return-object v2

    :cond_5
    invoke-virtual {p0, p1}, Lʿʾ/ˉʿ;->ⁱˊ(Lʿʾ/יـ;)Lʿʾ/ʽﹳ;

    move-result-object p2

    if-eqz p2, :cond_7

    sget-boolean v0, Lʿʾ/ˉʿ;->ʼˎ:Z

    if-eqz v0, :cond_6

    const-string v0, "Loaded resource from cache"

    invoke-static {v0, p3, p4, p1}, Lʿʾ/ˉʿ;->ˈ(Ljava/lang/String;JLʿʾ/יـ;)V

    :cond_6
    return-object p2

    :cond_7
    :goto_2
    return-object v0

    :goto_3
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ˑﹳ(Lʿʾ/ᵔﹳ;Lʿʾ/יـ;Lʿʾ/ʽﹳ;)V
    .locals 1

    .prologue
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v0, p3, Lʿʾ/ʽﹳ;->ʾˋ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ˉʿ;->ᵔᵢ:Lcom/parse/ٴʼ;

    invoke-virtual {v0, p2, p3}, Lcom/parse/ٴʼ;->ʾˋ(Lʼᵔ/ˑﹳ;Lʿʾ/ʽﹳ;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p3, p0, Lʿʾ/ˉʿ;->ﹳٴ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object p3, p3, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵔᵢ(Lcom/bumptech/glide/ˑﹳ;Ljava/lang/Object;Lʼᵔ/ˑﹳ;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/ᵎﹶ;Lʿʾ/ﾞʻ;Ljava/util/Map;ZZLʼᵔ/ᵔᵢ;ZZLⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;Lʿʾ/יـ;J)Lcom/parse/ٴʼ;
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    iget-object v14, v1, Lʿʾ/ˉʿ;->ﹳٴ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object v14, v14, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lʿʾ/ᵔﹳ;

    if-eqz v14, :cond_1

    invoke-virtual {v14, v9, v10}, Lʿʾ/ᵔﹳ;->ⁱˊ(Lⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;)V

    sget-boolean v0, Lʿʾ/ˉʿ;->ʼˎ:Z

    if-eqz v0, :cond_0

    const-string v0, "Added to existing load"

    invoke-static {v0, v12, v13, v11}, Lʿʾ/ˉʿ;->ˈ(Ljava/lang/String;JLʿʾ/יـ;)V

    :cond_0
    new-instance v0, Lcom/parse/ٴʼ;

    invoke-direct {v0, v1, v9, v14}, Lcom/parse/ٴʼ;-><init>(Lʿʾ/ˉʿ;Lⁱⁱ/ᵎﹶ;Lʿʾ/ᵔﹳ;)V

    return-object v0

    :cond_1
    iget-object v14, v1, Lʿʾ/ˉʿ;->ˈ:Lˑˋ/ˈ;

    iget-object v14, v14, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    check-cast v14, Lᵢ/ﹳٴ;

    invoke-virtual {v14}, Lᵢ/ﹳٴ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lʿʾ/ᵔﹳ;

    monitor-enter v14

    :try_start_0
    iput-object v11, v14, Lʿʾ/ᵔﹳ;->ᵎˊ:Lʿʾ/יـ;

    move/from16 v15, p14

    iput-boolean v15, v14, Lʿʾ/ᵔﹳ;->ᵔי:Z

    move/from16 v15, p15

    iput-boolean v15, v14, Lʿʾ/ᵔﹳ;->ˆﾞ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    iget-object v15, v1, Lʿʾ/ˉʿ;->ᵎﹶ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v12, v15, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v12, Lᵢ/ﹳٴ;

    invoke-virtual {v12}, Lᵢ/ﹳٴ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lʿʾ/ˆʾ;

    iget v13, v15, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v9, v12, Lʿʾ/ˆʾ;->ʾˋ:Lʿʾ/ʼˎ;

    iget-object v15, v12, Lʿʾ/ˆʾ;->ˈٴ:Lᴵˈ/ᵔᵢ;

    iput-object v0, v9, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    iput-object v2, v9, Lʿʾ/ʼˎ;->ˈ:Ljava/lang/Object;

    iput-object v3, v9, Lʿʾ/ʼˎ;->ᵔʾ:Lʼᵔ/ˑﹳ;

    iput v4, v9, Lʿʾ/ʼˎ;->ˑﹳ:I

    iput v5, v9, Lʿʾ/ʼˎ;->ﾞᴵ:I

    iput-object v7, v9, Lʿʾ/ʼˎ;->ʼᐧ:Lʿʾ/ﾞʻ;

    move-object/from16 v10, p6

    iput-object v10, v9, Lʿʾ/ʼˎ;->ᵎﹶ:Ljava/lang/Class;

    iput-object v15, v9, Lʿʾ/ʼˎ;->ᵔᵢ:Lᴵˈ/ᵔᵢ;

    move-object/from16 v10, p7

    iput-object v10, v9, Lʿʾ/ʼˎ;->ٴﹶ:Ljava/lang/Class;

    iput-object v6, v9, Lʿʾ/ʼˎ;->ˉˆ:Lcom/bumptech/glide/ᵎﹶ;

    iput-object v8, v9, Lʿʾ/ʼˎ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    move-object/from16 v10, p10

    iput-object v10, v9, Lʿʾ/ʼˎ;->ˆʾ:Ljava/util/Map;

    move/from16 v10, p11

    iput-boolean v10, v9, Lʿʾ/ʼˎ;->ᵔﹳ:Z

    move/from16 v10, p12

    iput-boolean v10, v9, Lʿʾ/ʼˎ;->ﹳᐧ:Z

    iput-object v0, v12, Lʿʾ/ˆʾ;->ˉٴ:Lcom/bumptech/glide/ˑﹳ;

    iput-object v3, v12, Lʿʾ/ˆʾ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    iput-object v6, v12, Lʿʾ/ˆʾ;->ٴʼ:Lcom/bumptech/glide/ᵎﹶ;

    iput-object v11, v12, Lʿʾ/ˆʾ;->ᵎˊ:Lʿʾ/יـ;

    iput v4, v12, Lʿʾ/ˆʾ;->ᵔי:I

    iput v5, v12, Lʿʾ/ˆʾ;->ˆﾞ:I

    iput-object v7, v12, Lʿʾ/ˆʾ;->ᵔٴ:Lʿʾ/ﾞʻ;

    iput-object v8, v12, Lʿʾ/ˆʾ;->ˈʿ:Lʼᵔ/ᵔᵢ;

    iput-object v14, v12, Lʿʾ/ˆʾ;->ˑٴ:Lʿʾ/ᵔﹳ;

    iput v13, v12, Lʿʾ/ˆʾ;->ˋᵔ:I

    const/4 v0, 0x1

    iput v0, v12, Lʿʾ/ˆʾ;->ˏᵢ:I

    iput-object v2, v12, Lʿʾ/ˆʾ;->ʼˈ:Ljava/lang/Object;

    iget-object v0, v1, Lʿʾ/ˉʿ;->ﹳٴ:Lcom/bumptech/glide/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    invoke-virtual {v14, v9, v10}, Lʿʾ/ᵔﹳ;->ⁱˊ(Lⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v14, v12}, Lʿʾ/ᵔﹳ;->ٴﹶ(Lʿʾ/ˆʾ;)V

    sget-boolean v0, Lʿʾ/ˉʿ;->ʼˎ:Z

    if-eqz v0, :cond_2

    const-string v0, "Started new load"

    move-wide/from16 v12, p19

    invoke-static {v0, v12, v13, v11}, Lʿʾ/ˉʿ;->ˈ(Ljava/lang/String;JLʿʾ/יـ;)V

    :cond_2
    new-instance v0, Lcom/parse/ٴʼ;

    invoke-direct {v0, v1, v9, v14}, Lcom/parse/ٴʼ;-><init>(Lʿʾ/ˉʿ;Lⁱⁱ/ᵎﹶ;Lʿʾ/ᵔﹳ;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ⁱˊ(Lʿʾ/יـ;)Lʿʾ/ʽﹳ;
    .locals 9

    .prologue
    iget-object v1, p0, Lʿʾ/ˉʿ;->ʽ:Lʾⁱ/ﾞᴵ;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʿٴ/ʼˎ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    monitor-exit v1

    move-object v0, v2

    goto :goto_0

    :cond_0
    :try_start_1
    iget-wide v3, v1, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget v5, v0, Lʿٴ/ʼˎ;->ⁱˊ:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget-object v0, v0, Lʿٴ/ʼˎ;->ﹳٴ:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :goto_0
    move-object v4, v0

    check-cast v4, Lʿʾ/ᵢˏ;

    if-nez v4, :cond_1

    :goto_1
    move-object v8, p0

    move-object v7, p1

    goto :goto_2

    :cond_1
    instance-of v0, v4, Lʿʾ/ʽﹳ;

    if-eqz v0, :cond_2

    move-object v2, v4

    check-cast v2, Lʿʾ/ʽﹳ;

    goto :goto_1

    :cond_2
    new-instance v3, Lʿʾ/ʽﹳ;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v8, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lʿʾ/ʽﹳ;-><init>(Lʿʾ/ᵢˏ;ZZLʼᵔ/ˑﹳ;Lʿʾ/ˏי;)V

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lʿʾ/ʽﹳ;->ﹳٴ()V

    iget-object p1, v8, Lʿʾ/ˉʿ;->ᵔᵢ:Lcom/parse/ٴʼ;

    invoke-virtual {p1, v7, v2}, Lcom/parse/ٴʼ;->ʾˋ(Lʼᵔ/ˑﹳ;Lʿʾ/ʽﹳ;)V

    :cond_3
    return-object v2

    :catchall_0
    move-exception v0

    move-object v8, p0

    :goto_3
    move-object p1, v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public final ﹳٴ(Lcom/bumptech/glide/ˑﹳ;Ljava/lang/Object;Lʼᵔ/ˑﹳ;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/ᵎﹶ;Lʿʾ/ﾞʻ;Lʿٴ/ʽ;ZZLʼᵔ/ᵔᵢ;ZZLⁱⁱ/ᵎﹶ;Lʿʿ/ﹳٴ;)Lcom/parse/ٴʼ;
    .locals 23

    .prologue
    move-object/from16 v2, p0

    sget-boolean v0, Lʿʾ/ˉʿ;->ʼˎ:Z

    if-eqz v0, :cond_0

    sget v0, Lʿٴ/ᵔᵢ;->ⁱˊ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v3, v2, Lʿʾ/ˉʿ;->ⁱˊ:Lـˎ/ˈ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lʿʾ/יـ;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Lʿʾ/יـ;-><init>(Ljava/lang/Object;Lʼᵔ/ˑﹳ;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lʼᵔ/ᵔᵢ;)V

    monitor-enter p0

    move/from16 v3, p14

    :try_start_0
    invoke-virtual {v2, v4, v3, v0, v1}, Lʿʾ/ˉʿ;->ʽ(Lʿʾ/יـ;ZJ)Lʿʾ/ʽﹳ;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v22}, Lʿʾ/ˉʿ;->ᵔᵢ(Lcom/bumptech/glide/ˑﹳ;Ljava/lang/Object;Lʼᵔ/ˑﹳ;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/ᵎﹶ;Lʿʾ/ﾞʻ;Ljava/util/Map;ZZLʼᵔ/ᵔᵢ;ZZLⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;Lʿʾ/יـ;J)Lcom/parse/ٴʼ;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object/from16 v3, p16

    invoke-virtual {v3, v0, v1, v2}, Lⁱⁱ/ᵎﹶ;->ٴﹶ(Lʿʾ/ᵢˏ;IZ)V

    const/4 v0, 0x0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ﾞᴵ(Lʼᵔ/ˑﹳ;Lʿʾ/ʽﹳ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʿʾ/ˉʿ;->ᵔᵢ:Lcom/parse/ٴʼ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʿʾ/ʽ;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lʿʾ/ʽ;->ʽ:Lʿʾ/ᵢˏ;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    iget-boolean v0, p2, Lʿʾ/ʽﹳ;->ʾˋ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʿʾ/ˉʿ;->ʽ:Lʾⁱ/ﾞᴵ;

    invoke-virtual {v0, p1, p2}, Lʿٴ/ˆʾ;->ˈ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʿʾ/ᵢˏ;

    return-void

    :cond_1
    iget-object p1, p0, Lʿʾ/ˉʿ;->ˑﹳ:Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lar/tvplayer/core/domain/ʽﹳ;->ˆʾ(Lʿʾ/ᵢˏ;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
