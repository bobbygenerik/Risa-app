.class public final Lʿʾ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lﹶⁱ/ﹳٴ;

.field public final ˈ:Lˑٴ/ʽ;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lﹶⁱ/ﹳٴ;Lᵢ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʾ/ٴﹶ;->ﹳٴ:Ljava/lang/Class;

    iput-object p4, p0, Lʿʾ/ٴﹶ;->ⁱˊ:Ljava/util/List;

    iput-object p5, p0, Lʿʾ/ٴﹶ;->ʽ:Lﹶⁱ/ﹳٴ;

    iput-object p6, p0, Lʿʾ/ٴﹶ;->ˈ:Lˑٴ/ʽ;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed DecodePath{"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lʿʾ/ٴﹶ;->ˑﹳ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodePath{ dataClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿʾ/ٴﹶ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/ٴﹶ;->ⁱˊ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/ٴﹶ;->ʽ:Lﹶⁱ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Lcom/bumptech/glide/load/data/ᵎﹶ;IILʼᵔ/ᵔᵢ;Ljava/util/List;)Lʿʾ/ᵢˏ;
    .locals 9

    .prologue
    iget-object v0, p0, Lʿʾ/ٴﹶ;->ⁱˊ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʼᵔ/ˆʾ;

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/ᵎﹶ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p4}, Lʼᵔ/ˆʾ;->ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/ᵎﹶ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3, p4}, Lʼᵔ/ˆʾ;->ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    :goto_1
    const/4 v6, 0x2

    const-string v7, "DecodePath"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to decode data for "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_0
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lʿʾ/ٴﹶ;->ˑﹳ:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public final ﹳٴ(IILcom/bumptech/glide/load/data/ᵎﹶ;Lʼٴ/ʾᵎ;Lʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p4

    iget-object v7, v1, Lʿʾ/ٴﹶ;->ˈ:Lˑٴ/ʽ;

    invoke-interface {v7}, Lˑٴ/ʽ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    const-string v2, "Argument must not be null"

    invoke-static {v6, v2}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lʿʾ/ٴﹶ;->ⁱˊ(Lcom/bumptech/glide/load/data/ᵎﹶ;IILʼᵔ/ᵔᵢ;Ljava/util/List;)Lʿʾ/ᵢˏ;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7, v6}, Lˑٴ/ʽ;->ˑﹳ(Ljava/lang/Object;)Z

    iget-object v3, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lʿʾ/ˆʾ;

    iget v0, v0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    iget-object v4, v3, Lʿʾ/ˆʾ;->ʾˋ:Lʿʾ/ʼˎ;

    invoke-interface {v2}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v0, v5, :cond_0

    invoke-virtual {v4, v13}, Lʿʾ/ʼˎ;->ˑﹳ(Ljava/lang/Class;)Lʼᵔ/ﾞʻ;

    move-result-object v5

    iget-object v7, v3, Lʿʾ/ˆʾ;->ˉٴ:Lcom/bumptech/glide/ˑﹳ;

    iget v8, v3, Lʿʾ/ˆʾ;->ᵔי:I

    iget v9, v3, Lʿʾ/ˆʾ;->ˆﾞ:I

    invoke-interface {v5, v7, v2, v8, v9}, Lʼᵔ/ﾞʻ;->ﹳٴ(Landroid/content/Context;Lʿʾ/ᵢˏ;II)Lʿʾ/ᵢˏ;

    move-result-object v7

    move-object v12, v5

    move-object v5, v7

    goto :goto_0

    :cond_0
    move-object v5, v2

    move-object v12, v6

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v2}, Lʿʾ/ᵢˏ;->ˈ()V

    :cond_1
    iget-object v2, v4, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v2}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/ᵔᵢ;->ˈ:Lʼﹳ/ᵎﹶ;

    invoke-interface {v5}, Lʿʾ/ᵢˏ;->ʽ()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2, v7}, Lʼﹳ/ᵎﹶ;->ﹳٴ(Ljava/lang/Class;)Lʼᵔ/ٴﹶ;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v4, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v2}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/ᵔᵢ;->ˈ:Lʼﹳ/ᵎﹶ;

    invoke-interface {v5}, Lʿʾ/ᵢˏ;->ʽ()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Lʼﹳ/ᵎﹶ;->ﹳٴ(Ljava/lang/Class;)Lʼᵔ/ٴﹶ;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v2, v3, Lʿʾ/ˆʾ;->ˈʿ:Lʼᵔ/ᵔᵢ;

    invoke-interface {v6, v2}, Lʼᵔ/ٴﹶ;->ʼʼ(Lʼᵔ/ᵔᵢ;)I

    move-result v2

    :goto_1
    move-object v15, v6

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v5}, Lʿʾ/ᵢˏ;->ʽ()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :goto_2
    iget-object v6, v3, Lʿʾ/ˆʾ;->ﹳـ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v4}, Lʿʾ/ʼˎ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    const/4 v11, 0x1

    if-ge v10, v8, :cond_5

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lⁱʼ/ˉˆ;

    iget-object v14, v14, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    invoke-interface {v14, v6}, Lʼᵔ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v6, v11

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move v6, v9

    :goto_4
    iget-object v7, v3, Lʿʾ/ˆʾ;->ᵔٴ:Lʿʾ/ﾞʻ;

    iget v7, v7, Lʿʾ/ﾞʻ;->ﹳٴ:I

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x1

    if-nez v6, :cond_6

    const/4 v6, 0x3

    if-eq v0, v6, :cond_7

    :cond_6
    if-ne v0, v7, :cond_8

    :cond_7
    const/4 v0, 0x2

    if-ne v2, v0, :cond_8

    goto :goto_5

    :cond_8
    :pswitch_0
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_f

    if-eqz v15, :cond_e

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    if-eqz v0, :cond_d

    if-ne v0, v11, :cond_9

    new-instance v6, Lʿʾ/ᴵˊ;

    iget-object v0, v4, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    iget-object v7, v0, Lcom/bumptech/glide/ˑﹳ;->ﹳٴ:Lיᐧ/ﾞᴵ;

    iget-object v8, v3, Lʿʾ/ˆʾ;->ﹳـ:Lʼᵔ/ˑﹳ;

    move v0, v9

    iget-object v9, v3, Lʿʾ/ˆʾ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    iget v10, v3, Lʿʾ/ˆʾ;->ᵔי:I

    move v2, v11

    iget v11, v3, Lʿʾ/ˆʾ;->ˆﾞ:I

    iget-object v14, v3, Lʿʾ/ˆʾ;->ˈʿ:Lʼᵔ/ᵔᵢ;

    move v4, v2

    invoke-direct/range {v6 .. v14}, Lʿʾ/ᴵˊ;-><init>(Lיᐧ/ﾞᴵ;Lʼᵔ/ˑﹳ;Lʼᵔ/ˑﹳ;IILʼᵔ/ﾞʻ;Ljava/lang/Class;Lʼᵔ/ᵔᵢ;)V

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    const-string v2, "null"

    goto :goto_6

    :cond_a
    const-string v2, "NONE"

    goto :goto_6

    :cond_b
    const-string v2, "TRANSFORMED"

    goto :goto_6

    :cond_c
    const-string v2, "SOURCE"

    :goto_6
    const-string v3, "Unknown strategy: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v0, v9

    move v4, v11

    new-instance v6, Lʿʾ/ﾞᴵ;

    iget-object v2, v3, Lʿʾ/ˆʾ;->ﹳـ:Lʼᵔ/ˑﹳ;

    iget-object v7, v3, Lʿʾ/ˆʾ;->ᵎⁱ:Lʼᵔ/ˑﹳ;

    invoke-direct {v6, v2, v7}, Lʿʾ/ﾞᴵ;-><init>(Lʼᵔ/ˑﹳ;Lʼᵔ/ˑﹳ;)V

    :goto_7
    sget-object v2, Lʿʾ/ʼʼ;->ᴵᵔ:Lᵢ/ﹳٴ;

    invoke-virtual {v2}, Lᵢ/ﹳٴ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʿʾ/ʼʼ;

    iput-boolean v0, v2, Lʿʾ/ʼʼ;->ˈٴ:Z

    iput-boolean v4, v2, Lʿʾ/ʼʼ;->ʽʽ:Z

    iput-object v5, v2, Lʿʾ/ʼʼ;->ᴵˊ:Lʿʾ/ᵢˏ;

    iget-object v0, v3, Lʿʾ/ˆʾ;->ˊʻ:Lᵢ/ﹳٴ;

    iput-object v6, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object v15, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object v2, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    move-object v5, v2

    goto :goto_8

    :cond_e
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v5}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_f
    :goto_8
    iget-object v0, v1, Lʿʾ/ٴﹶ;->ʽ:Lﹶⁱ/ﹳٴ;

    move-object/from16 v2, p5

    invoke-interface {v0, v5, v2}, Lﹶⁱ/ﹳٴ;->ˑﹳ(Lʿʾ/ᵢˏ;Lʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v7, v6}, Lˑٴ/ʽ;->ˑﹳ(Ljava/lang/Object;)Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
