.class public final Lcom/bumptech/glide/ٴﹶ;
.super Lⁱⁱ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ʼˈ:Lcom/bumptech/glide/ᵔʾ;

.field public ʿ:Lcom/bumptech/glide/ٴﹶ;

.field public ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

.field public ˈⁱ:Lcom/bumptech/glide/ˉˆ;

.field public ˉـ:Ljava/util/ArrayList;

.field public final ˊˋ:Landroid/content/Context;

.field public final ـˏ:Ljava/lang/Class;

.field public ᐧᴵ:Z

.field public ᐧﾞ:Z

.field public ᴵˑ:Ljava/lang/Object;

.field public ᵎᵔ:Z

.field public final ﹳـ:Lcom/bumptech/glide/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v0}, Lⁱⁱ/ﹳٴ;-><init>()V

    sget-object v1, Lʿʾ/ﾞʻ;->ʽ:Lʿʾ/ﾞʻ;

    invoke-virtual {v0, v1}, Lⁱⁱ/ﹳٴ;->ˑﹳ(Lʿʾ/ﾞʻ;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱⁱ/ﹳٴ;->ˉʿ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱⁱ/ﹳٴ;->יـ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/ⁱˊ;Lcom/bumptech/glide/ᵔʾ;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Lⁱⁱ/ﹳٴ;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/ٴﹶ;->ᵎᵔ:Z

    iput-object p2, p0, Lcom/bumptech/glide/ٴﹶ;->ʼˈ:Lcom/bumptech/glide/ᵔʾ;

    iput-object p3, p0, Lcom/bumptech/glide/ٴﹶ;->ـˏ:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/ٴﹶ;->ˊˋ:Landroid/content/Context;

    iget-object p4, p2, Lcom/bumptech/glide/ᵔʾ;->ʾˋ:Lcom/bumptech/glide/ⁱˊ;

    iget-object p4, p4, Lcom/bumptech/glide/ⁱˊ;->ˈٴ:Lcom/bumptech/glide/ˑﹳ;

    iget-object p4, p4, Lcom/bumptech/glide/ˑﹳ;->ﾞᴵ:Lיـ/ˑﹳ;

    invoke-virtual {p4, p3}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ˉˆ;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lיـ/ˑﹳ;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Landroidx/datastore/preferences/protobuf/ˉـ;

    invoke-virtual {p4}, Landroidx/datastore/preferences/protobuf/ˉـ;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ˉˆ;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/ˑﹳ;->ٴﹶ:Lcom/bumptech/glide/ﹳٴ;

    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    iget-object p1, p1, Lcom/bumptech/glide/ⁱˊ;->ˈٴ:Lcom/bumptech/glide/ˑﹳ;

    iput-object p1, p0, Lcom/bumptech/glide/ٴﹶ;->ﹳـ:Lcom/bumptech/glide/ˑﹳ;

    iget-object p1, p2, Lcom/bumptech/glide/ᵔʾ;->ᵎⁱ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lⁱⁱ/ˑﹳ;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/ٴﹶ;->ـˆ(Lⁱⁱ/ˑﹳ;)Lcom/bumptech/glide/ٴﹶ;

    goto :goto_1

    :cond_3
    monitor-enter p2

    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/ᵔʾ;->ٴʼ:Lⁱⁱ/ﾞᴵ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/ٴﹶ;->ʾᵎ(Lⁱⁱ/ﹳٴ;)Lcom/bumptech/glide/ٴﹶ;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lcom/bumptech/glide/ٴﹶ;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/ٴﹶ;

    invoke-super {p0, p1}, Lⁱⁱ/ﹳٴ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ـˏ:Ljava/lang/Class;

    iget-object v1, p1, Lcom/bumptech/glide/ٴﹶ;->ـˏ:Ljava/lang/Class;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    iget-object v1, p1, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/ˉˆ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ᴵˑ:Ljava/lang/Object;

    iget-object v1, p1, Lcom/bumptech/glide/ٴﹶ;->ᴵˑ:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    iget-object v1, p1, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    iget-object v1, p1, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/ٴﹶ;->ᵎᵔ:Z

    iget-boolean v1, p1, Lcom/bumptech/glide/ٴﹶ;->ᵎᵔ:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/ٴﹶ;->ᐧﾞ:Z

    iget-boolean p1, p1, Lcom/bumptech/glide/ٴﹶ;->ᐧﾞ:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lⁱⁱ/ﹳٴ;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/ٴﹶ;->ـˏ:Ljava/lang/Class;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/ٴﹶ;->ᴵˑ:Ljava/lang/Object;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lʿٴ/ᵔʾ;->ᵔᵢ(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/ٴﹶ;->ᵎᵔ:Z

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/ٴﹶ;->ᐧﾞ:Z

    invoke-static {v1, v0}, Lʿٴ/ᵔʾ;->ᵎﹶ(II)I

    move-result v0

    return v0
.end method

.method public final ʼʼ(Ljava/lang/Object;Lʾˎ/ˑﹳ;Lⁱⁱ/ˈ;Lcom/bumptech/glide/ˉˆ;Lcom/bumptech/glide/ᵎﹶ;IILⁱⁱ/ﹳٴ;)Lⁱⁱ/ʽ;
    .locals 21

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v7, p8

    iget-object v3, v0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    if-eqz v3, :cond_0

    new-instance v3, Lⁱⁱ/ⁱˊ;

    move-object/from16 v4, p3

    invoke-direct {v3, v2, v4}, Lⁱⁱ/ⁱˊ;-><init>(Ljava/lang/Object;Lⁱⁱ/ˈ;)V

    move-object v13, v3

    move-object/from16 v16, v13

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    const/4 v3, 0x0

    move-object/from16 v16, v3

    move-object v13, v4

    :goto_0
    iget-object v3, v0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    if-eqz v3, :cond_8

    iget-boolean v4, v0, Lcom/bumptech/glide/ٴﹶ;->ᐧᴵ:Z

    if-nez v4, :cond_7

    iget-object v4, v3, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    iget-boolean v5, v3, Lcom/bumptech/glide/ٴﹶ;->ᵎᵔ:Z

    if-eqz v5, :cond_1

    move-object/from16 v17, v1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v4

    :goto_1
    const/16 v4, 0x8

    iget v3, v3, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-static {v3, v4}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    iget-object v3, v3, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    :goto_2
    move-object/from16 v18, v3

    goto :goto_3

    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/bumptech/glide/ᵎﹶ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-object v3, Lcom/bumptech/glide/ᵎﹶ;->ᴵˊ:Lcom/bumptech/glide/ᵎﹶ;

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/bumptech/glide/ᵎﹶ;->ʾˋ:Lcom/bumptech/glide/ᵎﹶ;

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    iget v5, v3, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v3, v3, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    invoke-static/range {p6 .. p7}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    iget v8, v6, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v6, v6, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    invoke-static {v8, v6}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v6

    if-nez v6, :cond_6

    iget v5, v7, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v3, v7, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    :cond_6
    move/from16 v19, v3

    move/from16 v20, v5

    new-instance v3, Lⁱⁱ/ᵔᵢ;

    invoke-direct {v3, v2, v13}, Lⁱⁱ/ᵔᵢ;-><init>(Ljava/lang/Object;Lⁱⁱ/ˈ;)V

    iget-object v2, v0, Lcom/bumptech/glide/ٴﹶ;->ˊˋ:Landroid/content/Context;

    move-object v13, v3

    iget-object v3, v0, Lcom/bumptech/glide/ٴﹶ;->ﹳـ:Lcom/bumptech/glide/ˑﹳ;

    iget-object v5, v0, Lcom/bumptech/glide/ٴﹶ;->ᴵˑ:Ljava/lang/Object;

    iget-object v6, v0, Lcom/bumptech/glide/ٴﹶ;->ـˏ:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    iget-object v14, v3, Lcom/bumptech/glide/ˑﹳ;->ᵎﹶ:Lʿʾ/ˉʿ;

    iget-object v15, v1, Lcom/bumptech/glide/ˉˆ;->ʾˋ:Lˈʼ/ˈ;

    new-instance v1, Lⁱⁱ/ᵎﹶ;

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v15}, Lⁱⁱ/ᵎﹶ;-><init>(Landroid/content/Context;Lcom/bumptech/glide/ˑﹳ;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lⁱⁱ/ﹳٴ;IILcom/bumptech/glide/ᵎﹶ;Lʾˎ/ˑﹳ;Ljava/util/ArrayList;Lⁱⁱ/ˈ;Lʿʾ/ˉʿ;Lˈʼ/ˈ;)V

    move-object v10, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/ٴﹶ;->ᐧᴵ:Z

    iget-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    move-object v9, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v8, v19

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/ٴﹶ;->ʼʼ(Ljava/lang/Object;Lʾˎ/ˑﹳ;Lⁱⁱ/ˈ;Lcom/bumptech/glide/ˉˆ;Lcom/bumptech/glide/ᵎﹶ;IILⁱⁱ/ﹳٴ;)Lⁱⁱ/ʽ;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bumptech/glide/ٴﹶ;->ᐧᴵ:Z

    iput-object v10, v13, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    iput-object v1, v13, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    move-object/from16 v7, p8

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget-object v2, v0, Lcom/bumptech/glide/ٴﹶ;->ˊˋ:Landroid/content/Context;

    iget-object v3, v0, Lcom/bumptech/glide/ٴﹶ;->ﹳـ:Lcom/bumptech/glide/ˑﹳ;

    iget-object v5, v0, Lcom/bumptech/glide/ٴﹶ;->ᴵˑ:Ljava/lang/Object;

    iget-object v6, v0, Lcom/bumptech/glide/ٴﹶ;->ـˏ:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    iget-object v14, v3, Lcom/bumptech/glide/ˑﹳ;->ᵎﹶ:Lʿʾ/ˉʿ;

    iget-object v15, v1, Lcom/bumptech/glide/ˉˆ;->ʾˋ:Lˈʼ/ˈ;

    new-instance v1, Lⁱⁱ/ᵎﹶ;

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v15}, Lⁱⁱ/ᵎﹶ;-><init>(Landroid/content/Context;Lcom/bumptech/glide/ˑﹳ;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lⁱⁱ/ﹳٴ;IILcom/bumptech/glide/ᵎﹶ;Lʾˎ/ˑﹳ;Ljava/util/ArrayList;Lⁱⁱ/ˈ;Lʿʾ/ˉʿ;Lˈʼ/ˈ;)V

    move-object v13, v1

    :goto_4
    if-nez v16, :cond_9

    return-object v13

    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    iget v2, v1, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v1, v1, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    invoke-static/range {p6 .. p7}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    iget v4, v3, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v3, v3, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    invoke-static {v4, v3}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v3

    if-nez v3, :cond_a

    iget v2, v7, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v1, v7, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    :cond_a
    move v8, v1

    move v7, v2

    iget-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    iget-object v5, v1, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    iget-object v6, v1, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    move-object v9, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/ٴﹶ;->ʼʼ(Ljava/lang/Object;Lʾˎ/ˑﹳ;Lⁱⁱ/ˈ;Lcom/bumptech/glide/ˉˆ;Lcom/bumptech/glide/ᵎﹶ;IILⁱⁱ/ﹳٴ;)Lⁱⁱ/ʽ;

    move-result-object v1

    iput-object v13, v4, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    iput-object v1, v4, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    return-object v4
.end method

.method public final ʽʽ(Lʾˎ/ˑﹳ;Lⁱⁱ/ﹳٴ;)V
    .locals 10

    .prologue
    invoke-static {p1}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/bumptech/glide/ٴﹶ;->ᐧﾞ:Z

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    iget-object v6, p2, Lⁱⁱ/ﹳٴ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    iget v7, p2, Lⁱⁱ/ﹳٴ;->ˉٴ:I

    iget v8, p2, Lⁱⁱ/ﹳٴ;->ٴᵢ:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/ٴﹶ;->ʼʼ(Ljava/lang/Object;Lʾˎ/ˑﹳ;Lⁱⁱ/ˈ;Lcom/bumptech/glide/ˉˆ;Lcom/bumptech/glide/ᵎﹶ;IILⁱⁱ/ﹳٴ;)Lⁱⁱ/ʽ;

    move-result-object p1

    invoke-interface {v3}, Lʾˎ/ˑﹳ;->ᵔᵢ()Lⁱⁱ/ʽ;

    move-result-object p2

    invoke-interface {p1, p2}, Lⁱⁱ/ʽ;->ᵎﹶ(Lⁱⁱ/ʽ;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v9, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lⁱⁱ/ʽ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lⁱⁱ/ʽ;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lⁱⁱ/ʽ;->ﾞᴵ()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p2, v1, Lcom/bumptech/glide/ٴﹶ;->ʼˈ:Lcom/bumptech/glide/ᵔʾ;

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/ᵔʾ;->ﾞʻ(Lʾˎ/ˑﹳ;)V

    invoke-interface {v3, p1}, Lʾˎ/ˑﹳ;->ﹳٴ(Lⁱⁱ/ʽ;)V

    iget-object p2, v1, Lcom/bumptech/glide/ٴﹶ;->ʼˈ:Lcom/bumptech/glide/ᵔʾ;

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    iget-object v0, v0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/bumptech/glide/ᵔʾ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    const-string v2, "RequestTracker"

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    if-nez v3, :cond_3

    invoke-interface {p1}, Lⁱⁱ/ʽ;->ﾞᴵ()V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lⁱⁱ/ʽ;->clear()V

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Paused, delaying request"

    nop

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    move-object v1, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʾˋ(Lcom/bumptech/glide/ٴﹶ;)Lcom/bumptech/glide/ٴﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ٴﹶ;->ʾˋ(Lcom/bumptech/glide/ٴﹶ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ʾᵎ(Lⁱⁱ/ﹳٴ;)Lcom/bumptech/glide/ٴﹶ;
    .locals 0

    invoke-static {p1}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lⁱⁱ/ﹳٴ;->ﹳٴ(Lⁱⁱ/ﹳٴ;)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/ٴﹶ;

    return-object p1
.end method

.method public final ˈٴ(Lⁱⁱ/ˑﹳ;)Lcom/bumptech/glide/ٴﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ٴﹶ;->ˈٴ(Lⁱⁱ/ˑﹳ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/ٴﹶ;->ـˆ(Lⁱⁱ/ˑﹳ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    return-object p1
.end method

.method public final ˊʻ(Lcom/bumptech/glide/ˉˆ;)Lcom/bumptech/glide/ٴﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ٴﹶ;->ˊʻ(Lcom/bumptech/glide/ˉˆ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/ٴﹶ;->ᵎᵔ:Z

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ـˆ(Lⁱⁱ/ˑﹳ;)Lcom/bumptech/glide/ٴﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ٴﹶ;->ـˆ(Lⁱⁱ/ˑﹳ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ᴵˊ(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    invoke-static {}, Lʿٴ/ᵔʾ;->ﹳٴ()V

    invoke-static {p1}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    const/16 v0, 0x800

    iget v1, p0, Lⁱⁱ/ﹳٴ;->ʾˋ:I

    invoke-static {v1, v0}, Lⁱⁱ/ﹳٴ;->ʼˎ(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/ˆʾ;->ﹳٴ:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    sget-object v2, Lᵔﹶ/ﾞʻ;->ʽ:Lᵔﹶ/ﾞʻ;

    new-instance v3, Lᵔﹶ/ᵔᵢ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3}, Lⁱⁱ/ﹳٴ;->ˆʾ(Lᵔﹶ/ﾞʻ;Lᵔﹶ/ˈ;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    iput-boolean v1, v0, Lⁱⁱ/ﹳٴ;->ˑٴ:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    sget-object v2, Lᵔﹶ/ﾞʻ;->ⁱˊ:Lᵔﹶ/ﾞʻ;

    new-instance v3, Lᵔﹶ/ʽﹳ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3}, Lⁱⁱ/ﹳٴ;->ˆʾ(Lᵔﹶ/ﾞʻ;Lᵔﹶ/ˈ;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    iput-boolean v1, v0, Lⁱⁱ/ﹳٴ;->ˑٴ:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    sget-object v2, Lᵔﹶ/ﾞʻ;->ʽ:Lᵔﹶ/ﾞʻ;

    new-instance v3, Lᵔﹶ/ᵔᵢ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3}, Lⁱⁱ/ﹳٴ;->ˆʾ(Lᵔﹶ/ﾞʻ;Lᵔﹶ/ˈ;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    iput-boolean v1, v0, Lⁱⁱ/ﹳٴ;->ˑٴ:Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    sget-object v1, Lᵔﹶ/ﾞʻ;->ˈ:Lᵔﹶ/ﾞʻ;

    new-instance v2, Lᵔﹶ/ᵎﹶ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lⁱⁱ/ﹳٴ;->ˆʾ(Lᵔﹶ/ﾞʻ;Lᵔﹶ/ˈ;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/ٴﹶ;->ﹳـ:Lcom/bumptech/glide/ˑﹳ;

    iget-object v1, v1, Lcom/bumptech/glide/ˑﹳ;->ʽ:Lᵎˉ/ⁱˊ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bumptech/glide/ٴﹶ;->ـˏ:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lʾˎ/ﹳٴ;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lʾˎ/ﹳٴ;-><init>(Landroid/widget/ImageView;I)V

    goto :goto_2

    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lʾˎ/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lʾˎ/ﹳٴ;-><init>(Landroid/widget/ImageView;I)V

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/ٴﹶ;->ʽʽ(Lʾˎ/ˑﹳ;Lⁱⁱ/ﹳٴ;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᴵᵔ(Ljava/lang/Object;)Lcom/bumptech/glide/ٴﹶ;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ٴﹶ;->ᴵᵔ(Ljava/lang/Object;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/ٴﹶ;->ᴵˑ:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/ٴﹶ;->ᐧﾞ:Z

    invoke-virtual {p0}, Lⁱⁱ/ﹳٴ;->ᵔʾ()V

    return-object p0
.end method

.method public final ᵢˏ()Lcom/bumptech/glide/ٴﹶ;
    .locals 3

    .prologue
    invoke-super {p0}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/ٴﹶ;

    iget-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    invoke-virtual {v1}, Lcom/bumptech/glide/ˉˆ;->ﹳٴ()Lcom/bumptech/glide/ˉˆ;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ˈⁱ:Lcom/bumptech/glide/ˉˆ;

    iget-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ˉـ:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ʿ:Lcom/bumptech/glide/ٴﹶ;

    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/ٴﹶ;->ʿᵢ:Lcom/bumptech/glide/ٴﹶ;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic ⁱˊ()Lⁱⁱ/ﹳٴ;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/ٴﹶ;->ᵢˏ()Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ﹳٴ(Lⁱⁱ/ﹳٴ;)Lⁱⁱ/ﹳٴ;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/ٴﹶ;->ʾᵎ(Lⁱⁱ/ﹳٴ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    return-object p1
.end method
