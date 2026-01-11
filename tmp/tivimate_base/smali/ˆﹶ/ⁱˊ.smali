.class public abstract Lˆﹶ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lˆﹶ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public static ﹳٴ(Lـʾ/ﾞʻ;)Z
    .locals 53

    .prologue
    move-object/from16 v0, p0

    invoke-static {v0}, Lـʾ/ﾞʻ;->ᵔי(Lـʾ/ﾞʻ;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, v0, Lـʾ/ﾞʻ;->ᵔٴ:Lـʾ/ﹳᐧ;

    iget-object v3, v0, Lـʾ/ﾞʻ;->ˋᵔ:Ljava/util/List;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v5, v0, Lـʾ/ﾞʻ;->ˈʿ:Ljava/lang/String;

    iget v6, v0, Lـʾ/ﾞʻ;->ˑٴ:I

    iget-object v7, v2, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    iget-object v7, v7, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v2, Lـʾ/ﹳᐧ;->ˑﹳ:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_0

    array-length v11, v1

    if-lez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v4

    :goto_0
    sget-object v12, Lᴵˋ/ˈٴ;->ʽʽ:Lᴵˋ/ˈٴ;

    sget-object v13, Lᴵˋ/ˈٴ;->ˊʻ:Lᴵˋ/ˈٴ;

    sget-object v14, Lᴵˋ/ˈٴ;->ˈٴ:Lᴵˋ/ˈٴ;

    if-eqz v11, :cond_7

    array-length v15, v1

    move/from16 v16, v4

    move/from16 v17, v16

    const/16 v18, 0x1

    :goto_1
    if-ge v4, v15, :cond_6

    aget-object v10, v1, v4

    move-object/from16 v19, v3

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v3

    invoke-virtual {v3, v10}, Lˑᵎ/ʾᵎ;->ˈ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Prerequisite "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lˆﹶ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_18

    :cond_2
    iget-object v3, v3, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-ne v3, v12, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    and-int v18, v18, v10

    if-ne v3, v14, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    if-ne v3, v13, :cond_5

    const/16 v16, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v19

    goto :goto_1

    :cond_6
    :goto_5
    move-object/from16 v19, v3

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    goto :goto_5

    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v4, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    if-nez v3, :cond_16

    if-nez v11, :cond_16

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v10

    invoke-virtual {v10, v5}, Lˑᵎ/ʾᵎ;->ˑﹳ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_16

    const/4 v15, 0x3

    move/from16 v20, v3

    const/4 v3, 0x4

    if-eq v6, v15, :cond_c

    if-ne v6, v3, :cond_8

    goto :goto_8

    :cond_8
    const/4 v3, 0x2

    if-ne v6, v3, :cond_a

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˑᵎ/ʼᐧ;

    iget-object v6, v6, Lˑᵎ/ʼᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-eq v6, v4, :cond_1

    sget-object v12, Lᴵˋ/ˈٴ;->ᴵˊ:Lᴵˋ/ˈٴ;

    if-ne v6, v12, :cond_9

    goto :goto_2

    :cond_a
    new-instance v3, Lcom/parse/ˊﾞ;

    const/4 v6, 0x1

    invoke-direct {v3, v9, v5, v2, v6}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/lifecycle/ـˏ;

    const/16 v6, 0xd

    invoke-direct {v2, v6, v3}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v2}, Lʼﾞ/ˊʻ;->ʼᐧ(Lᴵⁱ/ﹳٴ;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˑᵎ/ʼᐧ;

    iget-object v6, v6, Lˑᵎ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v10, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v12, Lˑᵎ/ʽ;

    const/16 v15, 0x10

    invoke-direct {v12, v15, v6}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v15, 0x1

    invoke-static {v10, v6, v15, v12}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    move-object/from16 v22, v9

    const/4 v2, 0x1

    goto/16 :goto_e

    :cond_c
    :goto_8
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->יـ()Lˑᵎ/ˑﹳ;

    move-result-object v2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lˑᵎ/ʼᐧ;

    iget-object v3, v15, Lˑᵎ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v2, Lˑᵎ/ˑﹳ;->ﹳٴ:Lʼﾞ/ˊʻ;

    move-object/from16 v23, v2

    new-instance v2, Lˑᵎ/ʽ;

    move-object/from16 v24, v10

    const/4 v10, 0x0

    invoke-direct {v2, v10, v3}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-static {v9, v10, v3, v2}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v15, Lˑᵎ/ʼᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-ne v2, v12, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    and-int v3, v18, v3

    if-ne v2, v14, :cond_e

    const/16 v17, 0x1

    goto :goto_b

    :cond_e
    if-ne v2, v13, :cond_f

    const/16 v16, 0x1

    :cond_f
    :goto_b
    iget-object v2, v15, Lˑᵎ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v3

    :cond_10
    move-object/from16 v9, v22

    move-object/from16 v2, v23

    move-object/from16 v10, v24

    const/4 v3, 0x4

    goto :goto_9

    :cond_11
    move v2, v3

    move-object/from16 v22, v9

    if-ne v6, v2, :cond_14

    if-nez v16, :cond_12

    if-eqz v17, :cond_14

    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v2

    invoke-virtual {v2, v5}, Lˑᵎ/ʾᵎ;->ˑﹳ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˑᵎ/ʼᐧ;

    iget-object v6, v6, Lˑᵎ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v9, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v10, Lˑᵎ/ʽ;

    const/16 v11, 0x10

    invoke-direct {v10, v11, v6}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v15, 0x1

    invoke-static {v9, v6, v15, v10}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_14
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_15

    const/4 v11, 0x1

    goto :goto_d

    :cond_15
    const/4 v11, 0x0

    :goto_d
    const/4 v2, 0x0

    goto :goto_e

    :cond_16
    move/from16 v20, v3

    move-object/from16 v22, v9

    goto :goto_d

    :goto_e
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v15, v2

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵˋ/ˉٴ;

    iget-object v6, v2, Lᴵˋ/ˉٴ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-object v9, v2, Lᴵˋ/ˉٴ;->ﹳٴ:Ljava/util/UUID;

    if-eqz v11, :cond_19

    if-nez v18, :cond_19

    if-eqz v17, :cond_17

    iput-object v14, v6, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    goto :goto_10

    :cond_17
    if-eqz v16, :cond_18

    iput-object v13, v6, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    goto :goto_10

    :cond_18
    sget-object v10, Lᴵˋ/ˈٴ;->ᴵᵔ:Lᴵˋ/ˈٴ;

    iput-object v10, v6, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    goto :goto_10

    :cond_19
    iput-wide v7, v6, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    :goto_10
    iget-object v10, v6, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-ne v10, v4, :cond_1a

    const/4 v15, 0x1

    :cond_1a
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v10

    iget-object v12, v6, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    move-object/from16 v19, v3

    const-string v3, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    invoke-virtual {v12, v3}, Lᴵˋ/ᵔᵢ;->ʽ(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v21, v4

    iget-object v4, v6, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    move-wide/from16 v37, v7

    const-string v7, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v4, v7}, Lᴵˋ/ᵔᵢ;->ʽ(Ljava/lang/String;)Z

    move-result v4

    iget-object v7, v6, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    const-string v8, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v7, v8}, Lᴵˋ/ᵔᵢ;->ʽ(Ljava/lang/String;)Z

    move-result v7

    if-nez v12, :cond_1b

    if-eqz v4, :cond_1b

    if-eqz v7, :cond_1b

    iget-object v4, v6, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    new-instance v7, Lˊﾞ/ٴﹶ;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lˊﾞ/ٴﹶ;-><init>(I)V

    iget-object v8, v6, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    iget-object v8, v8, Lᴵˋ/ᵔᵢ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Lˊﾞ/ٴﹶ;->ⁱˊ(Ljava/util/HashMap;)V

    iget-object v7, v7, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lᴵˋ/ᵔᵢ;

    invoke-direct {v3, v7}, Lᴵˋ/ᵔᵢ;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v3}, Lcom/bumptech/glide/ʽ;->ʽʽ(Lᴵˋ/ᵔᵢ;)[B

    const/16 v35, 0x0

    const v36, 0x1ffffeb

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    move-object/from16 v27, v3

    move-object/from16 v23, v6

    invoke-static/range {v23 .. v36}, Lˑᵎ/ﹳᐧ;->ⁱˊ(Lˑᵎ/ﹳᐧ;Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Lᴵˋ/ᵔᵢ;IJIIJII)Lˑᵎ/ﹳᐧ;

    move-result-object v6

    goto :goto_11

    :cond_1b
    move-object/from16 v23, v6

    move-object/from16 v6, v23

    :goto_11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_1c

    iget-object v3, v6, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-object v4, v6, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    const-class v7, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    iget-boolean v8, v3, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    if-nez v8, :cond_1d

    iget-boolean v3, v3, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    if-eqz v3, :cond_1c

    goto :goto_12

    :cond_1c
    move-object/from16 v39, v6

    goto :goto_13

    :cond_1d
    :goto_12
    new-instance v3, Lˊﾞ/ٴﹶ;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Lˊﾞ/ٴﹶ;-><init>(I)V

    iget-object v8, v6, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    iget-object v8, v8, Lᴵˋ/ᵔᵢ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Lˊﾞ/ٴﹶ;->ⁱˊ(Ljava/util/HashMap;)V

    const-string v8, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    iget-object v3, v3, Lˊﾞ/ٴﹶ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lᴵˋ/ᵔᵢ;

    invoke-direct {v4, v3}, Lᴵˋ/ᵔᵢ;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v4}, Lcom/bumptech/glide/ʽ;->ʽʽ(Lᴵˋ/ᵔᵢ;)[B

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v42

    const/16 v51, 0x0

    const v52, 0x1ffffeb

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    move-object/from16 v43, v4

    move-object/from16 v39, v6

    invoke-static/range {v39 .. v52}, Lˑᵎ/ﹳᐧ;->ⁱˊ(Lˑᵎ/ﹳᐧ;Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Lᴵˋ/ᵔᵢ;IJIIJII)Lˑᵎ/ﹳᐧ;

    move-result-object v6

    goto :goto_14

    :goto_13
    move-object/from16 v6, v39

    :goto_14
    iget-object v3, v10, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v4, Lˑᵎ/ⁱˊ;

    const/4 v7, 0x7

    invoke-direct {v4, v10, v7, v6}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static {v3, v6, v10, v4}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    if-eqz v11, :cond_1e

    array-length v3, v1

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v3, :cond_1e

    aget-object v4, v1, v6

    new-instance v7, Lˑᵎ/ﹳٴ;

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lˑᵎ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->יـ()Lˑᵎ/ˑﹳ;

    move-result-object v4

    iget-object v8, v4, Lˑᵎ/ˑﹳ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v10, Lˑᵎ/ⁱˊ;

    const/4 v12, 0x0

    invoke-direct {v10, v4, v12, v7}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static {v8, v4, v7, v10}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1e
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->ʼʼ()Lˑᵎ/ᵢˏ;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lᴵˋ/ˉٴ;->ʽ:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lˑᵎ/ʼʼ;

    invoke-direct {v7, v6, v4}, Lˑᵎ/ʼʼ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v3, Lˑᵎ/ᵢˏ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v8, Lˑᵎ/ⁱˊ;

    const/16 v10, 0x8

    invoke-direct {v8, v3, v10, v7}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {v6, v7, v10, v8}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    goto :goto_16

    :cond_1f
    if-nez v20, :cond_20

    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->ʻٴ()Lˑᵎ/ᵔʾ;

    move-result-object v2

    new-instance v3, Lˑᵎ/ˉʿ;

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lˑᵎ/ˉʿ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lˑᵎ/ᵔʾ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v6, Lˑᵎ/ⁱˊ;

    const/4 v7, 0x3

    invoke-direct {v6, v2, v7, v3}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-static {v4, v3, v10, v6}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    goto :goto_17

    :cond_20
    const/4 v3, 0x0

    const/4 v10, 0x1

    :goto_17
    move-object/from16 v3, v19

    move-object/from16 v4, v21

    move-wide/from16 v7, v37

    goto/16 :goto_f

    :cond_21
    const/4 v10, 0x1

    move v4, v15

    :goto_18
    iput-boolean v10, v0, Lـʾ/ﾞʻ;->ـˏ:Z

    return v4
.end method
