.class public Lcom/google/firebase/concurrent/ExecutorsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ThreadPoolCreation"
    }
.end annotation


# static fields
.field public static final ʽ:Lˏ/ٴﹶ;

.field public static final ˈ:Lˏ/ٴﹶ;

.field public static final ⁱˊ:Lˏ/ٴﹶ;

.field public static final ﹳٴ:Lˏ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˏ/ٴﹶ;

    new-instance v1, Lˏ/ˑﹳ;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lˏ/ˑﹳ;-><init>(I)V

    invoke-direct {v0, v1}, Lˏ/ٴﹶ;-><init>(Lʾﹳ/ⁱˊ;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ﹳٴ:Lˏ/ٴﹶ;

    new-instance v0, Lˏ/ٴﹶ;

    new-instance v1, Lˏ/ˑﹳ;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lˏ/ˑﹳ;-><init>(I)V

    invoke-direct {v0, v1}, Lˏ/ٴﹶ;-><init>(Lʾﹳ/ⁱˊ;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ⁱˊ:Lˏ/ٴﹶ;

    new-instance v0, Lˏ/ٴﹶ;

    new-instance v1, Lˏ/ˑﹳ;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lˏ/ˑﹳ;-><init>(I)V

    invoke-direct {v0, v1}, Lˏ/ٴﹶ;-><init>(Lʾﹳ/ⁱˊ;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ʽ:Lˏ/ٴﹶ;

    new-instance v0, Lˏ/ٴﹶ;

    new-instance v1, Lˏ/ˑﹳ;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lˏ/ˑﹳ;-><init>(I)V

    invoke-direct {v0, v1}, Lˏ/ٴﹶ;-><init>(Lʾﹳ/ⁱˊ;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ˈ:Lˏ/ٴﹶ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ﹳٴ()Lˏᐧ/ᵎﹶ;
    .locals 4

    .prologue
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Lˏᐧ/ﹳٴ;

    const-string v2, "Firebase Background"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v0}, Lˏᐧ/ﹳٴ;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lˏᐧ/ᵎﹶ;

    sget-object v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ˈ:Lˏ/ٴﹶ;

    invoke-virtual {v2}, Lˏ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0, v2}, Lˏᐧ/ᵎﹶ;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 21

    .prologue
    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ﹳٴ;

    const-class v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v3, Lˏ/ˉˆ;

    const-class v4, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v1, v4}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v5, Lˏ/ˉˆ;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v5, v1, v6}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v1, 0x2

    new-array v7, v1, [Lˏ/ˉˆ;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v5, v7, v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length v0, v7

    const/4 v14, 0x0

    move v10, v14

    :goto_0
    const-string v11, "Null interface"

    if-ge v10, v0, :cond_0

    aget-object v12, v7, v10

    invoke-static {v12, v11}, Lﹳˋ/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v0, Lˊˋ/ⁱˊ;

    const/16 v7, 0x16

    invoke-direct {v0, v7}, Lˊˋ/ⁱˊ;-><init>(I)V

    new-instance v10, Lˏ/ⁱˊ;

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v11

    const/4 v11, 0x0

    move v15, v14

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lˏ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILˏ/ˈ;Ljava/util/Set;)V

    new-instance v0, Lˏ/ˉˆ;

    const-class v7, Lˋˎ/ⁱˊ;

    invoke-direct {v0, v7, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v9, Lˏ/ˉˆ;

    invoke-direct {v9, v7, v4}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v11, Lˏ/ˉˆ;

    invoke-direct {v11, v7, v6}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-array v7, v1, [Lˏ/ˉˆ;

    aput-object v9, v7, v8

    aput-object v11, v7, v3

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length v0, v7

    const/16 v16, 0x0

    move/from16 v12, v16

    :goto_1
    if-ge v12, v0, :cond_1

    aget-object v13, v7, v12

    invoke-static {v13, v5}, Lﹳˋ/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v9, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v0, Lˊˋ/ⁱˊ;

    const/16 v7, 0x17

    invoke-direct {v0, v7}, Lˊˋ/ⁱˊ;-><init>(I)V

    new-instance v12, Lˏ/ⁱˊ;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v13, 0x0

    move/from16 v17, v16

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v19}, Lˏ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILˏ/ˈ;Ljava/util/Set;)V

    new-instance v0, Lˏ/ˉˆ;

    const-class v7, Lˋˎ/ʽ;

    invoke-direct {v0, v7, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v2, Lˏ/ˉˆ;

    invoke-direct {v2, v7, v4}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v4, Lˏ/ˉˆ;

    invoke-direct {v4, v7, v6}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-array v7, v1, [Lˏ/ˉˆ;

    aput-object v2, v7, v8

    aput-object v4, v7, v3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length v0, v7

    const/16 v17, 0x0

    move/from16 v9, v17

    :goto_2
    if-ge v9, v0, :cond_2

    aget-object v11, v7, v9

    invoke-static {v11, v5}, Lﹳˋ/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v2, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v0, Lˊˋ/ⁱˊ;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lˊˋ/ⁱˊ;-><init>(I)V

    new-instance v13, Lˏ/ⁱˊ;

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v14, 0x0

    move/from16 v18, v17

    move-object/from16 v19, v0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lˏ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILˏ/ˈ;Ljava/util/Set;)V

    new-instance v0, Lˏ/ˉˆ;

    const-class v2, Lˋˎ/ˈ;

    invoke-direct {v0, v2, v6}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lˏ/ⁱˊ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;

    move-result-object v0

    new-instance v2, Lˊˋ/ⁱˊ;

    const/16 v4, 0x19

    invoke-direct {v2, v4}, Lˊˋ/ⁱˊ;-><init>(I)V

    iput-object v2, v0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Lˏ/ⁱˊ;

    aput-object v10, v2, v8

    aput-object v12, v2, v3

    aput-object v13, v2, v1

    const/4 v1, 0x3

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
