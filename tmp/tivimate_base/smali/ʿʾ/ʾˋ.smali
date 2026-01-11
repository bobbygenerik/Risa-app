.class public final Lʿʾ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵔᵢ;
.implements Lcom/bumptech/glide/load/data/ˈ;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Lʿʾ/ˆʾ;

.field public ˈٴ:I

.field public volatile ˉٴ:Lⁱʼ/ˉˆ;

.field public ˊʻ:Ljava/util/List;

.field public ٴʼ:Lʿʾ/ᴵˊ;

.field public ٴᵢ:I

.field public final ᴵˊ:Lʿʾ/ʼˎ;

.field public ᴵᵔ:Lʼᵔ/ˑﹳ;

.field public ᵎⁱ:Ljava/io/File;


# direct methods
.method public constructor <init>(Lʿʾ/ʼˎ;Lʿʾ/ˆʾ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lʿʾ/ʾˋ;->ˈٴ:I

    iput-object p1, p0, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iput-object p2, p0, Lʿʾ/ʾˋ;->ʾˋ:Lʿʾ/ˆʾ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->cancel()V

    :cond_0
    return-void
.end method

.method public final ʽ(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lʿʾ/ʾˋ;->ʾˋ:Lʿʾ/ˆʾ;

    iget-object v1, p0, Lʿʾ/ʾˋ;->ٴʼ:Lʿʾ/ᴵˊ;

    iget-object v2, p0, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v2, v2, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, p1, v2, v3}, Lʿʾ/ˆʾ;->ʽ(Lʼᵔ/ˑﹳ;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/ˑﹳ;I)V

    return-void
.end method

.method public final ˈ(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lʿʾ/ʾˋ;->ʾˋ:Lʿʾ/ˆʾ;

    iget-object v1, p0, Lʿʾ/ʾˋ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    iget-object v2, p0, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v3, v2, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    const/4 v4, 0x4

    iget-object v5, p0, Lʿʾ/ʾˋ;->ٴʼ:Lʿʾ/ᴵˊ;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lʿʾ/ˆʾ;->ⁱˊ(Lʼᵔ/ˑﹳ;Ljava/lang/Object;Lcom/bumptech/glide/load/data/ˑﹳ;ILʼᵔ/ˑﹳ;)V

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 27

    .prologue
    move-object/from16 v1, p0

    const-string v0, "Failed to find any load path from "

    iget-object v2, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    invoke-virtual {v2}, Lʿʾ/ʼˎ;->ﹳٴ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v5, v3, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v5}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v5

    iget-object v6, v3, Lʿʾ/ʼˎ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, v3, Lʿʾ/ʼˎ;->ᵎﹶ:Ljava/lang/Class;

    iget-object v3, v3, Lʿʾ/ʼˎ;->ٴﹶ:Ljava/lang/Class;

    iget-object v8, v5, Lcom/bumptech/glide/ᵔᵢ;->ᵔᵢ:Lﹳʽ/ˊʻ;

    iget-object v9, v8, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lʿٴ/ﾞʻ;

    if-nez v9, :cond_1

    new-instance v9, Lʿٴ/ﾞʻ;

    invoke-direct {v9, v6, v7, v3}, Lʿٴ/ﾞʻ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iput-object v6, v9, Lʿٴ/ﾞʻ;->ﹳٴ:Ljava/lang/Class;

    iput-object v7, v9, Lʿٴ/ﾞʻ;->ⁱˊ:Ljava/lang/Class;

    iput-object v3, v9, Lʿٴ/ﾞʻ;->ʽ:Ljava/lang/Class;

    :goto_0
    iget-object v11, v8, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v11, Lיـ/ˑﹳ;

    monitor-enter v11

    :try_start_0
    iget-object v12, v8, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v12, Lיـ/ˑﹳ;

    invoke-virtual {v12, v9}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, v8, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v12, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v5, Lcom/bumptech/glide/ᵔᵢ;->ﹳٴ:Lⁱʼ/יـ;

    invoke-virtual {v8, v6}, Lⁱʼ/יـ;->ﹳٴ(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :cond_2
    if-ge v11, v9, :cond_4

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Ljava/lang/Class;

    iget-object v14, v5, Lcom/bumptech/glide/ᵔᵢ;->ʽ:Lﹶﾞ/ⁱי;

    invoke-virtual {v14, v13, v7}, Lﹶﾞ/ⁱי;->יـ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_2

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/Class;

    iget-object v10, v5, Lcom/bumptech/glide/ᵔᵢ;->ﾞᴵ:Lʼٴ/ʼˎ;

    invoke-virtual {v10, v4, v3}, Lʼٴ/ʼˎ;->ˆʾ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    iget-object v4, v5, Lcom/bumptech/glide/ᵔᵢ;->ᵔᵢ:Lﹳʽ/ˊʻ;

    invoke-static {v12}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v6, v7, v3, v5}, Lﹳʽ/ˊʻ;->ʾˋ(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    const/16 v17, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-class v2, Ljava/io/File;

    iget-object v3, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v3, v3, Lʿʾ/ʼˎ;->ٴﹶ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v0, v0, Lʿʾ/ʼˎ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v0, v0, Lʿʾ/ʼˎ;->ٴﹶ:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    iget-object v0, v1, Lʿʾ/ʾˋ;->ˊʻ:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    iget v4, v1, Lʿʾ/ʾˋ;->ٴᵢ:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, v1, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    move/from16 v4, v17

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    iget v0, v1, Lʿʾ/ʾˋ;->ٴᵢ:I

    iget-object v2, v1, Lʿʾ/ʾˋ;->ˊʻ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v0, v1, Lʿʾ/ʾˋ;->ˊʻ:Ljava/util/List;

    iget v2, v1, Lʿʾ/ʾˋ;->ٴᵢ:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v1, Lʿʾ/ʾˋ;->ٴᵢ:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lⁱʼ/ʼᐧ;

    iget-object v2, v1, Lʿʾ/ʾˋ;->ᵎⁱ:Ljava/io/File;

    iget-object v5, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget v6, v5, Lʿʾ/ʼˎ;->ˑﹳ:I

    iget v7, v5, Lʿʾ/ʼˎ;->ﾞᴵ:I

    iget-object v5, v5, Lʿʾ/ʼˎ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    invoke-interface {v0, v2, v6, v7, v5}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v0

    iput-object v0, v1, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v0, v1, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v2, v1, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v2, v2, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lʿʾ/ʼˎ;->ʽ(Ljava/lang/Class;)Lʿʾ/ʾᵎ;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lʿʾ/ʾˋ;->ˉٴ:Lⁱʼ/ˉˆ;

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    iget-object v2, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v2, v2, Lʿʾ/ʼˎ;->ˉˆ:Lcom/bumptech/glide/ᵎﹶ;

    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V

    move v4, v3

    goto :goto_4

    :cond_9
    return v4

    :cond_a
    const/4 v0, 0x0

    iget v4, v1, Lʿʾ/ʾˋ;->ˈٴ:I

    add-int/2addr v4, v3

    iput v4, v1, Lʿʾ/ʾˋ;->ˈٴ:I

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_c

    iget v4, v1, Lʿʾ/ʾˋ;->ʽʽ:I

    add-int/2addr v4, v3

    iput v4, v1, Lʿʾ/ʾˋ;->ʽʽ:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v4, v3, :cond_b

    :goto_5
    return v17

    :cond_b
    move/from16 v3, v17

    iput v3, v1, Lʿʾ/ʾˋ;->ˈٴ:I

    :cond_c
    iget v3, v1, Lʿʾ/ʾˋ;->ʽʽ:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lʼᵔ/ˑﹳ;

    iget v3, v1, Lʿʾ/ʾˋ;->ˈٴ:I

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    invoke-virtual {v4, v3}, Lʿʾ/ʼˎ;->ˑﹳ(Ljava/lang/Class;)Lʼᵔ/ﾞʻ;

    move-result-object v24

    new-instance v18, Lʿʾ/ᴵˊ;

    iget-object v4, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v5, v4, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    iget-object v5, v5, Lcom/bumptech/glide/ˑﹳ;->ﹳٴ:Lיᐧ/ﾞᴵ;

    iget-object v6, v4, Lʿʾ/ʼˎ;->ᵔʾ:Lʼᵔ/ˑﹳ;

    iget v7, v4, Lʿʾ/ʼˎ;->ˑﹳ:I

    iget v8, v4, Lʿʾ/ʼˎ;->ﾞᴵ:I

    iget-object v9, v4, Lʿʾ/ʼˎ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    move-object/from16 v25, v3

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v26, v9

    invoke-direct/range {v18 .. v26}, Lʿʾ/ᴵˊ;-><init>(Lיᐧ/ﾞᴵ;Lʼᵔ/ˑﹳ;Lʼᵔ/ˑﹳ;IILʼᵔ/ﾞʻ;Ljava/lang/Class;Lʼᵔ/ᵔᵢ;)V

    move-object/from16 v5, v18

    move-object/from16 v3, v20

    iput-object v5, v1, Lʿʾ/ʾˋ;->ٴʼ:Lʿʾ/ᴵˊ;

    iget-object v4, v4, Lʿʾ/ʼˎ;->ᵔᵢ:Lᴵˈ/ᵔᵢ;

    invoke-virtual {v4}, Lᴵˈ/ᵔᵢ;->ﹳٴ()Lʾⁱ/ﹳٴ;

    move-result-object v4

    iget-object v5, v1, Lʿʾ/ʾˋ;->ٴʼ:Lʿʾ/ᴵˊ;

    invoke-interface {v4, v5}, Lʾⁱ/ﹳٴ;->ˆʾ(Lʼᵔ/ˑﹳ;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lʿʾ/ʾˋ;->ᵎⁱ:Ljava/io/File;

    if-eqz v4, :cond_d

    iput-object v3, v1, Lʿʾ/ʾˋ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    iget-object v3, v1, Lʿʾ/ʾˋ;->ᴵˊ:Lʿʾ/ʼˎ;

    iget-object v3, v3, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v3}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/ᵔᵢ;->ᵎﹶ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lʿʾ/ʾˋ;->ˊʻ:Ljava/util/List;

    const/4 v3, 0x0

    iput v3, v1, Lʿʾ/ʾˋ;->ٴᵢ:I

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    move/from16 v17, v3

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
