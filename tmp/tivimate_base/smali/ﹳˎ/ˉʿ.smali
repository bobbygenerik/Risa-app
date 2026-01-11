.class public final Lﹳˎ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final יـ:Ljava/nio/charset/Charset;

.field public static final ﹳᐧ:Lˑˋ/ﹳٴ;


# instance fields
.field public final ʼˎ:Lˆי/ˑﹳ;

.field public final ʼᐧ:Lˏـ/ᵎﹶ;

.field public final ʽ:Lـʾ/ᵔﹳ;

.field public final ˆʾ:Lיˎ/ⁱˊ;

.field public final ˈ:Lˉˆ/ˎـ;

.field public final ˉʿ:Lﹳʽ/ᴵᵔ;

.field public final ˉˆ:Lˏـ/ᵎﹶ;

.field public final ˑﹳ:Lˈᵔ/ˈ;

.field public final ٴﹶ:Lˎ/ﹳٴ;

.field public final ᵎﹶ:Lˑˋ/ˈ;

.field public ᵔʾ:Lﹳˎ/יـ;

.field public final ᵔᵢ:Lﹳˎ/ﹳٴ;

.field public final ᵔﹳ:Lˏـ/ᵎﹶ;

.field public final ⁱˊ:Lʼٴ/ٴᵢ;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞʻ:Lﹳˎ/ʼˎ;

.field public final ﾞᴵ:Lﹳˎ/ʻٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˑˋ/ﹳٴ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lˑˋ/ﹳٴ;-><init>(I)V

    sput-object v0, Lﹳˎ/ˉʿ;->ﹳᐧ:Lˑˋ/ﹳٴ;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lﹳˎ/ˉʿ;->יـ:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lﹳˎ/ʻٴ;Lʼٴ/ٴᵢ;Lˑˋ/ˈ;Lـʾ/ᵔﹳ;Lﹳˎ/ﹳٴ;Lˉˆ/ˎـ;Lˆי/ˑﹳ;Lﹳʽ/ᴵᵔ;Lיˎ/ⁱˊ;Lˎ/ﹳٴ;Lﹳˎ/ʼˎ;Lˈᵔ/ˈ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˏـ/ᵎﹶ;

    invoke-direct {v0}, Lˏـ/ᵎﹶ;-><init>()V

    iput-object v0, p0, Lﹳˎ/ˉʿ;->ˉˆ:Lˏـ/ᵎﹶ;

    new-instance v0, Lˏـ/ᵎﹶ;

    invoke-direct {v0}, Lˏـ/ᵎﹶ;-><init>()V

    iput-object v0, p0, Lﹳˎ/ˉʿ;->ʼᐧ:Lˏـ/ᵎﹶ;

    new-instance v0, Lˏـ/ᵎﹶ;

    invoke-direct {v0}, Lˏـ/ᵎﹶ;-><init>()V

    iput-object v0, p0, Lﹳˎ/ˉʿ;->ᵔﹳ:Lˏـ/ᵎﹶ;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lﹳˎ/ˉʿ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lﹳˎ/ˉʿ;->ﾞᴵ:Lﹳˎ/ʻٴ;

    iput-object p3, p0, Lﹳˎ/ˉʿ;->ⁱˊ:Lʼٴ/ٴᵢ;

    iput-object p4, p0, Lﹳˎ/ˉʿ;->ᵎﹶ:Lˑˋ/ˈ;

    iput-object p5, p0, Lﹳˎ/ˉʿ;->ʽ:Lـʾ/ᵔﹳ;

    iput-object p6, p0, Lﹳˎ/ˉʿ;->ᵔᵢ:Lﹳˎ/ﹳٴ;

    iput-object p7, p0, Lﹳˎ/ˉʿ;->ˈ:Lˉˆ/ˎـ;

    iput-object p8, p0, Lﹳˎ/ˉʿ;->ʼˎ:Lˆי/ˑﹳ;

    iput-object p10, p0, Lﹳˎ/ˉʿ;->ˆʾ:Lיˎ/ⁱˊ;

    iput-object p11, p0, Lﹳˎ/ˉʿ;->ٴﹶ:Lˎ/ﹳٴ;

    iput-object p12, p0, Lﹳˎ/ˉʿ;->ﾞʻ:Lﹳˎ/ʼˎ;

    iput-object p9, p0, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    iput-object p13, p0, Lﹳˎ/ˉʿ;->ˑﹳ:Lˈᵔ/ˈ;

    return-void
.end method

.method public static ﹳٴ(Lﹳˎ/ˉʿ;)Lˏـ/ˉʿ;
    .locals 9

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FirebaseCrashlytics"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lﹳˎ/ˉʿ;->ᵎﹶ:Lˑˋ/ˈ;

    iget-object v2, v2, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    sget-object v3, Lﹳˎ/ˉʿ;->ﹳᐧ:Lˑˋ/ﹳٴ;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lˑˋ/ˈ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    nop

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v5

    goto :goto_1

    :catch_0
    const-string v5, "Logging app exception event to Firebase Analytics"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    nop

    :cond_0
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    new-instance v6, Lﹳˎ/ﾞʻ;

    invoke-direct {v6, p0, v7, v8}, Lﹳˎ/ﾞʻ;-><init>(Lﹳˎ/ˉʿ;J)V

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/ᵎ;->ˑﹳ(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lˏـ/ˉʿ;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not parse app exception timestamp from file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ʻٴ(Ljava/util/List;)Lˏـ/ˉʿ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 33

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long v10, v2, v8

    const-string v0, "Opening a new session with ID "

    invoke-static {v0, v4}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    const/4 v12, 0x3

    invoke-static {v2, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    const-string v2, "FirebaseCrashlytics"

    nop

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, v1, Lﹳˎ/ˉʿ;->ﾞᴵ:Lﹳˎ/ʻٴ;

    iget-object v3, v1, Lﹳˎ/ˉʿ;->ᵔᵢ:Lﹳˎ/ﹳٴ;

    iget-object v15, v2, Lﹳˎ/ʻٴ;->ʽ:Ljava/lang/String;

    iget-object v5, v3, Lﹳˎ/ﹳٴ;->ﾞᴵ:Ljava/lang/String;

    iget-object v6, v3, Lﹳˎ/ﹳٴ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {v2}, Lﹳˎ/ʻٴ;->ʽ()Lﹳˎ/ʽ;

    move-result-object v2

    iget-object v2, v2, Lﹳˎ/ʽ;->ﹳٴ:Ljava/lang/String;

    iget-object v7, v3, Lﹳˎ/ﹳٴ;->ˈ:Ljava/lang/String;

    const/16 v21, 0x1

    const/4 v14, 0x4

    if-eqz v7, :cond_1

    move v7, v14

    goto :goto_0

    :cond_1
    move/from16 v7, v21

    :goto_0
    invoke-static {v7}, Lﹳˎ/ˆʾ;->ﹳٴ(I)I

    move-result v19

    iget-object v3, v3, Lﹳˎ/ﹳٴ;->ᵔᵢ:Lˑʼ/ᵎˊ;

    move v7, v14

    new-instance v14, Lˈˋ/ʻˋ;

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v20}, Lˈˋ/ʻˋ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILˑʼ/ᵎˊ;)V

    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {}, Lﹳˎ/ᵎﹶ;->ᵎﹶ()Z

    move-result v3

    new-instance v5, Lˈˋ/ٴﹳ;

    invoke-direct {v5, v3}, Lˈˋ/ٴﹳ;-><init>(Z)V

    iget-object v3, v1, Lﹳˎ/ˉʿ;->ﹳٴ:Landroid/content/Context;

    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    move-wide/from16 v18, v8

    int-to-long v8, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v27, v8, v6

    sget-object v6, Lﹳˎ/ﾞᴵ;->ʾˋ:Lﹳˎ/ﾞᴵ;

    const-string v7, "FirebaseCrashlytics"

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_2

    const-string v9, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_4

    nop

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lﹳˎ/ﾞᴵ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹳˎ/ﾞᴵ;

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v7

    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v24

    invoke-static {v3}, Lﹳˎ/ᵎﹶ;->ﹳٴ(Landroid/content/Context;)J

    move-result-wide v25

    invoke-static {}, Lﹳˎ/ᵎﹶ;->ﾞᴵ()Z

    move-result v29

    invoke-static {}, Lﹳˎ/ᵎﹶ;->ʽ()I

    move-result v30

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-instance v22, Lˈˋ/ˑʼ;

    invoke-direct/range {v22 .. v30}, Lˈˋ/ˑʼ;-><init>(IIJJZI)V

    move/from16 v20, v12

    move-object/from16 v7, v22

    iget-object v12, v1, Lﹳˎ/ˉʿ;->ˆʾ:Lיˎ/ⁱˊ;

    new-instance v13, Lˈˋ/ﹳﹳ;

    invoke-direct {v13, v14, v5, v7}, Lˈˋ/ﹳﹳ;-><init>(Lˈˋ/ʻˋ;Lˈˋ/ٴﹳ;Lˈˋ/ˑʼ;)V

    invoke-virtual {v12, v4, v10, v11, v13}, Lיˎ/ⁱˊ;->ˈ(Ljava/lang/String;JLˈˋ/ﹳﹳ;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    move-object v5, v3

    iget-object v3, v1, Lﹳˎ/ˉʿ;->ˈ:Lˉˆ/ˎـ;

    iget-object v7, v3, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    monitor-enter v12

    :try_start_0
    iput-object v4, v3, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    iget-object v7, v3, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    check-cast v7, Lcom/bumptech/glide/ʼˎ;

    iget-object v7, v7, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˆי/ˈ;

    invoke-virtual {v7}, Lˆי/ˈ;->ﹳٴ()Ljava/util/Map;

    move-result-object v7

    iget-object v13, v3, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v13, Lʽᴵ/ʾᵎ;

    invoke-virtual {v13}, Lʽᴵ/ʾᵎ;->ⁱˊ()Ljava/util/List;

    move-result-object v13

    iget-object v14, v3, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v14, Lˈᵔ/ˈ;

    iget-object v14, v14, Lˈᵔ/ˈ;->ⁱˊ:Lˈᵔ/ʽ;

    move-object/from16 v23, v2

    new-instance v2, Lˆי/ˉˆ;

    move-object/from16 v24, v5

    move-object v5, v7

    const/4 v7, 0x0

    move-object/from16 v32, v6

    move-object/from16 v17, v9

    move-object v6, v13

    move-object/from16 v13, v23

    move-object/from16 v31, v24

    const/4 v9, 0x4

    invoke-direct/range {v2 .. v7}, Lˆי/ˉˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v2}, Lˈᵔ/ʽ;->ﹳٴ(Ljava/lang/Runnable;)Lˏـ/ˉʿ;

    monitor-exit v12

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move-object v13, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v6

    move-object/from16 v17, v9

    const/4 v9, 0x4

    :goto_2
    iget-object v2, v1, Lﹳˎ/ˉʿ;->ʼˎ:Lˆי/ˑﹳ;

    iget-object v3, v2, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lˆי/ʽ;

    invoke-interface {v3}, Lˆי/ʽ;->ﹳٴ()V

    sget-object v3, Lˆי/ˑﹳ;->ʽʽ:Lﹳˋ/ʼˎ;

    iput-object v3, v2, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, v2, Lˆי/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lˑˋ/ˈ;

    const-string v5, "userlog"

    invoke-virtual {v3, v4, v5}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Lˆי/ˉʿ;

    invoke-direct {v5, v3}, Lˆי/ˉʿ;-><init>(Ljava/io/File;)V

    iput-object v5, v2, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    :goto_3
    iget-object v2, v1, Lﹳˎ/ˉʿ;->ﾞʻ:Lﹳˎ/ʼˎ;

    invoke-virtual {v2, v4}, Lﹳˎ/ʼˎ;->ⁱˊ(Ljava/lang/String;)V

    iget-object v2, v1, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    iget-object v3, v2, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹳˎ/ﹳᐧ;

    sget-object v5, Lˈˋ/ﹶˎ;->ﹳٴ:Ljava/nio/charset/Charset;

    new-instance v5, Lˈˋ/ʾˋ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "20.0.0"

    iput-object v6, v5, Lˈˋ/ʾˋ;->ﹳٴ:Ljava/lang/String;

    iget-object v6, v3, Lﹳˎ/ﹳᐧ;->ʽ:Lﹳˎ/ﹳٴ;

    iget-object v7, v6, Lﹳˎ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    if-eqz v7, :cond_18

    iput-object v7, v5, Lˈˋ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    iget-object v7, v3, Lﹳˎ/ﹳᐧ;->ⁱˊ:Lﹳˎ/ʻٴ;

    invoke-virtual {v7}, Lﹳˎ/ʻٴ;->ʽ()Lﹳˎ/ʽ;

    move-result-object v12

    iget-object v12, v12, Lﹳˎ/ʽ;->ﹳٴ:Ljava/lang/String;

    if-eqz v12, :cond_17

    iput-object v12, v5, Lˈˋ/ʾˋ;->ˈ:Ljava/lang/String;

    invoke-virtual {v7}, Lﹳˎ/ʻٴ;->ʽ()Lﹳˎ/ʽ;

    move-result-object v12

    iget-object v12, v12, Lﹳˎ/ʽ;->ⁱˊ:Ljava/lang/String;

    iput-object v12, v5, Lˈˋ/ʾˋ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v7}, Lﹳˎ/ʻٴ;->ʽ()Lﹳˎ/ʽ;

    move-result-object v12

    iget-object v12, v12, Lﹳˎ/ʽ;->ʽ:Ljava/lang/String;

    iput-object v12, v5, Lˈˋ/ʾˋ;->ﾞᴵ:Ljava/lang/String;

    iget-object v12, v6, Lﹳˎ/ﹳٴ;->ﾞᴵ:Ljava/lang/String;

    if-eqz v12, :cond_16

    iput-object v12, v5, Lˈˋ/ʾˋ;->ᵔᵢ:Ljava/lang/String;

    iget-object v14, v6, Lﹳˎ/ﹳٴ;->ᵎﹶ:Ljava/lang/String;

    if-eqz v14, :cond_15

    iput-object v14, v5, Lˈˋ/ʾˋ;->ʼˎ:Ljava/lang/String;

    iput v9, v5, Lˈˋ/ʾˋ;->ʽ:I

    move/from16 v30, v9

    iget-byte v9, v5, Lˈˋ/ʾˋ;->ˉʿ:B

    or-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    iput-byte v9, v5, Lˈˋ/ʾˋ;->ˉʿ:B

    new-instance v9, Lˈˋ/ᵎⁱ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v9, Lˈˋ/ᵎⁱ;->ﾞᴵ:Z

    iget-byte v1, v9, Lˈˋ/ᵎⁱ;->ˉʿ:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-wide v10, v9, Lˈˋ/ᵎⁱ;->ˈ:J

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v9, Lˈˋ/ᵎⁱ;->ˉʿ:B

    if-eqz v4, :cond_14

    iput-object v4, v9, Lˈˋ/ᵎⁱ;->ⁱˊ:Ljava/lang/String;

    sget-object v1, Lﹳˎ/ﹳᐧ;->ᵎﹶ:Ljava/lang/String;

    if-eqz v1, :cond_13

    iput-object v1, v9, Lˈˋ/ᵎⁱ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, v7, Lﹳˎ/ʻٴ;->ʽ:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v7}, Lﹳˎ/ʻٴ;->ʽ()Lﹳˎ/ʽ;

    move-result-object v4

    iget-object v4, v4, Lﹳˎ/ʽ;->ﹳٴ:Ljava/lang/String;

    iget-object v6, v6, Lﹳˎ/ﹳٴ;->ᵔᵢ:Lˑʼ/ᵎˊ;

    iget-object v7, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Lˈـ/ʾˋ;

    if-nez v7, :cond_7

    new-instance v7, Lˈـ/ʾˋ;

    invoke-direct {v7, v6}, Lˈـ/ʾˋ;-><init>(Lˑʼ/ᵎˊ;)V

    iput-object v7, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    :cond_7
    iget-object v7, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Lˈـ/ʾˋ;

    iget-object v10, v7, Lˈـ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    if-nez v7, :cond_8

    new-instance v7, Lˈـ/ʾˋ;

    invoke-direct {v7, v6}, Lˈـ/ʾˋ;-><init>(Lˑʼ/ᵎˊ;)V

    iput-object v7, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    :cond_8
    iget-object v6, v6, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lˈـ/ʾˋ;

    iget-object v6, v6, Lˈـ/ʾˋ;->ʽ:Ljava/lang/String;

    new-instance v23, Lˈˋ/ᵎˊ;

    move-object/from16 v24, v1

    move-object/from16 v27, v4

    move-object/from16 v29, v6

    move-object/from16 v28, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    invoke-direct/range {v23 .. v29}, Lˈˋ/ᵎˊ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    iput-object v1, v9, Lˈˋ/ᵎⁱ;->ᵎﹶ:Lˈˋ/ˑ;

    new-instance v1, Lˈˋ/ـﹶ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x3

    iput v4, v1, Lˈˋ/ـﹶ;->ﹳٴ:I

    iget-byte v4, v1, Lˈˋ/ـﹶ;->ˑﹳ:B

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, v1, Lˈˋ/ـﹶ;->ˑﹳ:B

    if-eqz v15, :cond_11

    iput-object v15, v1, Lˈˋ/ـﹶ;->ⁱˊ:Ljava/lang/String;

    if-eqz v13, :cond_10

    iput-object v13, v1, Lˈˋ/ـﹶ;->ʽ:Ljava/lang/String;

    invoke-static {}, Lﹳˎ/ᵎﹶ;->ᵎﹶ()Z

    move-result v4

    iput-boolean v4, v1, Lˈˋ/ـﹶ;->ˈ:Z

    iget-byte v4, v1, Lˈˋ/ـﹶ;->ˑﹳ:B

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    iput-byte v4, v1, Lˈˋ/ـﹶ;->ˑﹳ:B

    invoke-virtual {v1}, Lˈˋ/ـﹶ;->ﹳٴ()Lˈˋ/ˈˏ;

    move-result-object v1

    iput-object v1, v9, Lˈˋ/ᵎⁱ;->ʼˎ:Lˈˋ/ـᵢ;

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x7

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    sget-object v4, Lﹳˎ/ﹳᐧ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iget-object v3, v3, Lﹳˎ/ﹳᐧ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v3}, Lﹳˎ/ᵎﹶ;->ﹳٴ(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v10, v1

    mul-long/2addr v7, v10

    invoke-static {}, Lﹳˎ/ᵎﹶ;->ﾞᴵ()Z

    move-result v1

    invoke-static {}, Lﹳˎ/ᵎﹶ;->ʽ()I

    move-result v10

    new-instance v11, Lˈˋ/ˆﾞ;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput v6, v11, Lˈˋ/ˆﾞ;->ﹳٴ:I

    iget-byte v6, v11, Lˈˋ/ˆﾞ;->ˆʾ:B

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    iput-byte v6, v11, Lˈˋ/ˆﾞ;->ˆʾ:B

    if-eqz v17, :cond_f

    move-object/from16 v12, v17

    iput-object v12, v11, Lˈˋ/ˆﾞ;->ⁱˊ:Ljava/lang/String;

    iput v0, v11, Lˈˋ/ˆﾞ;->ʽ:I

    or-int/lit8 v0, v6, 0x2

    int-to-byte v0, v0

    iput-wide v3, v11, Lˈˋ/ˆﾞ;->ˈ:J

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-wide v7, v11, Lˈˋ/ˆﾞ;->ˑﹳ:J

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-boolean v1, v11, Lˈˋ/ˆﾞ;->ﾞᴵ:Z

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput v10, v11, Lˈˋ/ˆﾞ;->ᵎﹶ:I

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, v11, Lˈˋ/ˆﾞ;->ˆʾ:B

    move-object/from16 v0, v31

    if-eqz v0, :cond_e

    iput-object v0, v11, Lˈˋ/ˆﾞ;->ᵔᵢ:Ljava/lang/String;

    move-object/from16 v0, v32

    if-eqz v0, :cond_d

    iput-object v0, v11, Lˈˋ/ˆﾞ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {v11}, Lˈˋ/ˆﾞ;->ﹳٴ()Lˈˋ/ᵔٴ;

    move-result-object v0

    iput-object v0, v9, Lˈˋ/ᵎⁱ;->ˆʾ:Lˈˋ/ʼـ;

    const/4 v4, 0x3

    iput v4, v9, Lˈˋ/ᵎⁱ;->ﾞʻ:I

    iget-byte v0, v9, Lˈˋ/ᵎⁱ;->ˉʿ:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, v9, Lˈˋ/ᵎⁱ;->ˉʿ:B

    invoke-virtual {v9}, Lˈˋ/ᵎⁱ;->ﹳٴ()Lˈˋ/ٴʼ;

    move-result-object v0

    iput-object v0, v5, Lˈˋ/ʾˋ;->ˆʾ:Lˈˋ/ⁱᴵ;

    invoke-virtual {v5}, Lˈˋ/ʾˋ;->ﹳٴ()Lˈˋ/ᴵˊ;

    move-result-object v0

    iget-object v1, v2, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˑˋ/ⁱˊ;

    iget-object v1, v1, Lˑˋ/ⁱˊ;->ⁱˊ:Lˑˋ/ˈ;

    const-string v2, "FirebaseCrashlytics"

    iget-object v3, v0, Lˈˋ/ᴵˊ;->ٴﹶ:Lˈˋ/ⁱᴵ;

    if-nez v3, :cond_b

    const-string v0, "Could not get session for report"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    nop

    return-void

    :cond_b
    move-object v4, v3

    check-cast v4, Lˈˋ/ٴʼ;

    iget-object v4, v4, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    :try_start_1
    sget-object v5, Lˑˋ/ⁱˊ;->ᵎﹶ:Lˋᵢ/ﹳٴ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lˋᵢ/ﹳٴ;->ﹳٴ:Lﹳי/ʽ;

    invoke-virtual {v5, v0}, Lﹳי/ʽ;->ﾞᴵ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "report"

    invoke-virtual {v1, v4, v5}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v0}, Lˑˋ/ⁱˊ;->ﾞᴵ(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "start-time"

    invoke-virtual {v1, v4, v0}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    check-cast v3, Lˈˋ/ٴʼ;

    iget-wide v5, v3, Lˈˋ/ٴʼ;->ˈ:J

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lˑˋ/ⁱˊ;->ˑﹳ:Ljava/nio/charset/Charset;

    invoke-direct {v3, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    mul-long v5, v5, v18

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Could not persist report for session "

    invoke-static {v1, v4}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    nop

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null modelClass"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null manufacturer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null model"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null buildVersion"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null identifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null generator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null identifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null displayVersion"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null buildVersion"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null installationUuid"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null gmpAppId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˈ(Lʾٴ/ⁱˊ;)Z
    .locals 5

    .prologue
    invoke-static {}, Lˈᵔ/ˈ;->ﹳٴ()V

    iget-object v0, p0, Lﹳˎ/ˉʿ;->ᵔʾ:Lﹳˎ/יـ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "FirebaseCrashlytics"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lﹳˎ/יـ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Skipping session finalization because a crash has already occurred."

    nop

    return v2

    :cond_0
    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Finalizing previously open sessions."

    nop

    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4, p1, v4}, Lﹳˎ/ˉʿ;->ⁱˊ(ZLʾٴ/ⁱˊ;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Closed all previously open sessions."

    nop

    :cond_2
    return v4

    :catch_0
    move-exception p1

    const-string v0, "Unable to finalize previously open sessions."

    nop

    return v2
.end method

.method public final ˑﹳ()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v0, "com.google.firebase.crashlytics.version_control_info"

    const-string v1, "string"

    iget-object v2, p0, Lﹳˎ/ˉʿ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "FirebaseCrashlytics"

    if-eqz v0, :cond_2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Read version control info from string resource"

    nop

    :cond_1
    sget-object v1, Lﹳˎ/ˉʿ;->יـ:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-class v0, Lﹳˎ/ˉʿ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Couldn\'t get Class Loader"

    nop

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v5, "META-INF/version-control-info.textproto"

    invoke-static {v0, v5}, Lar/tvplayer/tv/ProtectedTvPlayerApplication;->kFAe(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    :try_start_0
    const-string v5, "Read version control info from file"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    nop

    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_1
    move-exception v1

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    const-string v0, "No version control information found"

    nop

    return-object v1
.end method

.method public final ᵎﹶ(Lˏـ/ˉʿ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lﹳˎ/ˉʿ;->ˉˆ:Lˏـ/ᵎﹶ;

    const-string v1, "FirebaseCrashlytics"

    iget-object v2, p0, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    iget-object v2, v2, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˑˋ/ⁱˊ;

    iget-object v2, v2, Lˑˋ/ⁱˊ;->ⁱˊ:Lˑˋ/ˈ;

    iget-object v3, v2, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lˑˋ/ˈ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v2, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lˑˋ/ˈ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lˑˋ/ˈ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "No crash reports are available to be sent."

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    nop

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    sget-object v2, Lיˎ/ʽ;->ﹳٴ:Lיˎ/ʽ;

    const-string v3, "Crash reports are available to be sent."

    invoke-virtual {v2, v3}, Lיˎ/ʽ;->ʽ(Ljava/lang/String;)V

    iget-object v3, p0, Lﹳˎ/ˉʿ;->ⁱˊ:Lʼٴ/ٴᵢ;

    invoke-virtual {v3}, Lʼٴ/ٴᵢ;->ﹳٴ()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "Automatic data collection is enabled. Allowing upload."

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    nop

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v2, v1}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v2, v1}, Lיˎ/ʽ;->ʽ(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    iget-object v0, v3, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, v3, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ᵎﹶ;

    iget-object v1, v1, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lᵔﹶ/ˊʻ;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lᵔﹶ/ˊʻ;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lˏـ/ᵔᵢ;->ﹳٴ:Lʿʿ/ʽ;

    new-instance v4, Lˏـ/ˉʿ;

    invoke-direct {v4}, Lˏـ/ˉʿ;-><init>()V

    new-instance v5, Lˏـ/ٴﹶ;

    invoke-direct {v5, v3, v0, v4}, Lˏـ/ٴﹶ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ﾞᴵ;Lˏـ/ˉʿ;)V

    iget-object v0, v1, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {v1}, Lˏـ/ˉʿ;->ᵔʾ()V

    const-string v0, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v2, v0}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    iget-object v0, p0, Lﹳˎ/ˉʿ;->ʼᐧ:Lˏـ/ᵎﹶ;

    iget-object v0, v0, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    invoke-static {v4, v0}, Lˈᵔ/ⁱˊ;->ﹳٴ(Lˏـ/ˉʿ;Lˏـ/ˉʿ;)Lˏـ/ˉʿ;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lﹳˎ/ˉʿ;->ˑﹳ:Lˈᵔ/ˈ;

    iget-object v1, v1, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    new-instance v2, Lˑʼ/ᵎˊ;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1, v2}, Lˏـ/ˉʿ;->ᵔᵢ(Ljava/util/concurrent/Executor;Lˏـ/ﾞᴵ;)Lˏـ/ˉʿ;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(ZLʾٴ/ⁱˊ;Z)V
    .locals 31

    .prologue
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {}, Lˈᵔ/ˈ;->ﹳٴ()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v1, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑˋ/ⁱˊ;

    invoke-virtual {v0}, Lˑˋ/ⁱˊ;->ʽ()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-gt v0, v2, :cond_0

    const-string v0, "No open sessions to be closed."

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "FirebaseCrashlytics"

    nop

    return-void

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p3, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lʾٴ/ⁱˊ;->ⁱˊ()Lʾٴ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʾٴ/ﹳٴ;->ⁱˊ:Lʻˆ/ˑﹳ;

    iget-boolean v0, v0, Lʻˆ/ˑﹳ;->ⁱˊ:Z

    if-eqz v0, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1e

    if-lt v0, v12, :cond_1b

    iget-object v0, v1, Lﹳˎ/ˉʿ;->ﹳٴ:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5, v11, v11}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    new-instance v13, Lˆי/ˑﹳ;

    iget-object v0, v1, Lﹳˎ/ˉʿ;->ᵎﹶ:Lˑˋ/ˈ;

    invoke-direct {v13, v0}, Lˆי/ˑﹳ;-><init>(Lˑˋ/ˈ;)V

    sget-object v14, Lˆי/ˑﹳ;->ʽʽ:Lﹳˋ/ʼˎ;

    iput-object v14, v13, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v14, "userlog"

    invoke-virtual {v0, v6, v14}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v14, Lˆי/ˉʿ;

    invoke-direct {v14, v0}, Lˆי/ˉʿ;-><init>(Ljava/io/File;)V

    iput-object v14, v13, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    :goto_0
    iget-object v0, v1, Lﹳˎ/ˉʿ;->ᵎﹶ:Lˑˋ/ˈ;

    iget-object v14, v1, Lﹳˎ/ˉʿ;->ˑﹳ:Lˈᵔ/ˈ;

    new-instance v15, Lˆי/ᵎﹶ;

    invoke-direct {v15, v0}, Lˆי/ᵎﹶ;-><init>(Lˑˋ/ˈ;)V

    const/16 v16, 0x4

    new-instance v9, Lˉˆ/ˎـ;

    invoke-direct {v9, v6, v0, v14}, Lˉˆ/ˎـ;-><init>(Ljava/lang/String;Lˑˋ/ˈ;Lˈᵔ/ˈ;)V

    iget-object v14, v9, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    check-cast v14, Lcom/bumptech/glide/ʼˎ;

    iget-object v14, v14, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v14, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lˆי/ˈ;

    const/16 v17, 0x8

    invoke-virtual {v15, v6, v11}, Lˆי/ᵎﹶ;->ʽ(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v14, v7}, Lˆי/ˈ;->ˈ(Ljava/util/Map;)V

    iget-object v7, v9, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, Lcom/bumptech/glide/ʼˎ;

    iget-object v7, v7, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˆי/ˈ;

    invoke-virtual {v15, v6, v10}, Lˆי/ᵎﹶ;->ʽ(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v7, v14}, Lˆי/ˈ;->ˈ(Ljava/util/Map;)V

    iget-object v7, v9, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v15, v6}, Lˆי/ᵎﹶ;->ˈ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14, v11}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    iget-object v7, v9, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v7, Lʽᴵ/ʾᵎ;

    const-string v14, "Failed to close rollouts state file."

    const-string v15, "FirebaseCrashlytics"

    move/from16 v18, v10

    const-string v10, "Loaded rollouts state:\n"

    const-string v4, "rollouts-state"

    invoke-virtual {v0, v6, v4}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v0, v20, v22

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v11}, Lﹳˎ/ᵎﹶ;->ʼˎ(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lˆי/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\nfor session "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {v11, v14}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_5

    :goto_1
    move-object v5, v11

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    :goto_2
    :try_start_2
    const-string v5, "Error deserializing rollouts state."

    nop

    invoke-static {v4}, Lˆי/ᵎﹶ;->ﾞᴵ(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11, v14}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :goto_3
    invoke-static {v5, v14}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "The file has a length of zero for session: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lˆי/ᵎﹶ;->ᵎﹶ(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_5
    const-string v4, "Ignored 0 entries when adding rollout assignments. Maximum allowable: "

    monitor-enter v7

    :try_start_3
    iget-object v5, v7, Lʽᴵ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v10, v7, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    if-le v5, v10, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v7, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FirebaseCrashlytics"

    const/4 v10, 0x0

    nop

    iget v4, v7, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v4, v7, Lʽᴵ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v7

    goto :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :cond_5
    :try_start_4
    iget-object v4, v7, Lʽᴵ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v7

    :goto_6
    iget-object v0, v1, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    const-string v4, "FirebaseCrashlytics"

    iget-object v5, v0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lˑˋ/ⁱˊ;

    iget-object v7, v5, Lˑˋ/ⁱˊ;->ⁱˊ:Lˑˋ/ˈ;

    const-string v10, "start-time"

    invoke-virtual {v7, v6, v10}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v14

    cmp-long v14, v14, v10

    if-gez v14, :cond_7

    :cond_6
    const/4 v12, 0x0

    goto :goto_8

    :cond_7
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_8

    goto :goto_7

    :cond_8
    :goto_8
    if-nez v12, :cond_a

    const-string v0, "No relevant ApplicationExitInfo occurred during session: "

    invoke-static {v0, v6}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v10, 0x0

    nop

    :cond_9
    move-object/from16 v30, v3

    move/from16 v8, v18

    goto/16 :goto_d

    :cond_a
    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lﹳˎ/ﹳᐧ;

    :try_start_5
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lﹳʽ/ᴵᵔ;->ﾞᴵ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Could not get input trace in application exit info: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    nop

    :cond_b
    const/4 v0, 0x0

    :goto_9
    new-instance v10, Lˈˋ/ʽʽ;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v11

    iput v11, v10, Lˈˋ/ʽʽ;->ˈ:I

    iget-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    or-int/lit8 v11, v11, 0x4

    int-to-byte v11, v11

    iput-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_18

    iput-object v11, v10, Lˈˋ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v11

    iput v11, v10, Lˈˋ/ʽʽ;->ʽ:I

    iget-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    const/16 v19, 0x2

    or-int/lit8 v11, v11, 0x2

    int-to-byte v11, v11

    iput-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v14

    iput-wide v14, v10, Lˈˋ/ʽʽ;->ᵎﹶ:J

    iget-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    or-int/lit8 v11, v11, 0x20

    int-to-byte v11, v11

    iput-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v11

    iput v11, v10, Lˈˋ/ʽʽ;->ﹳٴ:I

    iget-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    or-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    iput-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v14

    iput-wide v14, v10, Lˈˋ/ʽʽ;->ˑﹳ:J

    iget-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    or-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    iput-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v11

    iput-wide v11, v10, Lˈˋ/ʽʽ;->ﾞᴵ:J

    iget-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    iput-byte v11, v10, Lˈˋ/ʽʽ;->ˆʾ:B

    iput-object v0, v10, Lˈˋ/ʽʽ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v10}, Lˈˋ/ʽʽ;->ﹳٴ()Lˈˋ/ˈٴ;

    move-result-object v0

    iget-object v10, v7, Lﹳˎ/ﹳᐧ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    new-instance v11, Lˈˋ/ˈʿ;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const-string v12, "anr"

    iput-object v12, v11, Lˈˋ/ˈʿ;->ⁱˊ:Ljava/lang/String;

    iget-wide v14, v0, Lˈˋ/ˈٴ;->ᵎﹶ:J

    iput-wide v14, v11, Lˈˋ/ˈʿ;->ﹳٴ:J

    iget-byte v12, v11, Lˈˋ/ˈʿ;->ᵎﹶ:B

    or-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    iput-byte v12, v11, Lˈˋ/ˈʿ;->ᵎﹶ:B

    iget-object v12, v7, Lﹳˎ/ﹳᐧ;->ʽ:Lﹳˎ/ﹳٴ;

    iget-object v8, v7, Lﹳˎ/ﹳᐧ;->ˑﹳ:Lʾٴ/ⁱˊ;

    invoke-virtual {v8}, Lʾٴ/ⁱˊ;->ⁱˊ()Lʾٴ/ﹳٴ;

    move-result-object v8

    iget-object v8, v8, Lʾٴ/ﹳٴ;->ⁱˊ:Lʻˆ/ˑﹳ;

    iget-boolean v8, v8, Lʻˆ/ˑﹳ;->ʽ:Z

    if-eqz v8, :cond_10

    iget-object v8, v12, Lﹳˎ/ﹳٴ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v12, Lﹳˎ/ﹳٴ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v29, v10

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v2, :cond_f

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    add-int/lit8 v10, v10, 0x1

    move/from16 p2, v2

    move-object/from16 v2, v22

    check-cast v2, Lﹳˎ/ˈ;

    move/from16 v22, v10

    iget-object v10, v2, Lﹳˎ/ˈ;->ﹳٴ:Ljava/lang/String;

    if-eqz v10, :cond_e

    move-object/from16 v23, v12

    iget-object v12, v2, Lﹳˎ/ˈ;->ⁱˊ:Ljava/lang/String;

    if-eqz v12, :cond_d

    iget-object v2, v2, Lﹳˎ/ˈ;->ʽ:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v30, v3

    new-instance v3, Lˈˋ/ᴵᵔ;

    invoke-direct {v3, v12, v10, v2}, Lˈˋ/ᴵᵔ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, p2

    move/from16 v10, v22

    move-object/from16 v12, v23

    move-object/from16 v3, v30

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null buildId"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null arch"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null libraryName"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v30, v3

    invoke-static {v8}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :cond_10
    move-object/from16 v30, v3

    move/from16 v29, v10

    const/4 v2, 0x0

    :goto_b
    new-instance v3, Lˈˋ/ʽʽ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget v8, v0, Lˈˋ/ˈٴ;->ˈ:I

    iput v8, v3, Lˈˋ/ʽʽ;->ˈ:I

    iget-byte v8, v3, Lˈˋ/ʽʽ;->ˆʾ:B

    or-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    iput-byte v8, v3, Lˈˋ/ʽʽ;->ˆʾ:B

    iget-object v10, v0, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    if-eqz v10, :cond_17

    iput-object v10, v3, Lˈˋ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    iget v10, v0, Lˈˋ/ˈٴ;->ʽ:I

    iput v10, v3, Lˈˋ/ʽʽ;->ʽ:I

    const/16 v19, 0x2

    or-int/lit8 v8, v8, 0x2

    int-to-byte v8, v8

    iput-wide v14, v3, Lˈˋ/ʽʽ;->ᵎﹶ:J

    or-int/lit8 v8, v8, 0x20

    int-to-byte v8, v8

    iget v10, v0, Lˈˋ/ˈٴ;->ﹳٴ:I

    iput v10, v3, Lˈˋ/ʽʽ;->ﹳٴ:I

    or-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    iget-wide v14, v0, Lˈˋ/ˈٴ;->ˑﹳ:J

    iput-wide v14, v3, Lˈˋ/ʽʽ;->ˑﹳ:J

    or-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    iget-wide v14, v0, Lˈˋ/ˈٴ;->ﾞᴵ:J

    iput-wide v14, v3, Lˈˋ/ʽʽ;->ﾞᴵ:J

    or-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    iput-byte v8, v3, Lˈˋ/ʽʽ;->ˆʾ:B

    iget-object v0, v0, Lˈˋ/ˈٴ;->ᵔᵢ:Ljava/lang/String;

    iput-object v0, v3, Lˈˋ/ʽʽ;->ᵔᵢ:Ljava/lang/String;

    iput-object v2, v3, Lˈˋ/ʽʽ;->ʼˎ:Ljava/util/List;

    invoke-virtual {v3}, Lˈˋ/ʽʽ;->ﹳٴ()Lˈˋ/ˈٴ;

    move-result-object v0

    iget v2, v0, Lˈˋ/ˈٴ;->ˈ:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_11

    move/from16 v2, v18

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    iget v8, v0, Lˈˋ/ˈٴ;->ﹳٴ:I

    iget v10, v0, Lˈˋ/ˈٴ;->ˈ:I

    const/16 v12, 0x8

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_12

    const/4 v10, 0x0

    :cond_12
    new-instance v12, Lˈˋ/ʿ;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v3, v12, Lˈˋ/ʿ;->ﹳٴ:Ljava/lang/String;

    iput v8, v12, Lˈˋ/ʿ;->ⁱˊ:I

    iget-byte v3, v12, Lˈˋ/ʿ;->ˑﹳ:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iput v10, v12, Lˈˋ/ʿ;->ʽ:I

    const/16 v19, 0x2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    const/4 v8, 0x0

    iput-boolean v8, v12, Lˈˋ/ʿ;->ˈ:Z

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    iput-byte v3, v12, Lˈˋ/ʿ;->ˑﹳ:B

    invoke-virtual {v12}, Lˈˋ/ʿ;->ﹳٴ()Lˈˋ/ʿᵢ;

    move-result-object v3

    move/from16 v8, v18

    int-to-byte v10, v8

    invoke-static {}, Lﹳˎ/ﹳᐧ;->ˑﹳ()Lˈˋ/ﹳـ;

    move-result-object v26

    invoke-virtual {v7}, Lﹳˎ/ﹳᐧ;->ﹳٴ()Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_16

    new-instance v22, Lˈˋ/ˊˋ;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    invoke-direct/range {v22 .. v27}, Lˈˋ/ˊˋ;-><init>(Ljava/util/List;Lˈˋ/ـˏ;Lˈˋ/ـᵎ;Lˈˋ/ﹳـ;Ljava/util/List;)V

    if-ne v10, v8, :cond_14

    move-object/from16 v23, v22

    new-instance v22, Lˈˋ/ˋᵔ;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-direct/range {v22 .. v29}, Lˈˋ/ˋᵔ;-><init>(Lˈˋ/ˊˋ;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lˈˋ/ʻᴵ;Ljava/util/List;I)V

    move-object/from16 v2, v22

    move/from16 v0, v29

    iput-object v2, v11, Lˈˋ/ˈʿ;->ʽ:Lˈˋ/ـˊ;

    invoke-virtual {v7, v0}, Lﹳˎ/ﹳᐧ;->ⁱˊ(I)Lˈˋ/ᐧﾞ;

    move-result-object v0

    iput-object v0, v11, Lˈˋ/ˈʿ;->ˈ:Lˈˋ/ᵎʿ;

    invoke-virtual {v11}, Lˈˋ/ˈʿ;->ﹳٴ()Lˈˋ/ˑٴ;

    move-result-object v0

    const-string v2, "Persisting anr for session "

    invoke-static {v2, v6}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v10, 0x0

    nop

    :cond_13
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, v13, v9, v2}, Lﹳʽ/ᴵᵔ;->ﹳٴ(Lˈˋ/ˑٴ;Lˆי/ˑﹳ;Lˉˆ/ˎـ;Ljava/util/Map;)Lˈˋ/ˑٴ;

    move-result-object v0

    invoke-static {v0, v9}, Lﹳʽ/ᴵᵔ;->ⁱˊ(Lˈˋ/ˑٴ;Lˉˆ/ˎـ;)Lˈˋ/ﹶ;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v6, v8}, Lˑˋ/ⁱˊ;->ˈ(Lˈˋ/ﹶ;Ljava/lang/String;Z)V

    :goto_d
    const/4 v5, 0x2

    goto :goto_f

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v10, :cond_15

    const-string v2, " uiOrientation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required properties:"

    invoke-static {v3, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null binaries"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null processName"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null processName"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_e
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_19
    move-object/from16 v30, v3

    move v8, v10

    const/16 v16, 0x4

    const/16 v17, 0x8

    const-string v0, "No ApplicationExitInfo available. Session: "

    invoke-static {v0, v6}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "FirebaseCrashlytics"

    const/4 v10, 0x0

    nop

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v10, 0x0

    goto :goto_10

    :cond_1b
    move-object/from16 v30, v3

    move v8, v10

    const/16 v16, 0x4

    const/16 v17, 0x8

    move-object v10, v5

    move v5, v4

    const-string v2, "ANR feature enabled, but device is API "

    invoke-static {v0, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "FirebaseCrashlytics"

    nop

    goto :goto_10

    :cond_1c
    move-object/from16 v30, v3

    move v8, v10

    const/16 v16, 0x4

    const/16 v17, 0x8

    const-string v0, "ANR feature disabled."

    const-string v2, "FirebaseCrashlytics"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "FirebaseCrashlytics"

    const/4 v10, 0x0

    nop

    :cond_1d
    :goto_10
    if-eqz p3, :cond_1f

    iget-object v0, v1, Lﹳˎ/ˉʿ;->ˆʾ:Lיˎ/ⁱˊ;

    invoke-virtual {v0, v6}, Lיˎ/ⁱˊ;->ʽ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "Finalizing native report for session "

    invoke-static {v0, v6}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v10, 0x0

    nop

    goto :goto_11

    :cond_1e
    const/4 v10, 0x0

    :goto_11
    iget-object v0, v1, Lﹳˎ/ˉʿ;->ˆʾ:Lיˎ/ⁱˊ;

    invoke-virtual {v0, v6}, Lיˎ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lיˎ/ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No minidump data found for session "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No Tombstones data found for session "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    const-string v0, "No native core present"

    nop

    goto :goto_12

    :cond_1f
    const/4 v10, 0x0

    :goto_12
    if-eqz p1, :cond_20

    move-object/from16 v2, v30

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    goto :goto_13

    :cond_20
    const/4 v5, 0x0

    iget-object v0, v1, Lﹳˎ/ˉʿ;->ﾞʻ:Lﹳˎ/ʼˎ;

    invoke-virtual {v0, v10}, Lﹳˎ/ʼˎ;->ⁱˊ(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_13
    iget-object v2, v1, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    iget-object v2, v2, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˑˋ/ⁱˊ;

    const-string v6, "FirebaseCrashlytics"

    iget-object v7, v2, Lˑˋ/ⁱˊ;->ⁱˊ:Lˑˋ/ˈ;

    const-string v9, ".com.google.firebase.crashlytics"

    invoke-virtual {v7, v9}, Lˑˋ/ˈ;->ﹳٴ(Ljava/lang/String;)V

    const-string v9, ".com.google.firebase.crashlytics-ndk"

    invoke-virtual {v7, v9}, Lˑˋ/ˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v9, v7, Lˑˋ/ˈ;->ʾˋ:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, ".com.google.firebase.crashlytics.files.v1"

    invoke-virtual {v7, v9}, Lˑˋ/ˈ;->ﹳٴ(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ".com.google.firebase.crashlytics.files.v2"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_21

    new-instance v11, Lˑˋ/ʽ;

    invoke-direct {v11, v9}, Lˑˋ/ʽ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_21

    array-length v10, v9

    move v11, v5

    :goto_14
    if-ge v11, v10, :cond_21

    aget-object v12, v9, v11

    invoke-virtual {v7, v12}, Lˑˋ/ˈ;->ﹳٴ(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_21
    invoke-virtual {v2}, Lˑˋ/ⁱˊ;->ʽ()Ljava/util/NavigableSet;

    move-result-object v9

    if-eqz v0, :cond_22

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_22
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    move/from16 v10, v17

    if-gt v0, v10, :cond_23

    goto :goto_16

    :cond_23
    :goto_15
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_25

    invoke-interface {v9}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v11, "Removing session over cap: "

    invoke-static {v11, v0}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_24

    const/4 v12, 0x0

    nop

    :cond_24
    new-instance v11, Ljava/io/File;

    iget-object v12, v7, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    invoke-direct {v11, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11}, Lˑˋ/ˈ;->ˆʾ(Ljava/io/File;)Z

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    :goto_16
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "Finalizing report for session "

    invoke-static {v0, v10}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_26

    const/4 v12, 0x0

    nop

    :cond_26
    sget-object v11, Lˑˋ/ⁱˊ;->ᵎﹶ:Lˋᵢ/ﹳٴ;

    sget-object v0, Lˑˋ/ⁱˊ;->ʼˎ:Lˑˋ/ﹳٴ;

    new-instance v12, Ljava/io/File;

    iget-object v13, v7, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-direct {v12, v13, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v12, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lˑˋ/ˈ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_28

    const-string v0, "Session "

    const-string v11, " has no events."

    invoke-static {v0, v10, v11}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_27

    const/4 v12, 0x0

    nop

    :cond_27
    const/4 v11, 0x0

    :goto_18
    const/4 v12, 0x3

    const/16 v19, 0x2

    goto/16 :goto_25

    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v5

    :goto_19
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/io/File;

    :try_start_7
    invoke-static {v15}, Lˑˋ/ⁱˊ;->ˑﹳ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    new-instance v5, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-static {v5}, Lˋᵢ/ﹳٴ;->ˑﹳ(Landroid/util/JsonReader;)Lˈˋ/ˑٴ;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_2a

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "event"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    if-eqz v0, :cond_29

    goto :goto_1a

    :cond_29
    const/4 v5, 0x0

    goto :goto_1b

    :catch_3
    move-exception v0

    goto :goto_1e

    :cond_2a
    :goto_1a
    const/4 v5, 0x1

    :goto_1b
    move v14, v5

    goto :goto_1f

    :catch_4
    move-exception v0

    goto :goto_1d

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_c
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_1c

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw v8
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :goto_1d
    :try_start_e
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :goto_1e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Could not add event to report for "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :goto_1f
    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_19

    :cond_2b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse event files for session "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    nop

    move-object v11, v12

    goto/16 :goto_18

    :cond_2c
    new-instance v0, Lˆי/ᵎﹶ;

    invoke-direct {v0, v7}, Lˆי/ᵎﹶ;-><init>(Lˑˋ/ˈ;)V

    invoke-virtual {v0, v10}, Lˆי/ᵎﹶ;->ˈ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lˑˋ/ⁱˊ;->ˈ:Lﹳˎ/ʼˎ;

    invoke-virtual {v5, v10}, Lﹳˎ/ʼˎ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "report"

    invoke-virtual {v7, v10, v8}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    const-string v13, "appQualitySessionId: "

    :try_start_f
    invoke-static {v8}, Lˑˋ/ⁱˊ;->ˑﹳ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lˋᵢ/ﹳٴ;->ʼˎ(Ljava/lang/String;)Lˈˋ/ᴵˊ;

    move-result-object v11

    invoke-virtual {v11}, Lˈˋ/ᴵˊ;->ﹳٴ()Lˈˋ/ʾˋ;

    move-result-object v15

    iget-object v11, v11, Lˈˋ/ᴵˊ;->ٴﹶ:Lˈˋ/ⁱᴵ;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    if-eqz v11, :cond_2e

    :try_start_10
    invoke-virtual {v11}, Lˈˋ/ⁱᴵ;->ﹳٴ()Lˈˋ/ᵎⁱ;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v11, Lˈˋ/ᵎⁱ;->ˑﹳ:Ljava/lang/Long;

    iput-boolean v14, v11, Lˈˋ/ᵎⁱ;->ﾞᴵ:Z

    iget-byte v1, v11, Lˈˋ/ᵎⁱ;->ˉʿ:B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    const/16 v19, 0x2

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :try_start_11
    iput-byte v1, v11, Lˈˋ/ᵎⁱ;->ˉʿ:B

    if-eqz v0, :cond_2d

    new-instance v1, Lˈˋ/ﹶᐧ;

    invoke-direct {v1, v0}, Lˈˋ/ﹶᐧ;-><init>(Ljava/lang/String;)V

    iput-object v1, v11, Lˈˋ/ᵎⁱ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    :cond_2d
    invoke-virtual {v11}, Lˈˋ/ᵎⁱ;->ﹳٴ()Lˈˋ/ٴʼ;

    move-result-object v0

    iput-object v0, v15, Lˈˋ/ʾˋ;->ˆʾ:Lˈˋ/ⁱᴵ;

    goto :goto_20

    :catch_5
    move-exception v0

    const/16 v19, 0x2

    goto/16 :goto_23

    :cond_2e
    const/16 v19, 0x2

    :goto_20
    invoke-virtual {v15}, Lˈˋ/ʾˋ;->ﹳٴ()Lˈˋ/ᴵˊ;

    move-result-object v0

    invoke-virtual {v0}, Lˈˋ/ᴵˊ;->ﹳٴ()Lˈˋ/ʾˋ;

    move-result-object v1

    iput-object v5, v1, Lˈˋ/ʾˋ;->ᵎﹶ:Ljava/lang/String;

    iget-object v0, v0, Lˈˋ/ᴵˊ;->ٴﹶ:Lˈˋ/ⁱᴵ;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lˈˋ/ⁱᴵ;->ﹳٴ()Lˈˋ/ᵎⁱ;

    move-result-object v0

    iput-object v5, v0, Lˈˋ/ᵎⁱ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0}, Lˈˋ/ᵎⁱ;->ﹳٴ()Lˈˋ/ٴʼ;

    move-result-object v0

    iput-object v0, v1, Lˈˋ/ʾˋ;->ˆʾ:Lˈˋ/ⁱᴵ;

    :cond_2f
    invoke-virtual {v1}, Lˈˋ/ʾˋ;->ﹳٴ()Lˈˋ/ᴵˊ;

    move-result-object v0

    iget-object v1, v0, Lˈˋ/ᴵˊ;->ٴﹶ:Lˈˋ/ⁱᴵ;

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lˈˋ/ᴵˊ;->ﹳٴ()Lˈˋ/ʾˋ;

    move-result-object v0

    invoke-virtual {v1}, Lˈˋ/ⁱᴵ;->ﹳٴ()Lˈˋ/ᵎⁱ;

    move-result-object v1

    iput-object v12, v1, Lˈˋ/ᵎⁱ;->ٴﹶ:Ljava/util/List;

    invoke-virtual {v1}, Lˈˋ/ᵎⁱ;->ﹳٴ()Lˈˋ/ٴʼ;

    move-result-object v1

    iput-object v1, v0, Lˈˋ/ʾˋ;->ˆʾ:Lˈˋ/ⁱᴵ;

    invoke-virtual {v0}, Lˈˋ/ʾˋ;->ﹳٴ()Lˈˋ/ᴵˊ;

    move-result-object v0

    iget-object v1, v0, Lˈˋ/ᴵˊ;->ٴﹶ:Lˈˋ/ⁱᴵ;

    if-nez v1, :cond_30

    const/4 v11, 0x0

    const/4 v12, 0x3

    goto :goto_25

    :cond_30
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    const/4 v12, 0x3

    :try_start_12
    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    if-eqz v11, :cond_31

    const/4 v11, 0x0

    :try_start_13
    nop

    goto :goto_21

    :cond_31
    const/4 v11, 0x0

    :goto_21
    if-eqz v14, :cond_32

    check-cast v1, Lˈˋ/ٴʼ;

    iget-object v1, v1, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v13, v7, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-direct {v5, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_22

    :cond_32
    check-cast v1, Lˈˋ/ٴʼ;

    iget-object v1, v1, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v13, v7, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-direct {v5, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_22
    sget-object v1, Lˋᵢ/ﹳٴ;->ﹳٴ:Lﹳי/ʽ;

    invoke-virtual {v1, v0}, Lﹳי/ʽ;->ﾞᴵ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lˑˋ/ⁱˊ;->ﾞᴵ(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_25

    :catch_6
    move-exception v0

    goto :goto_24

    :catch_7
    move-exception v0

    const/4 v11, 0x0

    goto :goto_24

    :catch_8
    move-exception v0

    :goto_23
    const/4 v11, 0x0

    const/4 v12, 0x3

    goto :goto_24

    :cond_33
    const/4 v11, 0x0

    const/4 v12, 0x3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reports without sessions cannot have events added to them."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    :catch_9
    move-exception v0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/16 v19, 0x2

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Could not synthesize final report file for "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :goto_25
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lˑˋ/ˈ;->ˆʾ(Ljava/io/File;)Z

    move-object/from16 v1, p0

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_17

    :cond_34
    iget-object v0, v2, Lˑˋ/ⁱˊ;->ʽ:Lʾٴ/ⁱˊ;

    invoke-virtual {v0}, Lʾٴ/ⁱˊ;->ⁱˊ()Lʾٴ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʾٴ/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ﾞʻ;

    invoke-virtual {v2}, Lˑˋ/ⁱˊ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v2, v16

    if-gt v1, v2, :cond_35

    goto :goto_27

    :cond_35
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_26

    :cond_36
    :goto_27
    return-void
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    const-string v0, "FirebaseCrashlytics"

    :try_start_0
    invoke-virtual {p0}, Lﹳˎ/ˉʿ;->ˑﹳ()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lﹳˎ/ˉʿ;->ˈ:Lˉˆ/ˎـ;

    invoke-virtual {v3, v1}, Lˉˆ/ˎـ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lﹳˎ/ˉʿ;->ﹳٴ:Landroid/content/Context;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    const-string v1, "Attempting to set custom attribute with null key, ignoring."

    nop

    :goto_1
    const-string v1, "Saved version control info"

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "Unable to save version control info"

    nop

    :cond_2
    :goto_2
    return-void
.end method
