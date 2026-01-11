.class public final Lﹳᵢ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʼʼ;


# instance fields
.field public ʼˎ:Z

.field public ʽ:Lˋⁱ/ﾞᴵ;

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ᵎﹶ:F

.field public final ᵔᵢ:F

.field public final ⁱˊ:Lˑʼ/ᵎˊ;

.field public final ﹳٴ:Lʻʻ/ʽ;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lˊﾞ/ˉʿ;)V
    .locals 3

    .prologue
    new-instance v0, Lˑʼ/ᵎˊ;

    new-instance v1, Landroidx/leanback/widget/יﹳ;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroidx/leanback/widget/יﹳ;-><init>(I)V

    invoke-direct {v0, p1, v1}, Lˑʼ/ᵎˊ;-><init>(Landroid/content/Context;Lـˊ/ˑﹳ;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lﹳᵢ/ᵔʾ;->ⁱˊ:Lˑʼ/ᵎˊ;

    new-instance p1, Lˋⁱ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᵔʾ;->ʽ:Lˋⁱ/ﾞᴵ;

    new-instance v1, Lʻʻ/ʽ;

    invoke-direct {v1, p2, p1}, Lʻʻ/ʽ;-><init>(Lˊﾞ/ˉʿ;Lˋⁱ/ﾞᴵ;)V

    iput-object v1, p0, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    iget-object p1, v1, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ᵎˊ;

    if-eq v0, p1, :cond_0

    iput-object v0, v1, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    iget-object p1, v1, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, v1, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﹳᵢ/ᵔʾ;->ˈ:J

    iput-wide p1, p0, Lﹳᵢ/ᵔʾ;->ˑﹳ:J

    iput-wide p1, p0, Lﹳᵢ/ᵔʾ;->ﾞᴵ:J

    const p1, -0x800001

    iput p1, p0, Lﹳᵢ/ᵔʾ;->ᵎﹶ:F

    iput p1, p0, Lﹳᵢ/ᵔʾ;->ᵔᵢ:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹳᵢ/ᵔʾ;->ʼˎ:Z

    return-void
.end method

.method public static ᵎﹶ(Ljava/lang/Class;Lـˊ/ˑﹳ;)Lﹳᵢ/ʼʼ;
    .locals 4

    .prologue
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lـˊ/ˑﹳ;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lﹳᵢ/ʼʼ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ᴵˊ;)Lﹳᵢ/ᴵˊ;
    .locals 31

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iget-object v2, v2, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "ssai"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    :goto_0
    iget-object v2, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iget-object v2, v2, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    const-string v4, "application/x-image-uri"

    invoke-static {v2, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iget-object v4, v2, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    iget-object v2, v2, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_2

    invoke-static {v4}, Lᐧˎ/ʼʼ;->ᵔי(Landroid/net/Uri;)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "application/x-rtsp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v9, v7

    goto :goto_1

    :sswitch_1
    const-string v4, "application/dash+xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v9, v8

    goto :goto_1

    :sswitch_2
    const-string v4, "application/vnd.ms-sstr+xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v9, v6

    goto :goto_1

    :sswitch_3
    const-string v4, "application/x-mpegURL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v9, v5

    :goto_1
    packed-switch v9, :pswitch_data_0

    const/4 v2, 0x4

    goto :goto_2

    :pswitch_0
    move v2, v7

    goto :goto_2

    :pswitch_1
    move v2, v5

    goto :goto_2

    :pswitch_2
    move v2, v6

    goto :goto_2

    :pswitch_3
    move v2, v8

    :goto_2
    iget-object v4, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iget-wide v7, v4, Lʽⁱ/ʼʼ;->ˑﹳ:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v9

    if-eqz v4, :cond_7

    iget-object v4, v1, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    iget-object v4, v4, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v4, Lˊﾞ/ˉʿ;

    monitor-enter v4

    :try_start_0
    iput v6, v4, Lˊﾞ/ˉʿ;->ﾞᴵ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :goto_3
    :try_start_2
    iget-object v4, v1, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    invoke-virtual {v4, v2}, Lʻʻ/ʽ;->ٴﹶ(I)Lﹳᵢ/ʼʼ;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v4, v0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    invoke-virtual {v4}, Lʽⁱ/ʾᵎ;->ﹳٴ()Lʽⁱ/ـˆ;

    move-result-object v4

    iget-object v7, v0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    iget-wide v11, v7, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_8

    iget-wide v11, v1, Lﹳᵢ/ᵔʾ;->ˈ:J

    iput-wide v11, v4, Lʽⁱ/ـˆ;->ﹳٴ:J

    :cond_8
    iget v8, v7, Lʽⁱ/ʾᵎ;->ˈ:F

    const v11, -0x800001

    cmpl-float v8, v8, v11

    if-nez v8, :cond_9

    iget v8, v1, Lﹳᵢ/ᵔʾ;->ᵎﹶ:F

    iput v8, v4, Lʽⁱ/ـˆ;->ˈ:F

    :cond_9
    iget v8, v7, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_a

    iget v8, v1, Lﹳᵢ/ᵔʾ;->ᵔᵢ:F

    iput v8, v4, Lʽⁱ/ـˆ;->ˑﹳ:F

    :cond_a
    iget-wide v11, v7, Lʽⁱ/ʾᵎ;->ⁱˊ:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_b

    iget-wide v11, v1, Lﹳᵢ/ᵔʾ;->ˑﹳ:J

    iput-wide v11, v4, Lʽⁱ/ـˆ;->ⁱˊ:J

    :cond_b
    iget-wide v7, v7, Lʽⁱ/ʾᵎ;->ʽ:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_c

    iget-wide v7, v1, Lﹳᵢ/ᵔʾ;->ﾞᴵ:J

    iput-wide v7, v4, Lʽⁱ/ـˆ;->ʽ:J

    :cond_c
    new-instance v7, Lʽⁱ/ʾᵎ;

    invoke-direct {v7, v4}, Lʽⁱ/ʾᵎ;-><init>(Lʽⁱ/ـˆ;)V

    iget-object v4, v0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    invoke-virtual {v7, v4}, Lʽⁱ/ʾᵎ;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    new-instance v4, Lʽⁱ/ᵎᵔ;

    invoke-direct {v4}, Lʽⁱ/ᵎᵔ;-><init>()V

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v8, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    sget-object v11, Lʽⁱ/ᵢˏ;->ﹳٴ:Lʽⁱ/ᵢˏ;

    iget-object v11, v0, Lʽⁱ/ᴵˊ;->ˑﹳ:Lʽⁱ/ʻٴ;

    new-instance v12, Lʽⁱ/ˏי;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iget-wide v13, v11, Lʽⁱ/ʽﹳ;->ﹳٴ:J

    iput-wide v13, v12, Lʽⁱ/ˏי;->ﹳٴ:J

    iget-object v11, v0, Lʽⁱ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    iget-object v13, v0, Lʽⁱ/ᴵˊ;->ˈ:Lʽⁱ/ᴵᵔ;

    iget-object v14, v0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    invoke-virtual {v14}, Lʽⁱ/ʾᵎ;->ﹳٴ()Lʽⁱ/ـˆ;

    iget-object v14, v0, Lʽⁱ/ᴵˊ;->ﾞᴵ:Lʽⁱ/ᵢˏ;

    iget-object v0, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    if-eqz v0, :cond_d

    iget-object v4, v0, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    iget-object v8, v0, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    iget-object v9, v0, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    iget-object v10, v0, Lʽⁱ/ʼʼ;->ˈ:Lʼʻ/ᵎⁱ;

    new-instance v15, Lʽⁱ/ᵎᵔ;

    invoke-direct {v15}, Lʽⁱ/ᵎᵔ;-><init>()V

    move/from16 v22, v6

    move-object v15, v7

    iget-wide v6, v0, Lʽⁱ/ʼʼ;->ˑﹳ:J

    move-object/from16 v25, v4

    move-wide/from16 v29, v6

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    goto :goto_4

    :cond_d
    move/from16 v22, v6

    move-object v15, v7

    move-object/from16 v24, v3

    move-object/from16 v25, v24

    move-object/from16 v27, v4

    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    :goto_4
    invoke-virtual {v15}, Lʽⁱ/ʾᵎ;->ﹳٴ()Lʽⁱ/ـˆ;

    move-result-object v0

    const/16 v26, 0x0

    if-eqz v24, :cond_e

    new-instance v23, Lʽⁱ/ʼʼ;

    invoke-direct/range {v23 .. v30}, Lʽⁱ/ʼʼ;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/bumptech/glide/ʽ;Ljava/util/List;Lʼʻ/ᵎⁱ;J)V

    move-object/from16 v18, v23

    goto :goto_5

    :cond_e
    move-object/from16 v18, v26

    :goto_5
    new-instance v15, Lʽⁱ/ᴵˊ;

    if-eqz v11, :cond_f

    :goto_6
    move-object/from16 v16, v11

    goto :goto_7

    :cond_f
    const-string v11, ""

    goto :goto_6

    :goto_7
    new-instance v4, Lʽⁱ/ʻٴ;

    invoke-direct {v4, v12}, Lʽⁱ/ʽﹳ;-><init>(Lʽⁱ/ˏי;)V

    new-instance v6, Lʽⁱ/ʾᵎ;

    invoke-direct {v6, v0}, Lʽⁱ/ʾᵎ;-><init>(Lʽⁱ/ـˆ;)V

    if-eqz v13, :cond_10

    :goto_8
    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    goto :goto_9

    :cond_10
    sget-object v13, Lʽⁱ/ᴵᵔ;->ᴵˊ:Lʽⁱ/ᴵᵔ;

    goto :goto_8

    :goto_9
    invoke-direct/range {v15 .. v21}, Lʽⁱ/ᴵˊ;-><init>(Ljava/lang/String;Lʽⁱ/ʻٴ;Lʽⁱ/ʼʼ;Lʽⁱ/ʾᵎ;Lʽⁱ/ᴵᵔ;Lʽⁱ/ᵢˏ;)V

    goto :goto_a

    :cond_11
    move/from16 v22, v6

    move-object v15, v0

    :goto_a
    invoke-interface {v2, v15}, Lﹳᵢ/ʼʼ;->ʽ(Lʽⁱ/ᴵˊ;)Lﹳᵢ/ᴵˊ;

    move-result-object v0

    iget-object v2, v15, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iget-object v2, v2, Lʽⁱ/ʼʼ;->ˈ:Lʼʻ/ᵎⁱ;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lﹳᵢ/ᴵˊ;

    aput-object v0, v4, v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-boolean v0, v1, Lﹳᵢ/ᵔʾ;->ʼˎ:Z

    if-eqz v0, :cond_13

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽⁱ/ʾˋ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lʽⁱ/ˉٴ;->ﹳٴ:Ljava/util/ArrayList;

    iput-object v3, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽⁱ/ʾˋ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽⁱ/ʾˋ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v5, v0, Lʽⁱ/ᵔﹳ;->ˑﹳ:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽⁱ/ʾˋ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v5, v0, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽⁱ/ʾˋ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lʽⁱ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽⁱ/ʾˋ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    new-instance v4, Lʽⁱ/ﹳᐧ;

    invoke-direct {v4, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-object v0, v1, Lﹳᵢ/ᵔʾ;->ʽ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v0, v4}, Lˋⁱ/ﾞᴵ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v0

    const-string v6, "application/x-media3-cues"

    invoke-static {v6}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v6, v4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iput-object v6, v0, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    iget-object v6, v1, Lﹳᵢ/ᵔʾ;->ʽ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v6, v4}, Lˋⁱ/ﾞᴵ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v4

    iput v4, v0, Lʽⁱ/ᵔﹳ;->ᵎˊ:I

    new-instance v4, Lʽⁱ/ﹳᐧ;

    invoke-direct {v4, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    :cond_12
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽⁱ/ʾˋ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3

    :cond_13
    iget-object v0, v1, Lﹳᵢ/ᵔʾ;->ⁱˊ:Lˑʼ/ᵎˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽⁱ/ʾˋ;

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v4, v22

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sget-object v2, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    sget-object v2, Lʽⁱ/ᵢˏ;->ﹳٴ:Lʽⁱ/ᵢˏ;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3

    :cond_14
    new-instance v0, Lﹳᵢ/ᵎˊ;

    invoke-direct {v0, v4}, Lﹳᵢ/ᵎˊ;-><init>([Lﹳᵢ/ᴵˊ;)V

    :cond_15
    iget-object v2, v15, Lʽⁱ/ᴵˊ;->ˑﹳ:Lʽⁱ/ʻٴ;

    iget-wide v3, v2, Lʽⁱ/ʽﹳ;->ﹳٴ:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    goto :goto_b

    :cond_16
    new-instance v3, Lﹳᵢ/ˈ;

    invoke-direct {v3, v0}, Lﹳᵢ/ˈ;-><init>(Lﹳᵢ/ᴵˊ;)V

    iget-boolean v0, v3, Lﹳᵢ/ˈ;->ˈ:Z

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-wide v5, v2, Lʽⁱ/ʽﹳ;->ﹳٴ:J

    iget-boolean v0, v3, Lﹳᵢ/ˈ;->ˈ:Z

    xor-int/2addr v0, v4

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide v5, v3, Lﹳᵢ/ˈ;->ⁱˊ:J

    iget-boolean v0, v3, Lﹳᵢ/ˈ;->ˈ:Z

    xor-int/2addr v0, v4

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-boolean v4, v3, Lﹳᵢ/ˈ;->ʽ:Z

    iget-boolean v0, v3, Lﹳᵢ/ˈ;->ˈ:Z

    xor-int/2addr v0, v4

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-boolean v0, v3, Lﹳᵢ/ˈ;->ˈ:Z

    xor-int/2addr v0, v4

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-boolean v0, v3, Lﹳᵢ/ˈ;->ˈ:Z

    xor-int/2addr v0, v4

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-boolean v4, v3, Lﹳᵢ/ˈ;->ˈ:Z

    new-instance v0, Lﹳᵢ/ﾞᴵ;

    invoke-direct {v0, v3}, Lﹳᵢ/ﾞᴵ;-><init>(Lﹳᵢ/ˈ;)V

    :goto_b
    iget-object v2, v15, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v15, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_17
    iget-object v0, v0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iget-wide v4, v0, Lʽⁱ/ʼʼ;->ˑﹳ:J

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    throw v3

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;
    .locals 2

    .prologue
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    iput-object p1, v0, Lʻʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    iget-object v0, v0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼʼ;

    invoke-interface {v1, p1}, Lﹳᵢ/ʼʼ;->ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;
    .locals 2

    .prologue
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    iput-object p1, v0, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    iget-object v0, v0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼʼ;

    invoke-interface {v1, p1}, Lﹳᵢ/ʼʼ;->ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final ⁱˊ()Lﹳᵢ/ʼʼ;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˊﾞ/ˉʿ;

    monitor-enter v0

    monitor-exit v0

    return-object p0
.end method

.method public final ﹳٴ(Z)Lﹳᵢ/ʼʼ;
    .locals 2

    .prologue
    iput-boolean p1, p0, Lﹳᵢ/ᵔʾ;->ʼˎ:Z

    iget-object v0, p0, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    iput-boolean p1, v0, Lʻʻ/ʽ;->ﹳٴ:Z

    iget-object v1, v0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lˊﾞ/ˉʿ;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, v1, Lˊﾞ/ˉʿ;->ˈ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼʼ;

    invoke-interface {v1, p1}, Lﹳᵢ/ʼʼ;->ﹳٴ(Z)Lﹳᵢ/ʼʼ;

    goto :goto_0

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;
    .locals 2

    .prologue
    iput-object p1, p0, Lﹳᵢ/ᵔʾ;->ʽ:Lˋⁱ/ﾞᴵ;

    iget-object v0, p0, Lﹳᵢ/ᵔʾ;->ﹳٴ:Lʻʻ/ʽ;

    iput-object p1, v0, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    iget-object v1, v0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lˊﾞ/ˉʿ;

    monitor-enter v1

    :try_start_0
    iput-object p1, v1, Lˊﾞ/ˉʿ;->ˑﹳ:Lˋⁱ/ﾞᴵ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ʼʼ;

    invoke-interface {v1, p1}, Lﹳᵢ/ʼʼ;->ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;

    goto :goto_0

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
