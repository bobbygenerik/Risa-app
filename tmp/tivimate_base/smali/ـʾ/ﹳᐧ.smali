.class public final Lـʾ/ﹳᐧ;
.super Lᴵˋ/ˊʻ;
.source "SourceFile"


# static fields
.field public static ˉʿ:Lـʾ/ﹳᐧ;

.field public static final ˉˆ:Ljava/lang/Object;

.field public static ᵔʾ:Lـʾ/ﹳᐧ;


# instance fields
.field public final ʼˎ:Lﹳי/ʽ;

.field public final ʽ:Landroid/content/Context;

.field public ˆʾ:Z

.field public final ˈ:Lᴵˋ/ⁱˊ;

.field public final ˑﹳ:Landroidx/work/impl/WorkDatabase;

.field public ٴﹶ:Landroid/content/BroadcastReceiver$PendingResult;

.field public final ᵎﹶ:Ljava/util/List;

.field public final ᵔᵢ:Lـʾ/ʽ;

.field public final ﾞʻ:Landroidx/leanback/widget/ʻٴ;

.field public final ﾞᴵ:Lᐧᵎ/ᵢי;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lـʾ/ﹳᐧ;->ˉʿ:Lـʾ/ﹳᐧ;

    sput-object v0, Lـʾ/ﹳᐧ;->ᵔʾ:Lـʾ/ﹳᐧ;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lـʾ/ﹳᐧ;->ˉˆ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lᴵˋ/ⁱˊ;Lᐧᵎ/ᵢי;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lـʾ/ʽ;Landroidx/leanback/widget/ʻٴ;)V
    .locals 13

    .prologue
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lᴵˋ/ˊʻ;-><init>(I)V

    iput-boolean v5, p0, Lـʾ/ﹳᐧ;->ˆʾ:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᵢי;->ﾞʻ(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v6, Lᴵˋ/ˏי;

    iget v8, p2, Lᴵˋ/ⁱˊ;->ᵔᵢ:I

    invoke-direct {v6, v8}, Lᴵˋ/ˏי;-><init>(I)V

    sget-object v8, Lᴵˋ/ˏי;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v9, Lᴵˋ/ˏי;->ʽ:Lᴵˋ/ˏי;

    if-nez v9, :cond_2

    sput-object v6, Lᴵˋ/ˏי;->ʽ:Lᴵˋ/ˏי;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_2
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lـʾ/ﹳᐧ;->ʽ:Landroid/content/Context;

    iput-object v1, p0, Lـʾ/ﹳᐧ;->ﾞᴵ:Lᐧᵎ/ᵢי;

    iput-object v2, p0, Lـʾ/ﹳᐧ;->ˑﹳ:Landroidx/work/impl/WorkDatabase;

    iput-object v4, p0, Lـʾ/ﹳᐧ;->ᵔᵢ:Lـʾ/ʽ;

    move-object/from16 v6, p7

    iput-object v6, p0, Lـʾ/ﹳᐧ;->ﾞʻ:Landroidx/leanback/widget/ʻٴ;

    iput-object p2, p0, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    iput-object v3, p0, Lـʾ/ﹳᐧ;->ᵎﹶ:Ljava/util/List;

    iget-object v6, v1, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Lᴵי/ˏי;

    invoke-static {v6}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v6

    new-instance v8, Lﹳי/ʽ;

    invoke-direct {v8, v2}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lـʾ/ﹳᐧ;->ʼˎ:Lﹳי/ʽ;

    iget-object v8, v1, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lʼﾞ/ˈʿ;

    sget-object v9, Lـʾ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    new-instance v9, Lـʾ/ﾞᴵ;

    invoke-direct {v9, v8, v3, p2, v2}, Lـʾ/ﾞᴵ;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lᴵˋ/ⁱˊ;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {v4, v9}, Lـʾ/ʽ;->ﹳٴ(Lـʾ/ﹳٴ;)V

    new-instance v0, Lˆﹶ/ʽ;

    invoke-direct {v0, p1, p0}, Lˆﹶ/ʽ;-><init>(Landroid/content/Context;Lـʾ/ﹳᐧ;)V

    invoke-virtual {v1, v0}, Lᐧᵎ/ᵢי;->ʼˎ(Ljava/lang/Runnable;)V

    sget-object v0, Lـʾ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p1}, Lˆﹶ/ٴﹶ;->ﹳٴ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v0

    iget-object v0, v0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const-string v1, "workspec"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lar/tvplayer/core/domain/ـˆ;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    iget-object v3, v0, Lʼﾞ/ˊʻ;->ﾞᴵ:Lʼﾞ/ٴﹶ;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    const/4 v8, 0x1

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v9, v3, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    invoke-virtual {v9, v1}, Lʼﾞ/ᐧﾞ;->ᵎﹶ([Ljava/lang/String;)Lʻᵢ/ˑﹳ;

    move-result-object v1

    iget-object v10, v1, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    iget-object v1, v1, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [I

    new-instance v11, Lʼⁱ/ˏⁱ;

    const/4 v12, 0x2

    move-object/from16 p4, v1

    move-object/from16 p6, v4

    move-object/from16 p3, v9

    move-object/from16 p5, v10

    move-object p2, v11

    move/from16 p7, v12

    invoke-direct/range {p2 .. p7}, Lʼⁱ/ˏⁱ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    move-object v1, p2

    new-instance v9, Lʿᵢ/ﹳᐧ;

    invoke-direct {v9, v1}, Lʿᵢ/ﹳᐧ;-><init>(Lᴵⁱ/ʼᐧ;)V

    iget-object v1, v3, Lʼﾞ/ٴﹶ;->ˆʾ:Lʼﾞ/ᵔﹳ;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lʼﾞ/ᵔﹳ;->ᵔᵢ:Lᵎˈ/ʽʽ;

    new-instance v3, Lʼﾞ/ᵔʾ;

    invoke-direct {v3, v1, v10, v5}, Lʼﾞ/ᵔʾ;-><init>(Lᵎˈ/ᵎﹶ;Ljava/io/Serializable;I)V

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_5

    const/4 v1, 0x2

    new-array v1, v1, [Lᵎˈ/ᵎﹶ;

    aput-object v9, v1, v5

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sget v3, Lᵎˈ/ʽﹳ;->ﹳٴ:I

    new-instance v3, Lʼᴵ/ʼˎ;

    invoke-direct {v3, v5, v1}, Lʼᴵ/ʼˎ;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lʿᵔ/ˈ;

    sget-object v5, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    const/4 v9, -0x2

    const/4 v10, 0x1

    move-object p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move/from16 p6, v8

    move/from16 p5, v9

    move/from16 p7, v10

    invoke-direct/range {p2 .. p7}, Lʿᵔ/ˈ;-><init>(Ljava/lang/Object;Lˈי/ᵔᵢ;III)V

    move-object v9, p2

    :cond_5
    invoke-static {v9}, Lᵎˈ/ˈٴ;->ˈ(Lᵎˈ/ᵎﹶ;)Lᵎˈ/ᵎﹶ;

    move-result-object v1

    new-instance v3, Lʼˋ/ٴﹶ;

    invoke-direct {v3, v1, v0, v2}, Lʼˋ/ٴﹶ;-><init>(Lᵎˈ/ᵎﹶ;Lʼﾞ/ˊʻ;Lar/tvplayer/core/domain/ـˆ;)V

    new-instance v0, Lـʾ/ʼˎ;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v4}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    new-instance v1, Lʼﾞ/ᵔʾ;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v0, v2}, Lʼﾞ/ᵔʾ;-><init>(Lᵎˈ/ᵎﹶ;Ljava/io/Serializable;I)V

    invoke-static {v1}, Lᵎˈ/ˈٴ;->ˈ(Lᵎˈ/ᵎﹶ;)Lᵎˈ/ᵎﹶ;

    move-result-object v0

    invoke-static {v0}, Lᵎˈ/ˈٴ;->ˑﹳ(Lᵎˈ/ᵎﹶ;)Lᵎˈ/ᵎﹶ;

    move-result-object v0

    new-instance v1, Lـʾ/ˆʾ;

    invoke-direct {v1, p1, v4}, Lـʾ/ˆʾ;-><init>(Landroid/content/Context;Lˈי/ˈ;)V

    new-instance p1, Lʼﾞ/ᵔʾ;

    invoke-direct {p1, v0, v1}, Lʼﾞ/ᵔʾ;-><init>(Lᵎˈ/ᵎﹶ;Lᴵⁱ/ʼᐧ;)V

    new-instance v0, Lar/tvplayer/core/domain/ⁱˊ;

    invoke-direct {v0, p1, v4, v7}, Lar/tvplayer/core/domain/ⁱˊ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-static {v6, v4, v0, v2}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    :cond_6
    return-void

    :goto_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static ˈⁱ(Landroid/content/Context;Lᴵˋ/ⁱˊ;)V
    .locals 3

    .prologue
    sget-object v0, Lـʾ/ﹳᐧ;->ˉˆ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lـʾ/ﹳᐧ;->ˉʿ:Lـʾ/ﹳᐧ;

    if-eqz v1, :cond_1

    sget-object v2, Lـʾ/ﹳᐧ;->ᵔʾ:Lـʾ/ﹳᐧ;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lـʾ/ﹳᐧ;->ᵔʾ:Lـʾ/ﹳᐧ;

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lʼ/ᵎﹶ;->ᵔʾ(Landroid/content/Context;Lᴵˋ/ⁱˊ;)Lـʾ/ﹳᐧ;

    move-result-object p0

    sput-object p0, Lـʾ/ﹳᐧ;->ᵔʾ:Lـʾ/ﹳᐧ;

    :cond_2
    sget-object p0, Lـʾ/ﹳᐧ;->ᵔʾ:Lـʾ/ﹳᐧ;

    sput-object p0, Lـʾ/ﹳᐧ;->ˉʿ:Lـʾ/ﹳᐧ;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ـˏ()Lـʾ/ﹳᐧ;
    .locals 2

    .prologue
    sget-object v0, Lـʾ/ﹳᐧ;->ˉˆ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lـʾ/ﹳᐧ;->ˉʿ:Lـʾ/ﹳᐧ;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lـʾ/ﹳᐧ;->ᵔʾ:Lـʾ/ﹳᐧ;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ﹳـ(Landroid/content/Context;)Lـʾ/ﹳᐧ;
    .locals 2

    .prologue
    sget-object v0, Lـʾ/ﹳᐧ;->ˉˆ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lـʾ/ﹳᐧ;->ـˏ()Lـʾ/ﹳᐧ;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Lᴵˋ/ﹳٴ;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lᴵˋ/ﹳٴ;

    check-cast v1, Lar/tvplayer/tv/TvPlayerApplication;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lᴵˋ/ⁱˊ;

    invoke-direct {v1}, Lᴵˋ/ⁱˊ;-><init>()V

    invoke-static {p0, v1}, Lـʾ/ﹳᐧ;->ˈⁱ(Landroid/content/Context;Lᴵˋ/ⁱˊ;)V

    invoke-static {p0}, Lـʾ/ﹳᐧ;->ﹳـ(Landroid/content/Context;)Lـʾ/ﹳᐧ;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ʼˈ(Ljava/lang/String;)Lᴵˋ/ˆʾ;
    .locals 5

    iget-object v0, p0, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    iget-object v0, v0, Lᴵˋ/ⁱˊ;->ˉʿ:Lᴵˋ/ˆʾ;

    const-string v1, "CancelWorkByName_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lـʾ/ﹳᐧ;->ﾞᴵ:Lᐧᵎ/ᵢי;

    iget-object v2, v2, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lʼﾞ/ˈʿ;

    new-instance v3, Lʽˋ/ـˆ;

    const/4 v4, 0x4

    invoke-direct {v3, p1, v4, p0}, Lʽˋ/ـˆ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔʾ(Lᴵˋ/ˆʾ;Ljava/lang/String;Ljava/util/concurrent/Executor;Lᴵⁱ/ﹳٴ;)Lᴵˋ/ˆʾ;

    move-result-object p1

    return-object p1
.end method

.method public final ˉـ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    iget-object v0, v0, Lᴵˋ/ⁱˊ;->ˉʿ:Lᴵˋ/ˆʾ;

    const-string v1, "ReschedulingWork"

    new-instance v2, Lיˋ/ˈ;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0}, Lיˋ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/bumptech/glide/ʽ;->ˉˆ()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lיˋ/ˈ;->ʽ()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw v0
.end method

.method public final ᴵˑ()V
    .locals 2

    .prologue
    sget-object v0, Lـʾ/ﹳᐧ;->ˉˆ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lـʾ/ﹳᐧ;->ˆʾ:Z

    iget-object v1, p0, Lـʾ/ﹳᐧ;->ٴﹶ:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lـʾ/ﹳᐧ;->ٴﹶ:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
