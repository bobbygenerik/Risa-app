.class public final Lcom/bumptech/glide/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile ٴʼ:Z

.field public static volatile ᵎⁱ:Lcom/bumptech/glide/ⁱˊ;


# instance fields
.field public final ʽʽ:Lʾⁱ/ﾞᴵ;

.field public final ʾˋ:Lʿʾ/ˉʿ;

.field public final ˈٴ:Lcom/bumptech/glide/ˑﹳ;

.field public final ˉٴ:Ljava/util/ArrayList;

.field public final ˊʻ:Lٴʽ/ﾞʻ;

.field public final ٴᵢ:Lﹳˋ/ʼˎ;

.field public final ᴵˊ:Lיᐧ/ﹳٴ;

.field public final ᴵᵔ:Lיᐧ/ﾞᴵ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lʿʾ/ˉʿ;Lʾⁱ/ﾞᴵ;Lיᐧ/ﹳٴ;Lיᐧ/ﾞᴵ;Lٴʽ/ﾞʻ;Lﹳˋ/ʼˎ;ILˋⁱ/ﾞᴵ;Lיـ/ˑﹳ;Ljava/util/List;Ljava/util/List;Lʼ/ᵎﹶ;Lﹳי/ʽ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/bumptech/glide/ⁱˊ;->ʾˋ:Lʿʾ/ˉʿ;

    iput-object p4, p0, Lcom/bumptech/glide/ⁱˊ;->ᴵˊ:Lיᐧ/ﹳٴ;

    iput-object p5, p0, Lcom/bumptech/glide/ⁱˊ;->ᴵᵔ:Lיᐧ/ﾞᴵ;

    iput-object p3, p0, Lcom/bumptech/glide/ⁱˊ;->ʽʽ:Lʾⁱ/ﾞᴵ;

    iput-object p6, p0, Lcom/bumptech/glide/ⁱˊ;->ˊʻ:Lٴʽ/ﾞʻ;

    iput-object p7, p0, Lcom/bumptech/glide/ⁱˊ;->ٴᵢ:Lﹳˋ/ʼˎ;

    new-instance p4, Lcom/bumptech/glide/ʼˎ;

    invoke-direct {p4, p0, p12, p13}, Lcom/bumptech/glide/ʼˎ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, p5

    new-instance p5, Lᵎˉ/ⁱˊ;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    move-object p6, p9

    move-object p9, p2

    move-object p2, p1

    new-instance p1, Lcom/bumptech/glide/ˑﹳ;

    move-object p7, p11

    move p11, p8

    move-object p8, p7

    move-object p7, p10

    move-object p10, p14

    invoke-direct/range {p1 .. p11}, Lcom/bumptech/glide/ˑﹳ;-><init>(Landroid/content/Context;Lיᐧ/ﾞᴵ;Lcom/bumptech/glide/ʼˎ;Lᵎˉ/ⁱˊ;Lˋⁱ/ﾞᴵ;Lיـ/ˑﹳ;Ljava/util/List;Lʿʾ/ˉʿ;Lﹳי/ʽ;I)V

    iput-object p1, p0, Lcom/bumptech/glide/ⁱˊ;->ˈٴ:Lcom/bumptech/glide/ˑﹳ;

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 32

    .prologue
    move-object/from16 v13, p1

    new-instance v10, Lיـ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    new-instance v2, Lcom/bumptech/glide/ﾞᴵ;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/ﾞᴵ;-><init>(I)V

    new-instance v9, Lˋⁱ/ﾞᴵ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v13, :cond_1

    instance-of v6, v13, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    const-string v0, "Got app info metadata: "

    const-string v6, "ManifestParser"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "Loading Glide modules"

    nop

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_1
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "GlideModule"

    iget-object v14, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v14, v11}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v11}, Lʽٴ/ˈ;->ʻٴ(Ljava/lang/String;)Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Loaded Glide module: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    nop

    goto :goto_2

    :cond_6
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Finished loading Glide modules"

    nop

    goto :goto_5

    :cond_7
    :goto_3
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Got null app info metadata"

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    const/4 v8, 0x6

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "Failed to parse glide modules"

    nop

    :cond_8
    :goto_5
    move-object v12, v7

    :goto_6
    const-string v0, "Glide"

    if-eqz v13, :cond_b

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_b
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Discovered GlideModule from manifest: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    goto :goto_8

    :cond_c
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_9

    :cond_d
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lʼ/ᵎﹶ;->ˆʾ()V

    :cond_e
    new-instance v0, Lˉˏ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v6, Lˉˏ/ˑﹳ;->ʽʽ:I

    const/4 v7, 0x4

    if-nez v6, :cond_f

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sput v6, Lˉˏ/ˑﹳ;->ʽʽ:I

    :cond_f
    sget v15, Lˉˏ/ˑﹳ;->ʽʽ:I

    const-string v6, "source"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lˉˏ/ʽ;

    invoke-direct {v8, v0, v6, v1}, Lˉˏ/ʽ;-><init>(Lˉˏ/ⁱˊ;Ljava/lang/String;Z)V

    const-wide/16 v17, 0x0

    move/from16 v16, v15

    move-object/from16 v21, v8

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lˉˏ/ˑﹳ;

    invoke-direct {v0, v14}, Lˉˏ/ˑﹳ;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v6, Lˉˏ/ˑﹳ;->ʽʽ:I

    new-instance v6, Lˉˏ/ⁱˊ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const-string v8, "disk-cache"

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v11, Lˉˏ/ʽ;

    const/4 v15, 0x1

    invoke-direct {v11, v6, v8, v15}, Lˉˏ/ʽ;-><init>(Lˉˏ/ⁱˊ;Ljava/lang/String;Z)V

    const-wide/16 v17, 0x0

    move/from16 v16, v15

    move-object/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v6, Lˉˏ/ˑﹳ;

    invoke-direct {v6, v14}, Lˉˏ/ˑﹳ;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v8, Lˉˏ/ˑﹳ;->ʽʽ:I

    if-nez v8, :cond_10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sput v8, Lˉˏ/ˑﹳ;->ʽʽ:I

    :cond_10
    sget v8, Lˉˏ/ˑﹳ;->ʽʽ:I

    const/4 v11, 0x1

    if-lt v8, v7, :cond_11

    move v15, v4

    goto :goto_a

    :cond_11
    move v15, v11

    :goto_a
    new-instance v4, Lˉˏ/ⁱˊ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v8, "animation"

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_18

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move/from16 p0, v7

    new-instance v7, Lˉˏ/ʽ;

    invoke-direct {v7, v4, v8, v11}, Lˉˏ/ʽ;-><init>(Lˉˏ/ⁱˊ;Ljava/lang/String;Z)V

    const-wide/16 v17, 0x0

    move/from16 v16, v15

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v4, Lˉˏ/ˑﹳ;

    invoke-direct {v4, v14}, Lˉˏ/ˑﹳ;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v7, Lʾⁱ/ᵎﹶ;

    invoke-direct {v7, v3}, Lʾⁱ/ᵎﹶ;-><init>(Landroid/content/Context;)V

    new-instance v8, Lʻᴵ/ˆʾ;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget-object v14, v7, Lʾⁱ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    iget v15, v7, Lʾⁱ/ᵎﹶ;->ˈ:F

    iget-object v11, v7, Lʾⁱ/ᵎﹶ;->ⁱˊ:Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x200000

    :goto_b
    move/from16 v1, v17

    goto :goto_c

    :cond_12
    const/high16 v17, 0x400000

    goto :goto_b

    :goto_c
    iput v1, v8, Lʻᴵ/ˆʾ;->ʽ:I

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v17

    const/high16 v19, 0x100000

    mul-int v5, v17, v19

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v17

    int-to-float v5, v5

    if-eqz v17, :cond_13

    const v17, 0x3ea8f5c3    # 0.33f

    goto :goto_d

    :cond_13
    const v17, 0x3ecccccd    # 0.4f

    :goto_d
    mul-float v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v7, v7, Lʾⁱ/ᵎﹶ;->ʽ:Landroidx/leanback/widget/ˉˆ;

    iget-object v7, v7, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    mul-float v7, v0, v15

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v0, v0, v17

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move-object/from16 v21, v4

    sub-int v4, v5, v1

    move-object/from16 p0, v6

    add-int v6, v0, v7

    if-gt v6, v4, :cond_14

    iput v0, v8, Lʻᴵ/ˆʾ;->ⁱˊ:I

    iput v7, v8, Lʻᴵ/ˆʾ;->ﹳٴ:I

    goto :goto_e

    :cond_14
    int-to-float v0, v4

    add-float v4, v15, v17

    div-float/2addr v0, v4

    mul-float v17, v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v8, Lʻᴵ/ˆʾ;->ⁱˊ:I

    mul-float/2addr v0, v15

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v8, Lʻᴵ/ˆʾ;->ﹳٴ:I

    :goto_e
    const-string v0, "MemorySizeCalculator"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Calculation complete, Calculated memory cache size: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v8, Lʻᴵ/ˆʾ;->ⁱˊ:I

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    int-to-long v9, v7

    invoke-static {v14, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pool size: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lʻᴵ/ˆʾ;->ﹳٴ:I

    int-to-long v9, v7

    invoke-static {v14, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", byte array size: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v9, v1

    invoke-static {v14, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memory class limited? "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v6, v5, :cond_15

    const/4 v1, 0x1

    goto :goto_f

    :cond_15
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", max size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v5

    invoke-static {v14, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memoryClass: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLowMemoryDevice: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto :goto_10

    :cond_16
    move-object/from16 v23, v9

    move-object/from16 v22, v10

    :goto_10
    new-instance v7, Lﹳˋ/ʼˎ;

    const/16 v0, 0x19

    invoke-direct {v7, v0}, Lﹳˋ/ʼˎ;-><init>(I)V

    iget v0, v8, Lʻᴵ/ˆʾ;->ﹳٴ:I

    if-lez v0, :cond_17

    new-instance v1, Lיᐧ/ᵎﹶ;

    int-to-long v4, v0

    invoke-direct {v1, v4, v5}, Lיᐧ/ᵎﹶ;-><init>(J)V

    :goto_11
    move-object v4, v1

    goto :goto_12

    :cond_17
    new-instance v1, Lﹳˋ/ʼˎ;

    const/16 v0, 0x16

    invoke-direct {v1, v0}, Lﹳˋ/ʼˎ;-><init>(I)V

    goto :goto_11

    :goto_12
    new-instance v5, Lיᐧ/ﾞᴵ;

    iget v0, v8, Lʻᴵ/ˆʾ;->ʽ:I

    invoke-direct {v5, v0}, Lיᐧ/ﾞᴵ;-><init>(I)V

    new-instance v0, Lʾⁱ/ﾞᴵ;

    iget v1, v8, Lʻᴵ/ˆʾ;->ⁱˊ:I

    int-to-long v8, v1

    invoke-direct {v0, v8, v9}, Lʿٴ/ˆʾ;-><init>(J)V

    new-instance v1, Lﹳי/ʽ;

    new-instance v6, Lʾⁱ/ˑﹳ;

    invoke-direct {v6, v3}, Lʾⁱ/ˑﹳ;-><init>(Landroid/content/Context;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    new-instance v15, Lʿʾ/ˉʿ;

    new-instance v6, Lˉˏ/ˑﹳ;

    new-instance v24, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v27, Lˉˏ/ˑﹳ;->ᴵˊ:J

    sget-object v29, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v30, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v30 .. v30}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lˉˏ/ʽ;

    new-instance v9, Lˉˏ/ⁱˊ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const-string v10, "source-unlimited"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lˉˏ/ʽ;-><init>(Lˉˏ/ⁱˊ;Ljava/lang/String;Z)V

    const/16 v25, 0x0

    const v26, 0x7fffffff

    move-object/from16 v31, v8

    invoke-direct/range {v24 .. v31}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object/from16 v8, v24

    invoke-direct {v6, v8}, Lˉˏ/ˑﹳ;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    move-object/from16 v18, p0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lʿʾ/ˉʿ;-><init>(Lʾⁱ/ﾞᴵ;Lﹳי/ʽ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;)V

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v14, Lﹳי/ʽ;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, v2, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v14, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    new-instance v6, Lٴʽ/ﾞʻ;

    invoke-direct {v6}, Lٴʽ/ﾞʻ;-><init>()V

    new-instance v0, Lcom/bumptech/glide/ⁱˊ;

    const/4 v8, 0x4

    move-object v1, v3

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v10, v22

    move-object/from16 v9, v23

    invoke-direct/range {v0 .. v14}, Lcom/bumptech/glide/ⁱˊ;-><init>(Landroid/content/Context;Lʿʾ/ˉʿ;Lʾⁱ/ﾞᴵ;Lיᐧ/ﹳٴ;Lיᐧ/ﾞᴵ;Lٴʽ/ﾞʻ;Lﹳˋ/ʼˎ;ILˋⁱ/ﾞᴵ;Lיـ/ˑﹳ;Ljava/util/List;Ljava/util/List;Lʼ/ᵎﹶ;Lﹳי/ʽ;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lcom/bumptech/glide/ⁱˊ;->ᵎⁱ:Lcom/bumptech/glide/ⁱˊ;

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˑﹳ(Lˑʼ/ᴵᵔ;)Lcom/bumptech/glide/ᵔʾ;
    .locals 9

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v0, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/ⁱˊ;->ˊʻ:Lٴʽ/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v1

    const-string v2, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v1, v2}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lٴʽ/ﾞʻ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ᵔʾ;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lٴʽ/ﾞʻ;->ᴵˊ:Lٴʽ/ﾞᴵ;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v2

    invoke-interface {v1, v2}, Lٴʽ/ﾞᴵ;->ʽ(Lᵔᵢ/ˆʾ;)V

    :cond_2
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v7

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v5

    iget-object v3, v0, Lٴʽ/ﾞʻ;->ʽʽ:Lˑʼ/ᵎˊ;

    iget-object v6, p0, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻˋ()Z

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lˑʼ/ᵎˊ;->ᵎⁱ(Landroid/content/Context;Lcom/bumptech/glide/ⁱˊ;Landroidx/lifecycle/ـˆ;Lˑʼ/ʿ;Z)Lcom/bumptech/glide/ᵔʾ;

    move-result-object p0

    return-object p0
.end method

.method public static ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;
    .locals 7

    .prologue
    sget-object v0, Lcom/bumptech/glide/ⁱˊ;->ᵎⁱ:Lcom/bumptech/glide/ⁱˊ;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Glide"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-class v4, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    nop

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/bumptech/glide/ⁱˊ;

    monitor-enter v1

    :try_start_1
    sget-object v4, Lcom/bumptech/glide/ⁱˊ;->ᵎⁱ:Lcom/bumptech/glide/ⁱˊ;

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/bumptech/glide/ⁱˊ;->ٴʼ:Z

    if-nez v4, :cond_1

    sput-boolean v3, Lcom/bumptech/glide/ⁱˊ;->ٴʼ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/ⁱˊ;->ʽ(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sput-boolean v2, Lcom/bumptech/glide/ⁱˊ;->ٴʼ:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    sput-boolean v2, Lcom/bumptech/glide/ⁱˊ;->ٴʼ:Z

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_2
    sget-object p0, Lcom/bumptech/glide/ⁱˊ;->ᵎⁱ:Lcom/bumptech/glide/ⁱˊ;

    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/ⁱˊ;->ﹳٴ()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 5

    .prologue
    invoke-static {}, Lʿٴ/ᵔʾ;->ﹳٴ()V

    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/bumptech/glide/ᵔʾ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ʽʽ:Lʾⁱ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lʾⁱ/ﾞᴵ;->ᵎﹶ(I)V

    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ᴵˊ:Lיᐧ/ﹳٴ;

    invoke-interface {v0, p1}, Lיᐧ/ﹳٴ;->יـ(I)V

    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ᴵᵔ:Lיᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lיᐧ/ﾞᴵ;->ʼˎ(I)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˈ(Lcom/bumptech/glide/ᵔʾ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﹳٴ()V
    .locals 3

    invoke-static {}, Lʿٴ/ᵔʾ;->ﹳٴ()V

    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ʽʽ:Lʾⁱ/ﾞᴵ;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lʿٴ/ˆʾ;->ﾞᴵ(J)V

    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ᴵˊ:Lיᐧ/ﹳٴ;

    invoke-interface {v0}, Lיᐧ/ﹳٴ;->ᵢˏ()V

    iget-object v0, p0, Lcom/bumptech/glide/ⁱˊ;->ᴵᵔ:Lיᐧ/ﾞᴵ;

    invoke-virtual {v0}, Lיᐧ/ﾞᴵ;->ﹳٴ()V

    return-void
.end method
