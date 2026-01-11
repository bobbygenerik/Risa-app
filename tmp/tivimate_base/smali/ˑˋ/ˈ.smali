.class public final Lˑˋ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽᵎ/ⁱˊ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final ʾˋ:Ljava/lang/Object;

.field public final ˈٴ:Ljava/lang/Object;

.field public final ˊʻ:Ljava/lang/Object;

.field public final ٴᵢ:Ljava/lang/Object;

.field public final ᴵˊ:Ljava/lang/Object;

.field public final ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lיˎ/ˈ;->ﹳٴ:Lיˎ/ˈ;

    invoke-virtual {v0, p1}, Lיˎ/ˈ;->ⁱˊ(Landroid/content/Context;)Lˈˋ/ʻᴵ;

    move-result-object v0

    check-cast v0, Lˈˋ/ʿᵢ;

    iget-object v0, v0, Lˈˋ/ʿᵢ;->ﹳٴ:Ljava/lang/String;

    iput-object v0, p0, Lˑˋ/ˈ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".crashlytics.v3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_0

    invoke-static {v0}, Lﹳˎ/ᵎﹶ;->ᵔᵢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "[^a-zA-Z0-9.]"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ".com.google.firebase.crashlytics.files.v1"

    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lˑˋ/ˈ;->ʼˎ(Ljava/io/File;)V

    iput-object v1, p0, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "open-sessions"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lˑˋ/ˈ;->ʼˎ(Ljava/io/File;)V

    iput-object p1, p0, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "reports"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lˑˋ/ˈ;->ʼˎ(Ljava/io/File;)V

    iput-object p1, p0, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "priority-reports"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lˑˋ/ˈ;->ʼˎ(Ljava/io/File;)V

    iput-object p1, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "native-reports"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lˑˋ/ˈ;->ʼˎ(Ljava/io/File;)V

    iput-object p1, p0, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˉʼ/ʼˎ;Lﹳˋ/ʼˎ;Lﹳʽ/ˊʻ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˉᵔ/ʽ;

    invoke-direct {v0}, Lˉᵔ/ʽ;-><init>()V

    iput-object v0, p0, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    iput-object p1, p0, Lˑˋ/ˈ;->ʾˋ:Ljava/lang/Object;

    iput-object p2, p0, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p3, p0, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x100

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lʿʾ/ˉʿ;Lʿʾ/ˉʿ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹳי/ʽ;

    invoke-direct {v0, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lˈﹳ/ˈ;->ﹳٴ(ILˈﹳ/ﹳٴ;)Lᵢ/ﹳٴ;

    move-result-object v0

    iput-object v0, p0, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    iput-object p1, p0, Lˑˋ/ˈ;->ʾˋ:Ljava/lang/Object;

    iput-object p2, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    iput-object p5, p0, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p6, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˊʼ/ˏי;Ljava/lang/String;Ljava/lang/Long;Lˊʼ/יـ;Lˊʼ/ᵔﹳ;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˑˋ/ˈ;->ʾˋ:Ljava/lang/Object;

    iput-object p3, p0, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    iput-object p5, p0, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p6, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    iput-object p7, p0, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized ʼˎ(Ljava/io/File;)V
    .locals 6

    .prologue
    const-string v0, "Could not create Crashlytics-specific directory: "

    const-string v1, "Unexpected non-directory file: "

    const-class v2, Lˑˋ/ˈ;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; deleting file and creating new directory."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FirebaseCrashlytics"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "FirebaseCrashlytics"

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FirebaseCrashlytics"

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static ˆʾ(Ljava/io/File;)Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lˑˋ/ˈ;->ˆʾ(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static ٴﹶ([Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .prologue
    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ʽ(Lʽᵎ/ﹳٴ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 17

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lʽᵎ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, v1, Lˑˋ/ˈ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˊʼ/ˏי;

    iget-object v7, v0, Lʽᵎ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iput-object v7, v2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    new-instance v3, Lˉʾ/ﹶ;

    iget-object v8, v0, Lʽᵎ/ﹳٴ;->ʽ:Ljava/lang/String;

    iget-object v0, v1, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v8}, Lˉʾ/ﹶ;-><init>(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lˊʼ/יـ;

    sget-object v2, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ﾞʻ:Lˋⁱ/ﾞᴵ;

    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v4

    sget-object v5, Lˉᵎ/ⁱˊ;->ˈ:[B

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    sget-object v5, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ﾞᴵ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v8, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v8, :cond_1

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʼʼ()V

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v5

    goto :goto_3

    :goto_2
    monitor-exit v5

    throw v0

    :cond_2
    :goto_3
    sget-object v5, Lˉᵎ/ⁱˊ;->ˈ:[B

    const/16 v8, 0x12

    const-wide v9, 0x3fb999999999999aL    # 0.1

    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    const/16 v4, 0xa6

    aget-byte v11, v5, v4

    invoke-static {}, Lᵢـ/ʼˎ;->ⁱˊ()[B

    move-result-object v12

    aget-byte v12, v12, v4

    sub-int/2addr v11, v12

    int-to-byte v11, v11

    if-ne v11, v8, :cond_5

    sget-object v11, Lar/tvplayer/core/domain/F;->ﹳٴ:Lar/tvplayer/core/domain/F;

    invoke-static {v4, v11}, Lᐧـ/ˈ;->ٴﹶ(ILar/tvplayer/core/domain/F;)I

    move-result v4

    const/16 v11, 0xac

    aget-byte v11, v5, v11

    add-int/lit8 v11, v11, 0x51

    if-ne v4, v11, :cond_5

    :cond_4
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ـˆ()Z

    goto :goto_6

    :cond_5
    sput-boolean v6, Lʿˋ/ˋᵔ;->ˈ:Z

    sget v4, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_4
    int-to-double v11, v4

    sget v13, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    int-to-double v13, v13

    add-double/2addr v13, v9

    cmpg-double v11, v11, v13

    if-nez v11, :cond_24

    if-eqz v5, :cond_6

    const/16 v11, 0xbac

    mul-int/2addr v11, v4

    invoke-static {v11, v5}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    goto :goto_5

    :cond_6
    sget v4, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_5
    sput v4, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sget-boolean v4, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    :goto_6
    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v4

    sget-object v5, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v5, :cond_7

    if-nez v4, :cond_7

    move v4, v7

    goto :goto_7

    :cond_7
    move v4, v6

    :goto_7
    sget-object v5, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v5, :cond_9

    if-eqz v4, :cond_9

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    sget-object v11, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v11, :cond_8

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵎﹶ()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v11}, Lﹶˈ/ʼˎ;->ˑʼ([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/Signature;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽﹳ([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    monitor-exit v5

    goto :goto_a

    :goto_9
    monitor-exit v5

    throw v0

    :cond_9
    :goto_a
    sget-object v11, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    const/16 v12, 0x35

    if-nez v11, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    if-eqz v11, :cond_d

    const/16 v4, 0x60

    aget-byte v4, v11, v4

    if-ne v4, v12, :cond_d

    :cond_b
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    sput-boolean v6, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    :cond_c
    move/from16 p1, v8

    goto :goto_d

    :cond_d
    sput-boolean v6, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    sget v4, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    :goto_b
    int-to-double v13, v4

    sget v5, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    move/from16 p1, v8

    move-wide v15, v9

    int-to-double v8, v5

    add-double/2addr v8, v15

    cmpg-double v5, v13, v8

    if-nez v5, :cond_23

    if-eqz v11, :cond_e

    const/16 v5, 0x13e0

    mul-int/2addr v5, v4

    invoke-static {v5, v11}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    goto :goto_c

    :cond_e
    sget v4, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    :goto_c
    sput v4, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    sget-boolean v4, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    :goto_d
    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v4

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v5, :cond_f

    if-nez v4, :cond_f

    move v4, v7

    goto :goto_e

    :cond_f
    move v4, v6

    :goto_e
    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v5, :cond_16

    if-eqz v4, :cond_16

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔʾ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    sget-object v8, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v8, :cond_15

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v11, v6

    :goto_f
    if-ge v11, v10, :cond_11

    aget-object v13, v9, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ٴﹶ()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_10

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_14

    :cond_11
    const/4 v13, 0x0

    :goto_10
    sput-object v13, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי:Ljava/lang/String;

    sget-object v9, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    sput-object v9, Lar/tvplayer/core/domain/ᵎⁱ;->ʼᐧ:Ljava/lang/reflect/Method;

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽ()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lar/tvplayer/core/domain/ᵎⁱ;->ʻٴ:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    array-length v11, v9

    move v13, v6

    :goto_11
    if-ge v13, v11, :cond_12

    aget-object v14, v9, v13

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_12
    invoke-static {v10}, Lﹶˈ/ˆʾ;->יﹳ(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v8

    array-length v10, v8

    move v11, v6

    :goto_12
    if-ge v11, v10, :cond_14

    aget-object v13, v8, v11

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v13, v14}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˆʾ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_14
    :goto_13
    sput-object v9, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_15
    monitor-exit v5

    goto :goto_15

    :goto_14
    monitor-exit v5

    throw v0

    :cond_16
    :goto_15
    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    const/4 v8, 0x6

    if-nez v5, :cond_17

    if-eqz v4, :cond_1a

    :cond_17
    sget-object v4, Lar/tvplayer/core/domain/ᵎⁱ;->ʻٴ:Ljava/lang/String;

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי:Ljava/lang/String;

    invoke-static {v4, v5, v6, v6, v8}, Lﹶˑ/ˆʾ;->ٴﹳ(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v4

    sget v5, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    sget v9, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sub-int/2addr v5, v9

    if-ne v4, v5, :cond_1c

    sget-object v4, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19

    :cond_18
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˆʾ()Ljava/lang/String;

    move-result-object v5

    :cond_19
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->יـ()I

    move-result v5

    if-ne v4, v5, :cond_1c

    :cond_1a
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lﹳˎ/ˆʾ;->ᵎﹶ(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_20

    sput-boolean v6, Lʿˋ/ˋᵔ;->ﾞᴵ:Z

    sget v4, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    int-to-double v4, v4

    sget v9, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    int-to-double v9, v9

    const-wide v13, 0x3fc999999999999aL    # 0.2

    add-double/2addr v9, v13

    cmpg-double v4, v4, v9

    if-nez v4, :cond_1b

    move v4, v7

    goto :goto_16

    :cond_1b
    move v4, v6

    :goto_16
    sput-boolean v4, Lcom/bumptech/glide/ʽ;->ᵔᵢ:Z

    goto :goto_18

    :cond_1c
    sput-boolean v6, Lʿˋ/ˋᵔ;->ﾞᴵ:Z

    sget-object v4, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-eqz v4, :cond_1d

    invoke-static {v4}, Lﹶˈ/ʼˎ;->ʽᵔ([B)V

    :cond_1d
    sget-object v4, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-eqz v4, :cond_1e

    invoke-static {v4}, Lﹶˈ/ʼˎ;->ᐧﹶ([B)V

    :cond_1e
    sget v4, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    int-to-double v4, v4

    const-wide v9, 0x3fd999999999999aL    # 0.4

    add-double/2addr v4, v9

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->יـ()I

    move-result v9

    int-to-double v9, v9

    cmpg-double v4, v4, v9

    if-nez v4, :cond_1f

    move v4, v7

    goto :goto_17

    :cond_1f
    move v4, v6

    :goto_17
    sput-boolean v4, Lˈˋ/ʾˊ;->ﹳٴ:Z

    :cond_20
    :goto_18
    sget-object v4, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    const/4 v5, 0x4

    if-nez v4, :cond_22

    monitor-enter v2

    :try_start_3
    sget-object v4, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    if-nez v4, :cond_21

    sget-object v4, Lᵢـ/ˈ;->ⁱˊ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v4

    const-class v9, Lar/tvplayer/core/data/db/TvPlayerDatabase;

    const-string v10, "TvPlayer.db"

    invoke-static {v4, v9, v10}, Lʼﾞ/ʽ;->ˈ(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lʼﾞ/ʽʽ;

    move-result-object v4

    new-instance v9, Lʿʿ/ﹳٴ;

    invoke-direct {v9, v6}, Lʿʿ/ﹳٴ;-><init>(Z)V

    iput-object v9, v4, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    invoke-virtual {v4}, Lʼﾞ/ʽʽ;->ʽ()V

    const/16 v9, 0x37

    new-array v9, v9, [Lᵔᴵ/ⁱˊ;

    sget-object v10, Lˎˎ/ﾞʻ;->ﹳٴ:Lˎˎ/ⁱˊ;

    aput-object v10, v9, v6

    sget-object v10, Lˎˎ/ﾞʻ;->ⁱˊ:Lˎˎ/ⁱˊ;

    aput-object v10, v9, v7

    sget-object v10, Lˎˎ/ﾞʻ;->ʽ:Lˎˎ/ʽ;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    sget-object v10, Lˎˎ/ﾞʻ;->ˈ:Lˎˎ/ʽ;

    const/4 v11, 0x3

    aput-object v10, v9, v11

    sget-object v10, Lˎˎ/ﾞʻ;->ˑﹳ:Lˎˎ/ʽ;

    aput-object v10, v9, v5

    sget-object v10, Lˎˎ/ﾞʻ;->ﾞᴵ:Lˎˎ/ʽ;

    const/4 v11, 0x5

    aput-object v10, v9, v11

    sget-object v10, Lˎˎ/ﾞʻ;->ᵎﹶ:Lˎˎ/ʽ;

    aput-object v10, v9, v8

    sget-object v8, Lˎˎ/ﾞʻ;->ᵔᵢ:Lˎˎ/ʽ;

    const/4 v10, 0x7

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʼˎ:Lˎˎ/ʽ;

    const/16 v10, 0x8

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˆʾ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x9

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ٴﹶ:Lˎˎ/ⁱˊ;

    const/16 v10, 0xa

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ﾞʻ:Lˎˎ/ⁱˊ;

    const/16 v10, 0xb

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˉʿ:Lˎˎ/ⁱˊ;

    const/16 v10, 0xc

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵔʾ:Lˎˎ/ⁱˊ;

    const/16 v10, 0xd

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˉˆ:Lˎˎ/ⁱˊ;

    const/16 v10, 0xe

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʼᐧ:Lˎˎ/ⁱˊ;

    const/16 v10, 0xf

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵔﹳ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x10

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ﹳᐧ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x11

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->יـ:Lˎˎ/ⁱˊ;

    aput-object v8, v9, p1

    sget-object v8, Lˎˎ/ﾞʻ;->ˏי:Lˎˎ/ⁱˊ;

    const/16 v10, 0x13

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʽﹳ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x14

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʻٴ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x15

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ـˆ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x16

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʾᵎ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x17

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʼʼ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x18

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵢˏ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x19

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʾˋ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x1a

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᴵˊ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x1b

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʽʽ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x1c

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˈٴ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x1d

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᴵᵔ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x1e

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˊʻ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x1f

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ٴᵢ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x20

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˉٴ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x21

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵎⁱ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x22

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ٴʼ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x23

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵎˊ:Lˎˎ/ⁱˊ;

    const/16 v10, 0x24

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵔי:Lˎˎ/ʽ;

    const/16 v10, 0x25

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˆﾞ:Lˎˎ/ʽ;

    const/16 v10, 0x26

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵔٴ:Lˎˎ/ʽ;

    const/16 v10, 0x27

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˈʿ:Lˎˎ/ʽ;

    const/16 v10, 0x28

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˑٴ:Lˎˎ/ʽ;

    const/16 v10, 0x29

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˋᵔ:Lˎˎ/ʽ;

    const/16 v10, 0x2a

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˊˋ:Lˎˎ/ʽ;

    const/16 v10, 0x2b

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʼˈ:Lˎˎ/ʽ;

    const/16 v10, 0x2c

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ـˏ:Lˎˎ/ʽ;

    const/16 v10, 0x2d

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ﹳـ:Lˎˎ/ʽ;

    const/16 v10, 0x2e

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˈⁱ:Lˎˎ/ʽ;

    const/16 v10, 0x2f

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᴵˑ:Lˎˎ/ʽ;

    const/16 v10, 0x30

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ˉـ:Lˎˎ/ʽ;

    const/16 v10, 0x31

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʿ:Lˎˎ/ʽ;

    const/16 v10, 0x32

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ʿᵢ:Lˎˎ/ʽ;

    const/16 v10, 0x33

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᵎᵔ:Lˎˎ/ʽ;

    const/16 v10, 0x34

    aput-object v8, v9, v10

    sget-object v8, Lˎˎ/ﾞʻ;->ᐧﾞ:Lˎˎ/ʽ;

    aput-object v8, v9, v12

    sget-object v8, Lˎˎ/ﾞʻ;->ᐧᴵ:Lˎˎ/ʽ;

    const/16 v10, 0x36

    aput-object v8, v9, v10

    invoke-virtual {v4, v9}, Lʼﾞ/ʽʽ;->ﹳٴ([Lᵔᴵ/ⁱˊ;)V

    invoke-virtual {v4}, Lʼﾞ/ʽʽ;->ⁱˊ()Lʼﾞ/ˊʻ;

    move-result-object v4

    check-cast v4, Lar/tvplayer/core/data/db/TvPlayerDatabase;

    sput-object v4, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_19

    :catchall_3
    move-exception v0

    goto :goto_1a

    :cond_21
    :goto_19
    monitor-exit v2

    goto :goto_1b

    :goto_1a
    monitor-exit v2

    throw v0

    :cond_22
    :goto_1b
    sget-object v2, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    invoke-virtual {v2}, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ᵔי()Lˑᵢ/ˈˏ;

    move-result-object v2

    iget-object v4, v2, Lˑᵢ/ˈˏ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v8, Lˑᵢ/ᐧᴵ;

    invoke-direct {v8, v2, v5, v3}, Lˑᵢ/ᐧᴵ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4, v6, v7, v8}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lˊʼ/יـ;->ʾˋ:J

    goto :goto_1c

    :cond_23
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, p1

    move-wide v9, v15

    goto/16 :goto_b

    :cond_24
    move/from16 p1, v8

    move-wide v15, v9

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_25
    :goto_1c
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0
.end method

.method public ˈ(Lʽᵎ/ᵎﹶ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 8

    .prologue
    iget-wide v0, p1, Lʽᵎ/ᵎﹶ;->ⁱˊ:J

    iget-object p2, p0, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    check-cast p2, Landroid/util/LongSparseArray;

    iget-object v2, p0, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lˊʼ/יـ;

    iget-wide v3, v2, Lˊʼ/יـ;->ʾˋ:J

    invoke-virtual {p2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    if-nez v3, :cond_0

    iget-wide v5, v2, Lˊʼ/יـ;->ʾˋ:J

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Long;

    const/4 v7, 0x0

    aput-object v3, v1, v7

    new-instance v3, Ljava/util/HashSet;

    invoke-static {v0}, Lﹶˈ/ˏי;->ˉـ(I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    aget-object v0, v1, v7

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/Long;

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/Long;

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-wide v0, v2, Lˊʼ/יـ;->ʾˋ:J

    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/ˈ;->ᵔʾ(Lʽᵎ/ᵎﹶ;J)Lˉʾ/ـᵢ;

    move-result-object p1

    iget-object p2, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v4
.end method

.method public ˑﹳ()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lˊʼ/ᵔﹳ;

    iget-boolean v0, v0, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public ᵎﹶ(Ljava/lang/AutoCloseable;)[Lˑי/ⁱˊ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lˑי/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public ᵔᵢ(Ljava/lang/String;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0

    .prologue
    iget-object p1, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˊʼ/ˏי;

    iget-object p1, p1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public ﹳٴ(Ljava/lang/String;)V
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lˑˋ/ˈ;->ˆʾ(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Deleted previous Crashlytics file system: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "FirebaseCrashlytics"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    nop

    :cond_0
    return-void
.end method

.method public ﾞʻ(Ljava/lang/AutoCloseable;[Lˑי/ⁱˊ;)V
    .locals 12

    .prologue
    iget-object v0, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-virtual {p0, p1}, Lˑˋ/ˈ;->ᵎﹶ(Ljava/lang/AutoCloseable;)[Lˑי/ⁱˊ;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    array-length v2, p2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {v5, p1}, Lˑי/ⁱˊ;->ﹳٴ(Ljava/lang/AutoCloseable;)V

    iget-object v6, v5, Lˑי/ⁱˊ;->ˈ:Lˑי/ʽ;

    iget-object v6, v6, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lˉʼ/ᵎﹶ;

    iget-object v6, v6, Lˉʼ/ᵎﹶ;->ᵔᵢ:[Ljava/lang/Class;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_0
    :goto_2
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    array-length p2, v2

    :goto_3
    if-ge v3, p2, :cond_4

    aget-object v0, v2, v3

    invoke-virtual {v0, p1}, Lˑי/ⁱˊ;->ﹳٴ(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public ﾞᴵ(Ljava/lang/String;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object p2, p0, Lˑˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lˊʼ/ˏי;

    iget-object p2, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    invoke-static {p1, p2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p2, Lˊʼ/ᵔﹳ;

    iget-object v0, p0, Lˑˋ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p2, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
