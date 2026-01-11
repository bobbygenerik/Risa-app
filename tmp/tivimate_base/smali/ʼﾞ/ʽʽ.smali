.class public final Lʼﾞ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Z

.field public ʼᐧ:Z

.field public final ʽ:Ljava/lang/String;

.field public final ˆʾ:J

.field public final ˈ:Ljava/util/ArrayList;

.field public final ˉʿ:Ljava/util/LinkedHashSet;

.field public ˉˆ:Z

.field public final ˑﹳ:Ljava/util/ArrayList;

.field public final יـ:I

.field public final ٴﹶ:Lʼﾞ/ˈٴ;

.field public ᵎﹶ:Ljava/util/concurrent/Executor;

.field public final ᵔʾ:Ljava/util/ArrayList;

.field public ᵔᵢ:Lʼﹶ/ʽ;

.field public ᵔﹳ:Z

.field public final ⁱˊ:Landroid/content/Context;

.field public final ﹳٴ:Lˊʼ/ﾞᴵ;

.field public final ﹳᐧ:Z

.field public final ﾞʻ:Ljava/util/LinkedHashSet;

.field public ﾞᴵ:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʼﾞ/ʽʽ;->ˈ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʼﾞ/ʽʽ;->ˑﹳ:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lʼﾞ/ʽʽ;->יـ:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lʼﾞ/ʽʽ;->ˆʾ:J

    new-instance v1, Lʼﾞ/ˈٴ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lʼﾞ/ˈٴ;-><init>(I)V

    iput-object v1, p0, Lʼﾞ/ʽʽ;->ٴﹶ:Lʼﾞ/ˈٴ;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lʼﾞ/ʽʽ;->ﾞʻ:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lʼﾞ/ʽʽ;->ˉʿ:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lʼﾞ/ʽʽ;->ᵔʾ:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lʼﾞ/ʽʽ;->ˉˆ:Z

    iput-boolean v0, p0, Lʼﾞ/ʽʽ;->ﹳᐧ:Z

    invoke-static {p2}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object p2

    iput-object p2, p0, Lʼﾞ/ʽʽ;->ﹳٴ:Lˊʼ/ﾞᴵ;

    iput-object p1, p0, Lʼﾞ/ʽʽ;->ⁱˊ:Landroid/content/Context;

    iput-object p3, p0, Lʼﾞ/ʽʽ;->ʽ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʼﾞ/ʽʽ;->ˉˆ:Z

    iput-boolean v0, p0, Lʼﾞ/ʽʽ;->ʼᐧ:Z

    iput-boolean v0, p0, Lʼﾞ/ʽʽ;->ᵔﹳ:Z

    return-void
.end method

.method public final ˈ(Lٴﾞ/ˆʾ;)V
    .locals 0

    iput-object p1, p0, Lʼﾞ/ʽʽ;->ᵔᵢ:Lʼﹶ/ʽ;

    return-void
.end method

.method public final ˑﹳ(Lʿʿ/ﹳٴ;)V
    .locals 0

    iput-object p1, p0, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final ⁱˊ()Lʼﾞ/ˊʻ;
    .locals 26

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v2, v1, Lʼﾞ/ʽʽ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    sget-object v0, Lʼᐧ/ⁱˊ;->ﾞʻ:Lʼᐧ/ﹳٴ;

    iput-object v0, v1, Lʼﾞ/ʽʽ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    iput-object v0, v1, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v1, Lʼﾞ/ʽʽ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v0, v1, Lʼﾞ/ʽʽ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, v1, Lʼﾞ/ʽʽ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    iput-object v0, v1, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    iget-object v0, v1, Lʼﾞ/ʽʽ;->ˉʿ:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    iget-object v3, v1, Lʼﾞ/ʽʽ;->ﾞʻ:Ljava/util/LinkedHashSet;

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    invoke-static {v2, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v0, v1, Lʼﾞ/ʽʽ;->ᵔᵢ:Lʼﹶ/ʽ;

    if-nez v0, :cond_5

    new-instance v0, Lᵔⁱ/ᵔʾ;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lᵔⁱ/ᵔʾ;-><init>(Z)V

    :cond_5
    move-object v6, v0

    iget-wide v4, v1, Lʼﾞ/ʽʽ;->ˆʾ:J

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    const/4 v4, 0x1

    if-lez v0, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const-string v5, "Required value was null."

    if-eqz v0, :cond_8

    iget-object v0, v1, Lʼﾞ/ʽʽ;->ʽ:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v16, v3

    new-instance v3, Lʼﾞ/ﹳٴ;

    iget-boolean v9, v1, Lʼﾞ/ʽʽ;->ʼˎ:Z

    const/4 v0, 0x0

    iget v7, v1, Lʼﾞ/ʽʽ;->יـ:I

    if-eqz v7, :cond_35

    iget-object v8, v1, Lʼﾞ/ʽʽ;->ⁱˊ:Landroid/content/Context;

    if-eq v7, v4, :cond_9

    :goto_3
    move v10, v7

    goto :goto_5

    :cond_9
    const-string v7, "activity"

    invoke-virtual {v8, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v10, v7, Landroid/app/ActivityManager;

    if-eqz v10, :cond_a

    check-cast v7, Landroid/app/ActivityManager;

    goto :goto_4

    :cond_a
    move-object v7, v0

    :goto_4
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x3

    goto :goto_3

    :cond_b
    const/4 v7, 0x2

    goto :goto_3

    :goto_5
    iget-object v11, v1, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    if-eqz v11, :cond_34

    iget-object v12, v1, Lʼﾞ/ʽʽ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    if-eqz v12, :cond_33

    iget-boolean v14, v1, Lʼﾞ/ʽʽ;->ˉˆ:Z

    iget-boolean v15, v1, Lʼﾞ/ʽʽ;->ʼᐧ:Z

    iget-boolean v7, v1, Lʼﾞ/ʽʽ;->ᵔﹳ:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v13, v5

    iget-object v5, v1, Lʼﾞ/ʽʽ;->ʽ:Ljava/lang/String;

    move/from16 v22, v7

    iget-object v7, v1, Lʼﾞ/ʽʽ;->ٴﹶ:Lʼﾞ/ˈٴ;

    move/from16 v17, v4

    move-object v4, v8

    iget-object v8, v1, Lʼﾞ/ʽʽ;->ˈ:Ljava/util/ArrayList;

    move-object/from16 v18, v13

    move/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    iget-object v2, v1, Lʼﾞ/ʽʽ;->ˑﹳ:Ljava/util/ArrayList;

    iget-object v13, v1, Lʼﾞ/ʽʽ;->ᵔʾ:Ljava/util/ArrayList;

    move-object/from16 v25, v20

    move-object/from16 v20, v2

    move/from16 v2, v21

    move-object/from16 v21, v13

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v24}, Lʼﾞ/ﹳٴ;-><init>(Landroid/content/Context;Ljava/lang/String;Lʼﹶ/ʽ;Lʼﾞ/ˈٴ;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLﹳᴵ/ⁱˊ;Lˈי/ᵔᵢ;)V

    iget-boolean v4, v1, Lʼﾞ/ʽʽ;->ﹳᐧ:Z

    iput-boolean v4, v3, Lʼﾞ/ﹳٴ;->ﹳᐧ:Z

    iget-object v4, v1, Lʼﾞ/ʽʽ;->ﹳٴ:Lˊʼ/ﾞᴵ;

    invoke-interface {v4}, Lˊʼ/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    :cond_c
    const-string v5, ""

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x5f

    const/16 v9, 0x2e

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_Impl"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_f

    move-object v5, v6

    goto :goto_7

    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v5, v2, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    check-cast v4, Lʼﾞ/ˊʻ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, v3, Lʼﾞ/ﹳٴ;->ﹳᐧ:Z

    iput-boolean v5, v4, Lʼﾞ/ˊʻ;->ٴﹶ:Z

    :try_start_1
    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ﾞᴵ()Lʼﾞ/ᵎⁱ;

    move-result-object v5
    :try_end_1
    .catch Lʻᵢ/ˈ; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-object v5, v0

    :goto_8
    if-eqz v5, :cond_32

    new-instance v6, Lʼﾞ/ᴵˊ;

    invoke-direct {v6, v3, v5}, Lʼﾞ/ᴵˊ;-><init>(Lʼﾞ/ﹳٴ;Lʼﾞ/ᵎⁱ;)V

    iput-object v6, v4, Lʼﾞ/ˊʻ;->ˑﹳ:Lʼﾞ/ᴵˊ;

    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ˑﹳ()Lʼﾞ/ٴﹶ;

    move-result-object v5

    iput-object v5, v4, Lʼﾞ/ˊʻ;->ﾞᴵ:Lʼﾞ/ٴﹶ;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ᵔᵢ()Ljava/util/Set;

    move-result-object v6

    iget-object v7, v3, Lʼﾞ/ﹳٴ;->ˉˆ:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v8, [Z

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lᐧˆ/ⁱˊ;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v12

    add-int/2addr v12, v11

    if-ltz v12, :cond_12

    :goto_a
    add-int/lit8 v13, v12, -0x1

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v10

    check-cast v15, Lˊʼ/ﾞᴵ;

    invoke-virtual {v15, v14}, Lˊʼ/ﾞᴵ;->ˈ(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    aput-boolean v2, v9, v12

    move v11, v12

    goto :goto_b

    :cond_10
    if-gez v13, :cond_11

    goto :goto_b

    :cond_11
    move v12, v13

    goto :goto_a

    :cond_12
    :goto_b
    if-ltz v11, :cond_13

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "A required auto migration spec ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v10, Lˊʼ/ﾞᴵ;

    invoke-virtual {v10}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is missing in the database configuration."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v6, v11

    if-ltz v6, :cond_17

    :goto_c
    add-int/lit8 v7, v6, -0x1

    if-ge v6, v8, :cond_16

    aget-boolean v6, v9, v6

    if-eqz v6, :cond_16

    if-gez v7, :cond_15

    goto :goto_d

    :cond_15
    move v6, v7

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_d
    invoke-virtual {v4, v5}, Lʼﾞ/ˊʻ;->ˈ(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵔᴵ/ⁱˊ;

    iget v7, v6, Lᵔᴵ/ⁱˊ;->ﹳٴ:I

    iget v8, v6, Lᵔᴵ/ⁱˊ;->ⁱˊ:I

    iget-object v9, v3, Lʼﾞ/ﹳٴ;->ˈ:Lʼﾞ/ˈٴ;

    iget-object v10, v9, Lʼﾞ/ˈٴ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_19

    sget-object v7, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    :cond_19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_f

    :cond_1a
    const/4 v7, 0x0

    :goto_f
    if-nez v7, :cond_18

    invoke-virtual {v9, v6}, Lʼﾞ/ˈٴ;->ﹳٴ(Lᵔᴵ/ⁱˊ;)V

    goto :goto_e

    :cond_1b
    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ʼˎ()Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, v3, Lʼﾞ/ﹳٴ;->ᵔʾ:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Z

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lᐧˆ/ⁱˊ;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lᐧˆ/ⁱˊ;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v12

    add-int/2addr v12, v11

    if-ltz v12, :cond_1f

    :goto_11
    add-int/lit8 v13, v12, -0x1

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v10

    check-cast v15, Lˊʼ/ﾞᴵ;

    invoke-virtual {v15, v14}, Lˊʼ/ﾞᴵ;->ˈ(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    aput-boolean v2, v7, v12

    goto :goto_13

    :cond_1d
    if-gez v13, :cond_1e

    goto :goto_12

    :cond_1e
    move v12, v13

    goto :goto_11

    :cond_1f
    :goto_12
    move v12, v11

    :goto_13
    if-ltz v12, :cond_20

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v4, Lʼﾞ/ˊʻ;->ˆʾ:Ljava/util/LinkedHashMap;

    invoke-interface {v13, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "A required type converter ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v10, Lˊʼ/ﾞᴵ;

    invoke-virtual {v10}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v9, Lˊʼ/ﾞᴵ;

    invoke-virtual {v9}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is missing in the database configuration."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v11

    if-ltz v2, :cond_24

    :goto_14
    add-int/lit8 v5, v2, -0x1

    aget-boolean v8, v7, v2

    if-eqz v8, :cond_23

    if-gez v5, :cond_22

    goto :goto_15

    :cond_22
    move v2, v5

    goto :goto_14

    :cond_23
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected type converter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    :goto_15
    iget-object v2, v3, Lʼﾞ/ﹳٴ;->ᵔᵢ:Ljava/util/concurrent/Executor;

    iput-object v2, v4, Lʼﾞ/ˊʻ;->ʽ:Ljava/util/concurrent/Executor;

    new-instance v2, Lʼﾞ/ˈʿ;

    iget-object v5, v3, Lʼﾞ/ﹳٴ;->ʼˎ:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lʼﾞ/ˈʿ;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v2, v4, Lʼﾞ/ˊʻ;->ˈ:Lʼﾞ/ˈʿ;

    iget-object v2, v4, Lʼﾞ/ˊʻ;->ʽ:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_25

    move-object v2, v0

    :cond_25
    invoke-static {v2}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object v2

    invoke-static {}, Lᴵי/ʾᵎ;->ˈ()Lᴵי/ﹶᐧ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v2

    invoke-static {v2}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v2

    iput-object v2, v4, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    iget-object v2, v2, Lˊʽ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    iget-object v5, v4, Lʼﾞ/ˊʻ;->ˈ:Lʼﾞ/ˈʿ;

    if-nez v5, :cond_26

    move-object v5, v0

    :cond_26
    invoke-static {v5}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object v5

    invoke-interface {v2, v5}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v2

    iput-object v2, v4, Lʼﾞ/ˊʻ;->ⁱˊ:Lˈי/ᵔᵢ;

    iget-boolean v2, v3, Lʼﾞ/ﹳٴ;->ﾞᴵ:Z

    iput-boolean v2, v4, Lʼﾞ/ˊʻ;->ᵔᵢ:Z

    iget-object v2, v4, Lʼﾞ/ˊʻ;->ˑﹳ:Lʼﾞ/ᴵˊ;

    if-nez v2, :cond_27

    move-object v2, v0

    :cond_27
    invoke-virtual {v2}, Lʼﾞ/ᴵˊ;->ʽ()Lʼﹶ/ˈ;

    move-result-object v2

    if-nez v2, :cond_29

    :cond_28
    move-object v2, v0

    goto :goto_17

    :cond_29
    :goto_16
    instance-of v5, v2, Lﹳʼ/ⁱˊ;

    if-eqz v5, :cond_2a

    goto :goto_17

    :cond_2a
    instance-of v5, v2, Lʼﾞ/ⁱˊ;

    if-eqz v5, :cond_28

    check-cast v2, Lʼﾞ/ⁱˊ;

    invoke-interface {v2}, Lʼﾞ/ⁱˊ;->ʽ()Lʼﹶ/ˈ;

    move-result-object v2

    goto :goto_16

    :goto_17
    check-cast v2, Lﹳʼ/ⁱˊ;

    iget-object v2, v4, Lʼﾞ/ˊʻ;->ˑﹳ:Lʼﾞ/ᴵˊ;

    if-nez v2, :cond_2b

    move-object v2, v0

    :cond_2b
    invoke-virtual {v2}, Lʼﾞ/ᴵˊ;->ʽ()Lʼﹶ/ˈ;

    move-result-object v2

    if-nez v2, :cond_2d

    :cond_2c
    move-object v2, v0

    goto :goto_19

    :cond_2d
    :goto_18
    instance-of v5, v2, Lﹳʼ/ﹳٴ;

    if-eqz v5, :cond_2e

    goto :goto_19

    :cond_2e
    instance-of v5, v2, Lʼﾞ/ⁱˊ;

    if-eqz v5, :cond_2c

    check-cast v2, Lʼﾞ/ⁱˊ;

    invoke-interface {v2}, Lʼﾞ/ⁱˊ;->ʽ()Lʼﹶ/ˈ;

    move-result-object v2

    goto :goto_18

    :goto_19
    check-cast v2, Lﹳʼ/ﹳٴ;

    iget-object v2, v3, Lʼﾞ/ﹳٴ;->ˆʾ:Landroid/content/Intent;

    if-eqz v2, :cond_31

    iget-object v5, v3, Lʼﾞ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v6, v4, Lʼﾞ/ˊʻ;->ﾞᴵ:Lʼﾞ/ٴﹶ;

    if-nez v6, :cond_2f

    goto :goto_1a

    :cond_2f
    move-object v0, v6

    :goto_1a
    iput-object v2, v0, Lʼﾞ/ٴﹶ;->ʼˎ:Landroid/content/Intent;

    new-instance v2, Lʼﾞ/ᵔﹳ;

    iget-object v3, v3, Lʼﾞ/ﹳٴ;->ﹳٴ:Landroid/content/Context;

    invoke-direct {v2, v3, v5, v0}, Lʼﾞ/ᵔﹳ;-><init>(Landroid/content/Context;Ljava/lang/String;Lʼﾞ/ٴﹶ;)V

    iput-object v2, v0, Lʼﾞ/ٴﹶ;->ˆʾ:Lʼﾞ/ᵔﹳ;

    goto :goto_1b

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v13, v25

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_1b
    return-object v4

    :cond_32
    new-instance v2, Lʼﾞ/ᴵˊ;

    new-instance v5, Lar/tvplayer/core/domain/ـˆ;

    invoke-direct {v5, v4}, Lar/tvplayer/core/domain/ـˆ;-><init>(Lʼﾞ/ˊʻ;)V

    invoke-direct {v2, v3, v5}, Lʼﾞ/ᴵˊ;-><init>(Lʼﾞ/ﹳٴ;Lar/tvplayer/core/domain/ـˆ;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1c

    :catch_2
    move-exception v0

    goto :goto_1d

    :catch_3
    move-exception v0

    goto :goto_1e

    :goto_1c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create an instance of "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Cannot access the constructor "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Cannot find implementation for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist. Is Room annotation processor correctly configured?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_33
    move-object v13, v5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    move-object v13, v5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    throw v0
.end method

.method public final varargs ﹳٴ([Lᵔᴵ/ⁱˊ;)V
    .locals 6

    .prologue
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget v4, v3, Lᵔᴵ/ⁱˊ;->ﹳٴ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lʼﾞ/ʽʽ;->ˉʿ:Ljava/util/LinkedHashSet;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v3, v3, Lᵔᴵ/ⁱˊ;->ⁱˊ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lᵔᴵ/ⁱˊ;

    iget-object v0, p0, Lʼﾞ/ʽʽ;->ٴﹶ:Lʼﾞ/ˈٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lʼﾞ/ˈٴ;->ﹳٴ(Lᵔᴵ/ⁱˊ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
