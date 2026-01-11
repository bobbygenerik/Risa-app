.class public final Lـʾ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lˑᵎ/ʾᵎ;

.field public final ʽ:Ljava/lang/String;

.field public final ˆʾ:Lˑᵎ/ˑﹳ;

.field public final ˈ:Lᐧᵎ/ᵢי;

.field public final ˉʿ:Lᴵי/ˉـ;

.field public final ˑﹳ:Lᴵˋ/ⁱˊ;

.field public final ٴﹶ:Ljava/util/ArrayList;

.field public final ᵎﹶ:Lᵔʼ/ﹳٴ;

.field public final ᵔᵢ:Landroidx/work/impl/WorkDatabase;

.field public final ⁱˊ:Landroid/content/Context;

.field public final ﹳٴ:Lˑᵎ/ﹳᐧ;

.field public final ﾞʻ:Ljava/lang/String;

.field public final ﾞᴵ:Lᴵˋ/ˆʾ;


# direct methods
.method public constructor <init>(Lˉˆ/ˎـ;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lˑᵎ/ﹳᐧ;

    iput-object v0, p0, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    iget-object v1, p1, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lـʾ/ʾˋ;->ⁱˊ:Landroid/content/Context;

    iget-object v0, v0, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v0, p0, Lـʾ/ʾˋ;->ʽ:Ljava/lang/String;

    iget-object v1, p1, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lᐧᵎ/ᵢי;

    iput-object v1, p0, Lـʾ/ʾˋ;->ˈ:Lᐧᵎ/ᵢי;

    iget-object v1, p1, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᴵˋ/ⁱˊ;

    iput-object v1, p0, Lـʾ/ʾˋ;->ˑﹳ:Lᴵˋ/ⁱˊ;

    iget-object v1, v1, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    iput-object v1, p0, Lـʾ/ʾˋ;->ﾞᴵ:Lᴵˋ/ˆʾ;

    iget-object v1, p1, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    check-cast v1, Lᵔʼ/ﹳٴ;

    iput-object v1, p0, Lـʾ/ʾˋ;->ᵎﹶ:Lᵔʼ/ﹳٴ;

    iget-object v1, p1, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    iput-object v1, p0, Lـʾ/ʾˋ;->ᵔᵢ:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v2

    iput-object v2, p0, Lـʾ/ʾˋ;->ʼˎ:Lˑᵎ/ʾᵎ;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->יـ()Lˑᵎ/ˑﹳ;

    move-result-object v1

    iput-object v1, p0, Lـʾ/ʾˋ;->ˆʾ:Lˑᵎ/ˑﹳ;

    iget-object p1, p1, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lـʾ/ʾˋ;->ٴﹶ:Ljava/util/ArrayList;

    const-string p1, "Work [ id="

    const-string v2, ", tags={ "

    invoke-static {p1, v0, v2}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " } ]"

    invoke-static {p1, v0, v1}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lـʾ/ʾˋ;->ﾞʻ:Ljava/lang/String;

    invoke-static {}, Lᴵי/ʾᵎ;->ʽ()Lᴵי/ˉـ;

    move-result-object p1

    iput-object p1, p0, Lـʾ/ʾˋ;->ˉʿ:Lᴵי/ˉـ;

    return-void
.end method

.method public static final ﹳٴ(Lـʾ/ʾˋ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 23

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v6, v1, Lـʾ/ʾˋ;->ﾞʻ:Ljava/lang/String;

    iget-object v2, v1, Lـʾ/ʾˋ;->ʽ:Ljava/lang/String;

    iget-object v3, v1, Lـʾ/ʾˋ;->ˈ:Lᐧᵎ/ᵢי;

    iget-object v4, v1, Lـʾ/ʾˋ;->ᵔᵢ:Landroidx/work/impl/WorkDatabase;

    iget-object v5, v1, Lـʾ/ʾˋ;->ˑﹳ:Lᴵˋ/ⁱˊ;

    iget-object v7, v5, Lᴵˋ/ⁱˊ;->ˉʿ:Lᴵˋ/ˆʾ;

    iget-object v8, v1, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    instance-of v9, v0, Lـʾ/ᵢˏ;

    if-eqz v9, :cond_0

    move-object v9, v0

    check-cast v9, Lـʾ/ᵢˏ;

    iget v10, v9, Lـʾ/ᵢˏ;->ˊʻ:I

    const/high16 v11, -0x80000000

    and-int v12, v10, v11

    if-eqz v12, :cond_0

    sub-int/2addr v10, v11

    iput v10, v9, Lـʾ/ᵢˏ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v9, Lـʾ/ᵢˏ;

    invoke-direct {v9, v1, v0}, Lـʾ/ᵢˏ;-><init>(Lـʾ/ʾˋ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object v0, v9, Lـʾ/ᵢˏ;->ˈٴ:Ljava/lang/Object;

    iget v10, v9, Lـʾ/ᵢˏ;->ˊʻ:I

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    if-ne v10, v11, :cond_1

    :try_start_0
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v20, v6

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object/from16 v20, v6

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v4, v6

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v10, v5, Lᴵˋ/ⁱˊ;->ˑﹳ:Lᴵˋ/ˆʾ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/bumptech/glide/ʽ;->ˉˆ()Z

    move-result v7

    iget-object v12, v8, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    iget-object v13, v8, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    iget-object v14, v8, Lˑᵎ/ﹳᐧ;->ˈ:Ljava/lang/String;

    const/16 p1, 0x2

    move/from16 v16, v11

    if-eqz v7, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual {v8}, Lˑᵎ/ﹳᐧ;->hashCode()I

    move-result v0

    const/16 v17, 0x0

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v15, v11, :cond_3

    invoke-static {v12}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lﹳᵎ/ﹳٴ;->ﹳٴ(ILjava/lang/String;)V

    move-object/from16 v20, v6

    goto :goto_3

    :cond_3
    invoke-static {v12}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "asyncTraceBegin"

    :try_start_1
    sget-object v18, Lcom/bumptech/glide/ʽ;->ٴﹶ:Ljava/lang/reflect/Method;

    move/from16 v19, v0

    const/4 v0, 0x3

    if-nez v18, :cond_4

    move-object/from16 v18, v11

    const-class v11, Landroid/os/Trace;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v20, v6

    :try_start_2
    new-array v6, v0, [Ljava/lang/Class;

    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v21, v6, v17

    const-class v21, Ljava/lang/String;

    aput-object v21, v6, v16

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v6, p1

    invoke-virtual {v11, v15, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/bumptech/glide/ʽ;->ٴﹶ:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v20, v6

    goto :goto_2

    :cond_4
    move-object/from16 v20, v6

    move-object/from16 v18, v11

    :goto_1
    sget-object v6, Lcom/bumptech/glide/ʽ;->ٴﹶ:Ljava/lang/reflect/Method;

    sget-wide v21, Lcom/bumptech/glide/ʽ;->ʼˎ:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v11, v0, v17

    aput-object v18, v0, v16

    aput-object v19, v0, p1

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    invoke-static {v15, v0}, Lcom/bumptech/glide/ʽ;->ᵔʾ(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    move-object/from16 v20, v6

    const/16 v17, 0x0

    :goto_3
    new-instance v0, Lـʾ/יـ;

    move/from16 v6, v17

    invoke-direct {v0, v1, v6}, Lـʾ/יـ;-><init>(Lـʾ/ʾˋ;I)V

    new-instance v6, Landroidx/lifecycle/ـˏ;

    const/16 v11, 0xc

    invoke-direct {v6, v11, v0}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Lʼﾞ/ˊʻ;->ʼᐧ(Lᴵⁱ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lـʾ/ـˆ;

    invoke-direct {v0}, Lـʾ/ـˆ;-><init>()V

    goto/16 :goto_c

    :cond_6
    invoke-virtual {v8}, Lˑᵎ/ﹳᐧ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v8, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    goto/16 :goto_7

    :cond_7
    iget-object v0, v5, Lᴵˋ/ⁱˊ;->ﾞᴵ:Lᴵˋ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lᴵˋ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    :try_start_3
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/OverwritingInputMerger;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v11, v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    const/4 v6, 0x0

    :goto_4
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v15

    sget-object v6, Lᴵˋ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    const-string v11, "Trouble instantiating "

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v6, v11, v0}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_8

    sget-object v0, Lـʾ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Input Merger "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lـʾ/ʽﹳ;

    invoke-direct {v0}, Lـʾ/ʽﹳ;-><init>()V

    goto/16 :goto_c

    :cond_8
    iget-object v0, v8, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v6, v1, Lـʾ/ʾˋ;->ʼˎ:Lˑᵎ/ʾᵎ;

    iget-object v6, v6, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v11, Lˑᵎ/ʽ;

    const/16 v14, 0xe

    invoke-direct {v11, v14, v2}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    move/from16 v15, v16

    const/4 v14, 0x0

    invoke-static {v6, v15, v14, v11}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v0, v6}, Lﹶˈ/ˆʾ;->ᐧﹶ(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v6, Lˊﾞ/ٴﹶ;

    move/from16 v11, p1

    invoke-direct {v6, v11}, Lˊﾞ/ٴﹶ;-><init>(I)V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_6
    if-ge v14, v15, :cond_9

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v14, v14, 0x1

    move-object/from16 p1, v0

    move-object/from16 v0, v17

    check-cast v0, Lᴵˋ/ᵔᵢ;

    iget-object v0, v0, Lᴵˋ/ᵔᵢ;->ﹳٴ:Ljava/util/HashMap;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p1

    goto :goto_6

    :cond_9
    invoke-virtual {v6, v11}, Lˊﾞ/ٴﹶ;->ⁱˊ(Ljava/util/HashMap;)V

    new-instance v0, Lᴵˋ/ᵔᵢ;

    iget-object v6, v6, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v6}, Lᴵˋ/ᵔᵢ;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ʽʽ(Lᴵˋ/ᵔᵢ;)[B

    :goto_7
    new-instance v6, Landroidx/work/WorkerParameters;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v11, v1, Lـʾ/ʾˋ;->ٴﹶ:Ljava/util/ArrayList;

    iget v8, v8, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    iget-object v14, v5, Lᴵˋ/ⁱˊ;->ﹳٴ:Ljava/util/concurrent/ExecutorService;

    iget-object v5, v5, Lᴵˋ/ⁱˊ;->ⁱˊ:Lʿⁱ/ˈ;

    new-instance v15, Lˆﹶ/ﹳᐧ;

    new-instance v15, Lˆﹶ/ᵔﹳ;

    move/from16 p1, v7

    iget-object v7, v1, Lـʾ/ʾˋ;->ᵎﹶ:Lᵔʼ/ﹳٴ;

    invoke-direct {v15, v4, v7, v3}, Lˆﹶ/ᵔﹳ;-><init>(Landroidx/work/impl/WorkDatabase;Lᵔʼ/ﹳٴ;Lᐧᵎ/ᵢי;)V

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v2, v6, Landroidx/work/WorkerParameters;->ﹳٴ:Ljava/util/UUID;

    iput-object v0, v6, Landroidx/work/WorkerParameters;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v6, Landroidx/work/WorkerParameters;->ʽ:Ljava/util/HashSet;

    iput v8, v6, Landroidx/work/WorkerParameters;->ˈ:I

    iput-object v14, v6, Landroidx/work/WorkerParameters;->ˑﹳ:Ljava/util/concurrent/ExecutorService;

    iput-object v5, v6, Landroidx/work/WorkerParameters;->ﾞᴵ:Lˈי/ᵔᵢ;

    iput-object v3, v6, Landroidx/work/WorkerParameters;->ᵎﹶ:Lᐧᵎ/ᵢי;

    iput-object v10, v6, Landroidx/work/WorkerParameters;->ᵔᵢ:Lᴵˋ/ˆʾ;

    iput-object v15, v6, Landroidx/work/WorkerParameters;->ʼˎ:Lˆﹶ/ᵔﹳ;

    :try_start_5
    iget-object v0, v1, Lـʾ/ʾˋ;->ⁱˊ:Landroid/content/Context;

    invoke-virtual {v10, v0, v13, v6}, Lᴵˋ/ˆʾ;->ﹳٴ(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lᴵˋ/יـ;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v5, 0x1

    iput-boolean v5, v2, Lᴵˋ/יـ;->ˈ:Z

    iget-object v0, v9, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    sget-object v6, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v0, v6}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵי/ᴵˑ;

    new-instance v6, Lـʾ/ˏי;

    move/from16 v7, p1

    invoke-direct {v6, v2, v7, v12, v1}, Lـʾ/ˏי;-><init>(Lᴵˋ/יـ;ZLjava/lang/String;Lـʾ/ʾˋ;)V

    invoke-interface {v0, v6}, Lᴵי/ᴵˑ;->ᴵˑ(Lᴵⁱ/ﾞʻ;)Lᴵי/ᵎⁱ;

    new-instance v6, Lـʾ/יـ;

    invoke-direct {v6, v1, v5}, Lـʾ/יـ;-><init>(Lـʾ/ʾˋ;I)V

    new-instance v5, Landroidx/lifecycle/ـˏ;

    const/16 v7, 0xc

    invoke-direct {v5, v7, v6}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lʼﾞ/ˊʻ;->ʼᐧ(Lᴵⁱ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v0, Lـʾ/ـˆ;

    invoke-direct {v0}, Lـʾ/ـˆ;-><init>()V

    goto/16 :goto_c

    :cond_a
    invoke-interface {v0}, Lᴵי/ᴵˑ;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lـʾ/ـˆ;

    invoke-direct {v0}, Lـʾ/ـˆ;-><init>()V

    goto/16 :goto_c

    :cond_b
    iget-object v0, v3, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʿʿ/ʽ;

    invoke-static {v0}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object v6

    :try_start_6
    new-instance v0, Lʼˋ/ᵔʾ;

    const/16 v5, 0xe

    move-object v3, v15

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lʼˋ/ᵔʾ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 v15, 0x1

    iput v15, v9, Lـʾ/ᵢˏ;->ˊʻ:I

    invoke-static {v6, v0, v9}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object v1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v0, v1, :cond_c

    :goto_8
    move-object v0, v1

    goto :goto_c

    :cond_c
    :goto_9
    :try_start_7
    check-cast v0, Lᴵˋ/ﹳᐧ;

    new-instance v1, Lـʾ/ʻٴ;

    invoke-direct {v1, v0}, Lـʾ/ʻٴ;-><init>(Lᴵˋ/ﹳᐧ;)V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_b

    :goto_a
    sget-object v1, Lـʾ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed because it threw an exception/error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lـʾ/ʽﹳ;

    invoke-direct {v0}, Lـʾ/ʽﹳ;-><init>()V

    goto :goto_c

    :goto_b
    sget-object v1, Lـʾ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    const-string v3, " was cancelled"

    invoke-static {v4, v3}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v2, v2, Lᴵˋ/ˏי;->ﹳٴ:I

    const/4 v4, 0x4

    if-gt v2, v4, :cond_d

    nop

    :cond_d
    throw v0

    :catchall_2
    sget-object v0, Lـʾ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lـʾ/ʽﹳ;

    invoke-direct {v0}, Lـʾ/ʽﹳ;-><init>()V

    :goto_c
    return-object v0
.end method


# virtual methods
.method public final ʽ()V
    .locals 8

    iget-object v0, p0, Lـʾ/ʾˋ;->ﾞᴵ:Lᴵˋ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lـʾ/ʾˋ;->ʼˎ:Lˑᵎ/ʾᵎ;

    iget-object v3, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v4, Lˑᵎ/ˏי;

    const/4 v5, 0x1

    iget-object v6, p0, Lـʾ/ʾˋ;->ʽ:Ljava/lang/String;

    invoke-direct {v4, v0, v1, v6, v5}, Lˑᵎ/ˏי;-><init>(JLjava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v3, v0, v1, v4}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    sget-object v3, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    invoke-virtual {v2, v3, v6}, Lˑᵎ/ʾᵎ;->ᵎﹶ(Lᴵˋ/ˈٴ;Ljava/lang/String;)I

    iget-object v3, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v4, Lˑᵎ/ʽ;

    const/16 v5, 0xc

    invoke-direct {v4, v5, v6}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v0, v1, v4}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    iget-object v3, p0, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    iget v3, v3, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    iget-object v4, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v5, Lˑᵎ/ˆʾ;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7, v6}, Lˑᵎ/ˆʾ;-><init>(IILjava/lang/String;)V

    invoke-static {v4, v0, v1, v5}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    iget-object v3, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v4, Lˑᵎ/ʽ;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v6}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v0, v1, v4}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    const-wide/16 v0, -0x1

    invoke-virtual {v2, v6, v0, v1}, Lˑᵎ/ʾᵎ;->ﾞᴵ(Ljava/lang/String;J)I

    return-void
.end method

.method public final ˈ(Lᴵˋ/ﹳᐧ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lـʾ/ʾˋ;->ʽ:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lﹶˈ/ٴﹶ;->ʿᵢ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lـʾ/ʾˋ;->ʼˎ:Lˑᵎ/ʾᵎ;

    if-nez v2, :cond_1

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ʾˊ(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lˑᵎ/ʾᵎ;->ʽ(Ljava/lang/String;)Lᴵˋ/ˈٴ;

    move-result-object v4

    sget-object v5, Lᴵˋ/ˈٴ;->ˊʻ:Lᴵˋ/ˈٴ;

    if-eq v4, v5, :cond_0

    sget-object v4, Lᴵˋ/ˈٴ;->ˈٴ:Lᴵˋ/ˈٴ;

    invoke-virtual {v3, v4, v2}, Lˑᵎ/ʾᵎ;->ᵎﹶ(Lᴵˋ/ˈٴ;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lـʾ/ʾˋ;->ˆʾ:Lˑᵎ/ˑﹳ;

    invoke-virtual {v3, v2}, Lˑᵎ/ˑﹳ;->ﹳٴ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    check-cast p1, Lᴵˋ/ˉˆ;

    iget-object p1, p1, Lᴵˋ/ˉˆ;->ﹳٴ:Lᴵˋ/ᵔᵢ;

    iget-object v1, p0, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    iget v1, v1, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    iget-object v2, v3, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v4, Lˑᵎ/ˆʾ;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5, v0}, Lˑᵎ/ˆʾ;-><init>(IILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v2, v1, v5, v4}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    iget-object v2, v3, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v3, Lˑᵎ/ⁱˊ;

    const/4 v4, 0x6

    invoke-direct {v3, p1, v4, v0}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2, v1, v5, v3}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    return-void
.end method

.method public final ⁱˊ(I)V
    .locals 8

    iget-object v0, p0, Lـʾ/ʾˋ;->ʼˎ:Lˑᵎ/ʾᵎ;

    sget-object v1, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    iget-object v2, p0, Lـʾ/ʾˋ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lˑᵎ/ʾᵎ;->ᵎﹶ(Lᴵˋ/ˈٴ;Ljava/lang/String;)I

    iget-object v1, p0, Lـʾ/ʾˋ;->ﾞᴵ:Lᴵˋ/ˆʾ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v5, Lˑᵎ/ˏי;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v4, v2, v6}, Lˑᵎ/ˏי;-><init>(JLjava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v5}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    iget-object v1, p0, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    iget v1, v1, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    iget-object v5, v0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v6, Lˑᵎ/ˆʾ;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7, v2}, Lˑᵎ/ˆʾ;-><init>(IILjava/lang/String;)V

    invoke-static {v5, v3, v4, v6}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lˑᵎ/ʾᵎ;->ﾞᴵ(Ljava/lang/String;J)I

    invoke-virtual {v0, p1, v2}, Lˑᵎ/ʾᵎ;->ᵔᵢ(ILjava/lang/String;)V

    return-void
.end method
