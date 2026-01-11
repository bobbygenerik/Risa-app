.class public final Lcom/bumptech/glide/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lʾ/ⁱˊ;

.field public final ʽ:Lﹶﾞ/ⁱי;

.field public final ˆʾ:Lᵢ/ﹳٴ;

.field public final ˈ:Lʼﹳ/ᵎﹶ;

.field public final ˑﹳ:Lcom/bumptech/glide/load/data/ʼˎ;

.field public final ᵎﹶ:Lʼٴ/ʼˎ;

.field public final ᵔᵢ:Lﹳʽ/ˊʻ;

.field public final ⁱˊ:Lʼﹳ/ᵎﹶ;

.field public final ﹳٴ:Lⁱʼ/יـ;

.field public final ﾞᴵ:Lʼٴ/ʼˎ;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹳʽ/ˊʻ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lﹳʽ/ˊʻ;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ᵔᵢ:Lﹳʽ/ˊʻ;

    new-instance v0, Lʾ/ⁱˊ;

    invoke-direct {v0}, Lʾ/ⁱˊ;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ʼˎ:Lʾ/ⁱˊ;

    new-instance v0, Lˑٴ/ˈ;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lˑٴ/ˈ;-><init>(I)V

    new-instance v1, Lᵎˉ/ⁱˊ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lﹳˋ/ʼˎ;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lﹳˋ/ʼˎ;-><init>(I)V

    new-instance v3, Lᵢ/ﹳٴ;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v1, v2, v4}, Lᵢ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v3, p0, Lcom/bumptech/glide/ᵔᵢ;->ˆʾ:Lᵢ/ﹳٴ;

    new-instance v0, Lⁱʼ/יـ;

    invoke-direct {v0, v3}, Lⁱʼ/יـ;-><init>(Lᵢ/ﹳٴ;)V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ﹳٴ:Lⁱʼ/יـ;

    new-instance v0, Lʼﹳ/ᵎﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʼﹳ/ᵎﹶ;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ⁱˊ:Lʼﹳ/ᵎﹶ;

    new-instance v0, Lﹶﾞ/ⁱי;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lﹶﾞ/ⁱי;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ʽ:Lﹶﾞ/ⁱי;

    new-instance v0, Lʼﹳ/ᵎﹶ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lʼﹳ/ᵎﹶ;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ˈ:Lʼﹳ/ᵎﹶ;

    new-instance v0, Lcom/bumptech/glide/load/data/ʼˎ;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/ʼˎ;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ˑﹳ:Lcom/bumptech/glide/load/data/ʼˎ;

    new-instance v0, Lʼٴ/ʼˎ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lʼٴ/ʼˎ;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ﾞᴵ:Lʼٴ/ʼˎ;

    new-instance v0, Lʼٴ/ʼˎ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʼٴ/ʼˎ;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ᵎﹶ:Lʼٴ/ʼˎ;

    const-string v0, "Animation"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "legacy_prepend_all"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "legacy_append"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ʽ:Lﹶﾞ/ⁱי;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_2
    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ﹳٴ:Lⁱʼ/יـ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lⁱʼ/יـ;->ﹳٴ:Lⁱʼ/ʻٴ;

    invoke-virtual {v1, p1, p2}, Lⁱʼ/ʻٴ;->ˑﹳ(Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V

    iget-object p1, v0, Lⁱʼ/יـ;->ⁱˊ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object p1, p1, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ʽ(Ljava/lang/Class;Lʼᵔ/ٴﹶ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ˈ:Lʼﹳ/ᵎﹶ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v2, Lʾ/ˈ;

    invoke-direct {v2, p1, p2}, Lʾ/ˈ;-><init>(Ljava/lang/Class;Lʼᵔ/ٴﹶ;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˆʾ(Lcom/bumptech/glide/load/data/ﾞᴵ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ˑﹳ:Lcom/bumptech/glide/load/data/ʼˎ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/ﾞᴵ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˈ(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lʼᵔ/ˆʾ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ʽ:Lﹶﾞ/ⁱי;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Lﹶﾞ/ⁱי;->ﹳᐧ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lʾ/ʽ;

    invoke-direct {v1, p2, p3, p4}, Lʾ/ʽ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lʼᵔ/ˆʾ;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˉʿ(Lᵎʼ/ⁱˊ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ﹳٴ:Lⁱʼ/יـ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lⁱʼ/יـ;->ﹳٴ:Lⁱʼ/ʻٴ;

    invoke-virtual {v1, p1}, Lⁱʼ/ʻٴ;->ᵎﹶ(Lᵎʼ/ⁱˊ;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lⁱʼ/ᵔﹳ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lⁱʼ/יـ;->ⁱˊ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object p1, p1, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˑﹳ(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 20

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/bumptech/glide/ᵔᵢ;->ʽ:Lﹶﾞ/ⁱי;

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Lﹶﾞ/ⁱי;->יـ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_6

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v12, v2, 0x1

    check-cast v4, Ljava/lang/Class;

    iget-object v2, v1, Lcom/bumptech/glide/ᵔᵢ;->ﾞᴵ:Lʼٴ/ʼˎ;

    move-object/from16 v13, p3

    invoke-virtual {v2, v4, v13}, Lʼٴ/ʼˎ;->ˆʾ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v15, :cond_5

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v16, v2, 0x1

    check-cast v5, Ljava/lang/Class;

    iget-object v2, v1, Lcom/bumptech/glide/ᵔᵢ;->ʽ:Lﹶﾞ/ⁱי;

    monitor-enter v2

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_4

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/String;

    move/from16 v17, v8

    iget-object v8, v2, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_1

    :cond_0
    move/from16 v8, v17

    move-object/from16 v7, v18

    goto :goto_2

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʾ/ʽ;

    move-object/from16 v19, v7

    iget-object v7, v8, Lʾ/ʽ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v8, Lʾ/ʽ;->ⁱˊ:Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_3

    iget-object v7, v8, Lʾ/ʽ;->ʽ:Lʼᵔ/ˆʾ;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_5
    move-object/from16 v7, v19

    goto :goto_3

    :cond_4
    monitor-exit v2

    iget-object v2, v1, Lcom/bumptech/glide/ᵔᵢ;->ﾞᴵ:Lʼٴ/ʼˎ;

    invoke-virtual {v2, v4, v5}, Lʼٴ/ʼˎ;->ᵔᵢ(Ljava/lang/Class;Ljava/lang/Class;)Lﹶⁱ/ﹳٴ;

    move-result-object v7

    new-instance v2, Lʿʾ/ٴﹶ;

    iget-object v8, v1, Lcom/bumptech/glide/ᵔᵢ;->ˆʾ:Lᵢ/ﹳٴ;

    invoke-direct/range {v2 .. v8}, Lʿʾ/ٴﹶ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lﹶⁱ/ﹳٴ;Lᵢ/ﹳٴ;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move/from16 v2, v16

    goto/16 :goto_1

    :goto_6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move-object/from16 v3, p1

    move v2, v12

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public final ٴﹶ(Ljava/lang/Class;Ljava/lang/Class;Lﹶⁱ/ﹳٴ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ﾞᴵ:Lʼٴ/ʼˎ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lʼٴ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v2, Lﹶⁱ/ⁱˊ;

    invoke-direct {v2, p1, p2, p3}, Lﹶⁱ/ⁱˊ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹶⁱ/ﹳٴ;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵎﹶ(Ljava/lang/Object;)Ljava/util/List;
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ﹳٴ:Lⁱʼ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lⁱʼ/יـ;->ⁱˊ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object v2, v2, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱʼ/ﹳᐧ;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lⁱʼ/ﹳᐧ;->ﹳٴ:Ljava/util/List;

    :goto_0
    if-nez v2, :cond_2

    iget-object v2, v0, Lⁱʼ/יـ;->ﹳٴ:Lⁱʼ/ʻٴ;

    invoke-virtual {v2, v1}, Lⁱʼ/ʻٴ;->ⁱˊ(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lⁱʼ/יـ;->ⁱˊ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object v3, v3, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v4, Lⁱʼ/ﹳᐧ;

    invoke-direct {v4, v2}, Lⁱʼ/ﹳᐧ;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱʼ/ﹳᐧ;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already cached loaders for model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_2
    if-ge v5, v0, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lⁱʼ/ʼᐧ;

    invoke-interface {v6, p1}, Lⁱʼ/ʼᐧ;->ⁱˊ(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found ModelLoaders for model class: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but none that handle this specific model instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find any ModelLoaders registered for model class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/ᵎﹶ;
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ˑﹳ:Lcom/bumptech/glide/load/data/ʼˎ;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/data/ﾞᴵ;

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/data/ﾞᴵ;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/ﾞᴵ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Lcom/bumptech/glide/load/data/ʼˎ;->ʽʽ:Lcom/bumptech/glide/load/data/ᵔᵢ;

    :cond_2
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/data/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/ᵎﹶ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Ljava/lang/Class;Lʼᵔ/ⁱˊ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ⁱˊ:Lʼﹳ/ᵎﹶ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v2, Lʾ/ﹳٴ;

    invoke-direct {v2, p1, p2}, Lʾ/ﹳٴ;-><init>(Ljava/lang/Class;Lʼᵔ/ⁱˊ;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/Class;Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ﹳٴ:Lⁱʼ/יـ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lⁱʼ/יـ;->ﹳٴ:Lⁱʼ/ʻٴ;

    invoke-virtual {v1, p1, p2, p3}, Lⁱʼ/ʻٴ;->ﹳٴ(Ljava/lang/Class;Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V

    iget-object p1, v0, Lⁱʼ/יـ;->ⁱˊ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object p1, p1, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﾞʻ(Lʼᵔ/ˈ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ᵎﹶ:Lʼٴ/ʼˎ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lʼٴ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﾞᴵ()Ljava/util/ArrayList;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/ᵔᵢ;->ᵎﹶ:Lʼٴ/ʼˎ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lʼٴ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v0}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
