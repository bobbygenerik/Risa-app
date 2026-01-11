.class public final Lـᵢ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵢˋ/ʼˎ;


# instance fields
.field public final ʼˎ:[Lـᵢ/ˆʾ;

.field public final ʽ:[I

.field public ˆʾ:Lﹶʽ/ˏי;

.field public final ˈ:I

.field public ˉʿ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

.field public final ˑﹳ:Lـˊ/ﾞᴵ;

.field public ٴﹶ:Lٴᴵ/ʽ;

.field public final ᵎﹶ:I

.field public ᵔʾ:Z

.field public final ᵔᵢ:Lـᵢ/ᵔʾ;

.field public final ⁱˊ:Lˏˆ/ﹳٴ;

.field public final ﹳٴ:Lᵔⁱ/ˉˆ;

.field public ﾞʻ:I

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Lar/tvplayer/core/domain/ʽﹳ;Lᵔⁱ/ˉˆ;Lٴᴵ/ʽ;Lˏˆ/ﹳٴ;I[ILﹶʽ/ˏי;ILـˊ/ﾞᴵ;JIZLjava/util/ArrayList;Lـᵢ/ᵔʾ;)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v7, p2

    iput-object v7, v0, Lـᵢ/ٴﹶ;->ﹳٴ:Lᵔⁱ/ˉˆ;

    iput-object v2, v0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iput-object v3, v0, Lـᵢ/ٴﹶ;->ⁱˊ:Lˏˆ/ﹳٴ;

    move-object/from16 v7, p6

    iput-object v7, v0, Lـᵢ/ٴﹶ;->ʽ:[I

    iput-object v5, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    iput v6, v0, Lـᵢ/ٴﹶ;->ˈ:I

    move-object/from16 v7, p9

    iput-object v7, v0, Lـᵢ/ٴﹶ;->ˑﹳ:Lـˊ/ﾞᴵ;

    iput v4, v0, Lـᵢ/ٴﹶ;->ﾞʻ:I

    move-wide/from16 v7, p10

    iput-wide v7, v0, Lـᵢ/ٴﹶ;->ﾞᴵ:J

    move/from16 v7, p12

    iput v7, v0, Lـᵢ/ٴﹶ;->ᵎﹶ:I

    move-object/from16 v13, p15

    iput-object v13, v0, Lـᵢ/ٴﹶ;->ᵔᵢ:Lـᵢ/ᵔʾ;

    invoke-virtual {v2, v4}, Lٴᴵ/ʽ;->ˈ(I)J

    move-result-wide v14

    invoke-virtual {v0}, Lـᵢ/ٴﹶ;->ʼˎ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v5}, Lﹶʽ/ˏי;->length()I

    move-result v4

    new-array v4, v4, [Lـᵢ/ˆʾ;

    iput-object v4, v0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    const/4 v4, 0x0

    move v7, v4

    :goto_0
    iget-object v8, v0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    array-length v8, v8

    if-ge v7, v8, :cond_b

    invoke-interface {v5, v7}, Lﹶʽ/ˏי;->ﾞᴵ(I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lٴᴵ/ˉʿ;

    iget-object v9, v8, Lٴᴵ/ˉʿ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v3, v9}, Lˏˆ/ﹳٴ;->ᵔי(Ljava/util/List;)Lٴᴵ/ⁱˊ;

    move-result-object v9

    iget-object v10, v0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    new-instance v16, Lـᵢ/ˆʾ;

    if-eqz v9, :cond_0

    :goto_1
    move-object/from16 v17, v9

    goto :goto_2

    :cond_0
    iget-object v9, v8, Lٴᴵ/ˉʿ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lٴᴵ/ⁱˊ;

    goto :goto_1

    :goto_2
    iget-object v9, v8, Lٴᴵ/ˉʿ;->ʾˋ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Lʽⁱ/ﹳᐧ;->ˉʿ:Ljava/lang/String;

    invoke-static {v11}, Lʽⁱ/ˉٴ;->ᵔʾ(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-boolean v11, v1, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-nez v11, :cond_1

    const/4 v9, 0x0

    move/from16 v19, v7

    move-object v4, v8

    move-object/from16 v18, v10

    :goto_3
    move-object v12, v9

    move-wide v8, v14

    goto/16 :goto_9

    :cond_1
    new-instance v11, Lʽᐧ/ᵎﹶ;

    iget-object v12, v1, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v12, Lˋⁱ/ﾞᴵ;

    invoke-virtual {v12, v9}, Lˋⁱ/ﾞᴵ;->ﹳᐧ(Lʽⁱ/ﹳᐧ;)Lʽᐧ/ﾞʻ;

    move-result-object v12

    invoke-direct {v11, v12, v9}, Lʽᐧ/ᵎﹶ;-><init>(Lʽᐧ/ﾞʻ;Lʽⁱ/ﹳᐧ;)V

    :goto_4
    move/from16 v19, v7

    move-object v4, v8

    move-object v0, v9

    move-object/from16 v18, v10

    goto/16 :goto_8

    :cond_2
    const/4 v12, 0x1

    if-nez v11, :cond_3

    goto :goto_5

    :cond_3
    const-string v4, "video/webm"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "audio/webm"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/webm"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "video/x-matroska"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "audio/x-matroska"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/x-matroska"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move/from16 v19, v7

    move-object v4, v8

    move-object v0, v9

    move-object/from16 v18, v10

    goto :goto_7

    :cond_5
    :goto_5
    const-string v4, "image/jpeg"

    invoke-static {v11, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v11, Lʽʾ/ﹳٴ;

    invoke-direct {v11, v12}, Lʽʾ/ﹳٴ;-><init>(I)V

    goto :goto_4

    :cond_6
    const-string v4, "image/png"

    invoke-static {v11, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v11, Lʽʾ/ﹳٴ;

    const/4 v4, 0x1

    const/4 v12, 0x0

    invoke-direct {v11, v12, v4}, Lʽʾ/ﹳٴ;-><init>(BI)V

    goto :goto_4

    :cond_7
    if-eqz p13, :cond_8

    const/4 v4, 0x4

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    iget-boolean v11, v1, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-nez v11, :cond_9

    or-int/lit8 v4, v4, 0x20

    :cond_9
    move v11, v7

    new-instance v7, Lʻˆ/ˉʿ;

    iget-object v12, v1, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v12, Lˋⁱ/ﾞᴵ;

    move-object/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v19, v11

    const/4 v11, 0x0

    move-object v0, v9

    move v9, v4

    move-object v4, v8

    move-object v8, v12

    move-object/from16 v12, p14

    invoke-direct/range {v7 .. v13}, Lʻˆ/ˉʿ;-><init>(Lʽᐧ/ˆʾ;ILᐧˎ/ـˆ;Lʻˆ/ˏי;Ljava/util/List;Lـᵢ/ᵔʾ;)V

    move-object v11, v7

    goto :goto_8

    :goto_7
    iget-boolean v7, v1, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-nez v7, :cond_a

    const/4 v12, 0x3

    :cond_a
    new-instance v11, Lˑﹶ/ˈ;

    iget-object v7, v1, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lˋⁱ/ﾞᴵ;

    invoke-direct {v11, v7, v12}, Lˑﹶ/ˈ;-><init>(Lʽᐧ/ˆʾ;I)V

    :goto_8
    new-instance v9, Lᵢˋ/ˈ;

    invoke-direct {v9, v11, v6, v0}, Lᵢˋ/ˈ;-><init>(Lˊﾞ/ˉˆ;ILʽⁱ/ﹳᐧ;)V

    goto/16 :goto_3

    :goto_9
    const-wide/16 v13, 0x0

    invoke-virtual {v4}, Lٴᴵ/ˉʿ;->ˈ()Lـᵢ/ʼˎ;

    move-result-object v15

    move-object v10, v4

    move-object/from16 v7, v16

    move-object/from16 v11, v17

    invoke-direct/range {v7 .. v15}, Lـᵢ/ˆʾ;-><init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V

    aput-object v7, v18, v19

    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, p15

    move-wide v14, v8

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public final ʼˎ()Ljava/util/ArrayList;
    .locals 6

    .prologue
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget v1, p0, Lـᵢ/ٴﹶ;->ﾞʻ:I

    invoke-virtual {v0, v1}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v0

    iget-object v0, v0, Lٴᴵ/ᵔᵢ;->ʽ:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lـᵢ/ٴﹶ;->ʽ:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lٴᴵ/ﹳٴ;

    iget-object v5, v5, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final ʽ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ˉʿ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lـᵢ/ٴﹶ;->ﹳٴ:Lᵔⁱ/ˉˆ;

    invoke-interface {v0}, Lᵔⁱ/ˉˆ;->ʽ()V

    return-void

    :cond_0
    throw v0
.end method

.method public final ˆʾ(I)Lـᵢ/ˆʾ;
    .locals 13

    .prologue
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    aget-object v1, v0, p1

    iget-object v2, v1, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lٴᴵ/ˉʿ;

    iget-object v2, v2, Lٴᴵ/ˉʿ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    iget-object v3, p0, Lـᵢ/ٴﹶ;->ⁱˊ:Lˏˆ/ﹳٴ;

    invoke-virtual {v3, v2}, Lˏˆ/ﹳٴ;->ᵔי(Ljava/util/List;)Lٴᴵ/ⁱˊ;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v2, v1, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Lٴᴵ/ⁱˊ;

    invoke-virtual {v8, v2}, Lٴᴵ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v4, Lـᵢ/ˆʾ;

    iget-wide v5, v1, Lـᵢ/ˆʾ;->ⁱˊ:J

    iget-object v2, v1, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lٴᴵ/ˉʿ;

    iget-object v2, v1, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lᵢˋ/ˈ;

    iget-wide v10, v1, Lـᵢ/ˆʾ;->ʽ:J

    iget-object v1, v1, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lـᵢ/ʼˎ;

    invoke-direct/range {v4 .. v12}, Lـᵢ/ˆʾ;-><init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V

    aput-object v4, v0, p1

    return-object v4

    :cond_0
    return-object v1
.end method

.method public final ˈ(Lᵢˋ/ˑﹳ;ZLʼٴ/ʾᵎ;Lʻᴵ/יـ;)Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 p2, 0x1

    iget-object v1, p0, Lـᵢ/ٴﹶ;->ᵔᵢ:Lـᵢ/ᵔʾ;

    if-eqz v1, :cond_5

    iget-wide v2, v1, Lـᵢ/ᵔʾ;->ˈ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-wide v4, p1, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-object v1, v1, Lـᵢ/ᵔʾ;->ˑﹳ:Lـᵢ/ˉˆ;

    iget-object v3, v1, Lـᵢ/ˉˆ;->ˊʻ:Lٴᴵ/ʽ;

    iget-boolean v3, v3, Lٴᴵ/ʽ;->ˈ:Z

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v3, v1, Lـᵢ/ˉˆ;->ˉٴ:Z

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v2, :cond_5

    iget-boolean p1, v1, Lـᵢ/ˉˆ;->ٴᵢ:Z

    if-nez p1, :cond_4

    goto/16 :goto_6

    :cond_4
    iput-boolean p2, v1, Lـᵢ/ˉˆ;->ˉٴ:Z

    iput-boolean v0, v1, Lـᵢ/ˉˆ;->ٴᵢ:Z

    iget-object p1, v1, Lـᵢ/ˉˆ;->ᴵˊ:Lـᵢ/ﾞᴵ;

    iget-object p1, p1, Lـᵢ/ﾞᴵ;->ʾˋ:Lـᵢ/ᵔᵢ;

    iget-object p3, p1, Lـᵢ/ᵔᵢ;->ˏᵢ:Landroid/os/Handler;

    iget-object p4, p1, Lـᵢ/ᵔᵢ;->ᴵˑ:Lـᵢ/ʽ;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lـᵢ/ᵔᵢ;->ˊʻ()V

    return p2

    :cond_5
    :goto_1
    iget-object v1, p0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget-boolean v1, v1, Lٴᴵ/ʽ;->ˈ:Z

    iget-object v2, p0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    if-nez v1, :cond_6

    instance-of v1, p1, Lᵢˋ/ﾞʻ;

    if-eqz v1, :cond_6

    iget-object v1, p3, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    instance-of v3, v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_6

    check-cast v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v1, v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ˈٴ:I

    const/16 v3, 0x194

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    iget-object v3, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {v1, v3}, Lﹶʽ/ˏי;->ʼᐧ(Lʽⁱ/ﹳᐧ;)I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lـᵢ/ˆʾ;->ᵎﹶ()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_6

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v5, Lـᵢ/ʼˎ;

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {v5}, Lـᵢ/ʼˎ;->ʼʼ()J

    move-result-wide v5

    iget-wide v7, v1, Lـᵢ/ˆʾ;->ʽ:J

    add-long/2addr v5, v7

    add-long/2addr v5, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v5, v3

    move-object v1, p1

    check-cast v1, Lᵢˋ/ﾞʻ;

    invoke-virtual {v1}, Lᵢˋ/ﾞʻ;->ﹳٴ()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    iput-boolean p2, p0, Lـᵢ/ٴﹶ;->ᵔʾ:Z

    return p2

    :cond_6
    iget-object v1, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    iget-object v3, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {v1, v3}, Lﹶʽ/ˏי;->ʼᐧ(Lʽⁱ/ﹳᐧ;)I

    move-result v1

    aget-object v1, v2, v1

    iget-object v2, v1, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lٴᴵ/ˉʿ;

    iget-object v3, v1, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Lٴᴵ/ⁱˊ;

    iget-object v2, v2, Lٴᴵ/ˉʿ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    iget-object v4, p0, Lـᵢ/ٴﹶ;->ⁱˊ:Lˏˆ/ﹳٴ;

    invoke-virtual {v4, v2}, Lˏˆ/ﹳٴ;->ᵔי(Ljava/util/List;)Lٴᴵ/ⁱˊ;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v3, v2}, Lٴᴵ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v2, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    iget-object v1, v1, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lٴᴵ/ˉʿ;

    iget-object v1, v1, Lٴᴵ/ˉʿ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-interface {v2}, Lﹶʽ/ˏי;->length()I

    move-result v7

    move v8, v0

    move v9, v8

    :goto_2
    if-ge v8, v7, :cond_9

    invoke-interface {v2, v8, v5, v6}, Lﹶʽ/ˏי;->ʽ(IJ)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/lit8 v9, v9, 0x1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v5, v0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lٴᴵ/ⁱˊ;

    iget v6, v6, Lٴᴵ/ⁱˊ;->ʽ:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-instance v5, Lᵔⁱ/ᵔᵢ;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v1}, Lˏˆ/ﹳٴ;->ˆʾ(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    move v8, v0

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_b

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lٴᴵ/ⁱˊ;

    iget v10, v10, Lٴᴵ/ⁱˊ;->ʽ:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int v1, v2, v1

    invoke-direct {v5, v2, v1, v7, v9}, Lᵔⁱ/ᵔᵢ;-><init>(IIII)V

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lᵔⁱ/ᵔᵢ;->ﹳٴ(I)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v5, p2}, Lᵔⁱ/ᵔᵢ;->ﹳٴ(I)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p3}, Lʻᴵ/יـ;->ﹳٴ(Lᵔⁱ/ᵔᵢ;Lʼٴ/ʾᵎ;)Lʼˊ/ⁱˊ;

    move-result-object p3

    if-eqz p3, :cond_12

    iget-wide v6, p3, Lʼˊ/ⁱˊ;->ᴵˊ:J

    iget p3, p3, Lʼˊ/ⁱˊ;->ʾˋ:I

    invoke-virtual {v5, p3}, Lᵔⁱ/ᵔᵢ;->ﹳٴ(I)Z

    move-result p4

    if-nez p4, :cond_d

    goto :goto_7

    :cond_d
    if-ne p3, v1, :cond_e

    iget-object p2, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    iget-object p1, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p2, p1}, Lﹶʽ/ˏי;->ʼᐧ(Lʽⁱ/ﹳᐧ;)I

    move-result p1

    invoke-interface {p2, p1, v6, v7}, Lﹶʽ/ˏי;->ˉˆ(IJ)Z

    move-result p1

    return p1

    :cond_e
    if-ne p3, p2, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    add-long/2addr p3, v6

    iget-object p1, v3, Lٴᴵ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iget-object v0, v4, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_5

    :cond_f
    move-wide v1, p3

    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v3, Lٴᴵ/ⁱˊ;->ʽ:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, v4, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    :cond_10
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_6
    return p2

    :cond_12
    :goto_7
    return v0
.end method

.method public final ˑﹳ(Lⁱי/ˉٴ;JLjava/util/List;Lar/tvplayer/core/domain/ʽﹳ;)V
    .locals 58

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p5

    iget-object v4, v0, Lـᵢ/ٴﹶ;->ˉʿ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object/from16 v4, p1

    iget-wide v5, v4, Lⁱי/ˉٴ;->ﹳٴ:J

    sub-long v7, v1, v5

    iget-object v4, v0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget-wide v9, v4, Lٴᴵ/ʽ;->ﹳٴ:J

    invoke-static {v9, v10}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v9

    iget-object v4, v0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget v11, v0, Lـᵢ/ٴﹶ;->ﾞʻ:I

    invoke-virtual {v4, v11}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v4

    iget-wide v11, v4, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    invoke-static {v11, v12}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v11

    add-long/2addr v11, v9

    add-long/2addr v11, v1

    const/4 v15, 0x0

    iget-object v9, v0, Lـᵢ/ٴﹶ;->ᵔᵢ:Lـᵢ/ᵔʾ;

    if-eqz v9, :cond_8

    iget-object v9, v9, Lـᵢ/ᵔʾ;->ˑﹳ:Lـᵢ/ˉˆ;

    iget-object v10, v9, Lـᵢ/ˉˆ;->ˊʻ:Lٴᴵ/ʽ;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v13, v9, Lـᵢ/ˉˆ;->ᴵˊ:Lـᵢ/ﾞᴵ;

    iget-boolean v14, v10, Lٴᴵ/ʽ;->ˈ:Z

    if-nez v14, :cond_1

    move-wide/from16 v18, v5

    move v4, v15

    goto :goto_1

    :cond_1
    iget-boolean v14, v9, Lـᵢ/ˉˆ;->ˉٴ:Z

    if-eqz v14, :cond_2

    move-wide/from16 v18, v5

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v5

    iget-wide v4, v10, Lٴᴵ/ʽ;->ᵔᵢ:J

    iget-object v6, v9, Lـᵢ/ˉˆ;->ᴵᵔ:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v11

    if-gez v5, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v13, Lـᵢ/ﾞᴵ;->ʾˋ:Lـᵢ/ᵔᵢ;

    iget-wide v10, v6, Lـᵢ/ᵔᵢ;->ٴﹳ:J

    cmp-long v12, v10, v16

    if-eqz v12, :cond_3

    cmp-long v10, v10, v4

    if-gez v10, :cond_4

    :cond_3
    iput-wide v4, v6, Lـᵢ/ᵔᵢ;->ٴﹳ:J

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    move v4, v15

    :goto_0
    if-eqz v4, :cond_7

    iget-boolean v5, v9, Lـᵢ/ˉˆ;->ٴᵢ:Z

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, v9, Lـᵢ/ˉˆ;->ˉٴ:Z

    iput-boolean v15, v9, Lـᵢ/ˉˆ;->ٴᵢ:Z

    iget-object v5, v13, Lـᵢ/ﾞᴵ;->ʾˋ:Lـᵢ/ᵔᵢ;

    iget-object v6, v5, Lـᵢ/ᵔᵢ;->ˏᵢ:Landroid/os/Handler;

    iget-object v9, v5, Lـᵢ/ᵔᵢ;->ᴵˑ:Lـᵢ/ʽ;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Lـᵢ/ᵔᵢ;->ˊʻ()V

    :cond_7
    :goto_1
    if-eqz v4, :cond_9

    :goto_2
    return-void

    :cond_8
    move-wide/from16 v18, v5

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :cond_9
    iget-wide v4, v0, Lـᵢ/ٴﹶ;->ﾞᴵ:J

    invoke-static {v4, v5}, Lᐧˎ/ʼʼ;->ʽʽ(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v13

    iget-object v4, v0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget-wide v5, v4, Lٴᴵ/ʽ;->ﹳٴ:J

    cmp-long v9, v5, v16

    if-nez v9, :cond_a

    move-wide/from16 v4, v16

    goto :goto_3

    :cond_a
    iget v9, v0, Lـᵢ/ٴﹶ;->ﾞʻ:I

    invoke-virtual {v4, v9}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v4

    iget-wide v9, v4, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    add-long/2addr v5, v9

    invoke-static {v5, v6}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v4

    sub-long v4, v13, v4

    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/16 v20, 0x0

    if-eqz v6, :cond_b

    move-object/from16 v11, p4

    move-object/from16 v21, v20

    const/4 v9, 0x1

    goto :goto_4

    :cond_b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    move-object/from16 v11, p4

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵢˋ/ﾞʻ;

    move-object/from16 v21, v6

    :goto_4
    iget-object v6, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v6}, Lﹶʽ/ˏי;->length()I

    move-result v6

    new-array v12, v6, [Lᵢˋ/ˉʿ;

    move v10, v15

    :goto_5
    iget-object v9, v0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    if-ge v10, v6, :cond_f

    aget-object v9, v9, v10

    move/from16 v22, v15

    iget-object v15, v9, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v15, Lـᵢ/ʼˎ;

    sget-object v23, Lᵢˋ/ˉʿ;->ـˆ:Lᵔﹶ/ˈٴ;

    if-nez v15, :cond_c

    aput-object v23, v12, v10

    move-wide/from16 v34, v4

    goto :goto_8

    :cond_c
    invoke-virtual {v9, v13, v14}, Lـᵢ/ˆʾ;->ˑﹳ(J)J

    move-result-wide v26

    invoke-virtual {v9, v13, v14}, Lـᵢ/ˆʾ;->ﾞᴵ(J)J

    move-result-wide v28

    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Lᵢˋ/ﾞʻ;->ﹳٴ()J

    move-result-wide v24

    move-wide/from16 v34, v4

    :goto_6
    move-wide/from16 v30, v24

    goto :goto_7

    :cond_d
    iget-object v15, v9, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v15, Lـᵢ/ʼˎ;

    invoke-static {v15}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    move-wide/from16 v34, v4

    iget-wide v4, v9, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-interface {v15, v1, v2, v4, v5}, Lـᵢ/ʼˎ;->ﹳٴ(JJ)J

    move-result-wide v4

    move-wide/from16 v24, v4

    iget-wide v4, v9, Lـᵢ/ˆʾ;->ʽ:J

    add-long v24, v24, v4

    invoke-static/range {v24 .. v29}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide v24

    goto :goto_6

    :goto_7
    cmp-long v4, v30, v26

    if-gez v4, :cond_e

    aput-object v23, v12, v10

    goto :goto_8

    :cond_e
    move-wide/from16 v32, v28

    invoke-virtual {v0, v10}, Lـᵢ/ٴﹶ;->ˆʾ(I)Lـᵢ/ˆʾ;

    move-result-object v29

    new-instance v28, Lˑˆ/ﹳٴ;

    invoke-direct/range {v28 .. v33}, Lˑˆ/ﹳٴ;-><init>(Lـᵢ/ˆʾ;JJ)V

    aput-object v28, v12, v10

    :goto_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v15, v22

    move-wide/from16 v4, v34

    goto :goto_5

    :cond_f
    move-wide/from16 v34, v4

    move/from16 v22, v15

    iget-object v4, v0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget-boolean v4, v4, Lٴᴵ/ʽ;->ˈ:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_10

    aget-object v4, v9, v22

    invoke-virtual {v4}, Lـᵢ/ˆʾ;->ᵎﹶ()J

    move-result-wide v23

    cmp-long v4, v23, v5

    if-nez v4, :cond_11

    :cond_10
    move-wide/from16 v25, v7

    move-wide v6, v5

    goto :goto_a

    :cond_11
    aget-object v4, v9, v22

    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ﾞᴵ(J)J

    move-result-wide v5

    aget-object v4, v9, v22

    invoke-virtual {v4, v5, v6}, Lـᵢ/ˆʾ;->ᵔᵢ(J)J

    move-result-wide v4

    iget-object v6, v0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget-wide v9, v6, Lٴᴵ/ʽ;->ﹳٴ:J

    cmp-long v15, v9, v16

    if-nez v15, :cond_12

    move-wide/from16 v25, v7

    move-wide/from16 v6, v16

    goto :goto_9

    :cond_12
    iget v15, v0, Lـᵢ/ٴﹶ;->ﾞʻ:I

    invoke-virtual {v6, v15}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v6

    move-wide/from16 v25, v7

    iget-wide v6, v6, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    add-long/2addr v9, v6

    invoke-static {v9, v10}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v6

    sub-long v6, v13, v6

    :goto_9
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    sub-long v4, v4, v18

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v9, v4

    goto :goto_b

    :goto_a
    move-wide/from16 v9, v16

    :goto_b
    iget-object v4, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    move-wide/from16 v23, v6

    move-wide/from16 v5, v18

    move-wide/from16 v7, v25

    move-wide/from16 v36, v34

    const/4 v15, 0x1

    invoke-interface/range {v4 .. v12}, Lﹶʽ/ˏי;->ٴﹶ(JJJLjava/util/List;[Lᵢˋ/ˉʿ;)V

    iget-object v4, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v4}, Lﹶʽ/ˏי;->ᵔʾ()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v0, v4}, Lـᵢ/ٴﹶ;->ˆʾ(I)Lـᵢ/ˆʾ;

    move-result-object v4

    iget-wide v5, v4, Lـᵢ/ˆʾ;->ⁱˊ:J

    iget-wide v7, v4, Lـᵢ/ˆʾ;->ʽ:J

    iget-object v9, v4, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v9, Lـᵢ/ʼˎ;

    iget-object v10, v4, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v10, Lٴᴵ/ⁱˊ;

    iget-object v11, v4, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v11, Lᵢˋ/ˈ;

    iget-object v12, v4, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v12, Lٴᴵ/ˉʿ;

    if-eqz v11, :cond_19

    move/from16 p1, v15

    iget-object v15, v11, Lᵢˋ/ˈ;->ᵎⁱ:[Lʽⁱ/ﹳᐧ;

    if-nez v15, :cond_13

    iget-object v15, v12, Lٴᴵ/ˉʿ;->ᴵᵔ:Lٴᴵ/ˆʾ;

    goto :goto_c

    :cond_13
    move-object/from16 v15, v20

    :goto_c
    if-nez v9, :cond_14

    invoke-virtual {v12}, Lٴᴵ/ˉʿ;->ˑﹳ()Lٴᴵ/ˆʾ;

    move-result-object v20

    :cond_14
    move-wide/from16 v18, v7

    move-object/from16 v7, v20

    if-nez v15, :cond_16

    if-eqz v7, :cond_15

    goto :goto_e

    :cond_15
    :goto_d
    move/from16 v7, v22

    goto :goto_10

    :cond_16
    :goto_e
    iget-object v1, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v1}, Lﹶʽ/ˏי;->ﾞʻ()Lʽⁱ/ﹳᐧ;

    move-result-object v26

    iget-object v1, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v1}, Lﹶʽ/ˏי;->ˉʿ()I

    move-result v27

    iget-object v1, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v1}, Lﹶʽ/ˏי;->ﹳᐧ()Ljava/lang/Object;

    move-result-object v28

    if-eqz v15, :cond_18

    iget-object v1, v10, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v15, v7, v1}, Lٴᴵ/ˆʾ;->ﹳٴ(Lٴᴵ/ˆʾ;Ljava/lang/String;)Lٴᴵ/ˆʾ;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_17
    move-object v15, v1

    goto :goto_f

    :cond_18
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v15, v7

    :goto_f
    iget-object v1, v10, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    move/from16 v7, v22

    invoke-static {v12, v1, v15, v7}, Lˈˊ/ˉˆ;->ʽ(Lٴᴵ/ˉʿ;Ljava/lang/String;Lٴᴵ/ˆʾ;I)Lـˊ/ᵔᵢ;

    move-result-object v25

    new-instance v23, Lᵢˋ/ٴﹶ;

    iget-object v1, v4, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object/from16 v29, v1

    check-cast v29, Lᵢˋ/ˈ;

    iget-object v1, v0, Lـᵢ/ٴﹶ;->ˑﹳ:Lـˊ/ﾞᴵ;

    move-object/from16 v24, v1

    invoke-direct/range {v23 .. v29}, Lᵢˋ/ٴﹶ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;Lᵢˋ/ˈ;)V

    move-object/from16 v1, v23

    iput-object v1, v3, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    return-void

    :cond_19
    move-wide/from16 v18, v7

    move/from16 p1, v15

    goto :goto_d

    :goto_10
    iget-object v8, v0, Lـᵢ/ٴﹶ;->ٴﹶ:Lٴᴵ/ʽ;

    iget-boolean v15, v8, Lٴᴵ/ʽ;->ˈ:Z

    if-eqz v15, :cond_1a

    iget v15, v0, Lـᵢ/ٴﹶ;->ﾞʻ:I

    iget-object v8, v8, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v15, v8, :cond_1a

    move/from16 v8, p1

    goto :goto_11

    :cond_1a
    move v8, v7

    :goto_11
    if-eqz v8, :cond_1c

    cmp-long v15, v5, v16

    if-eqz v15, :cond_1b

    goto :goto_12

    :cond_1b
    move v15, v7

    goto :goto_13

    :cond_1c
    :goto_12
    move/from16 v15, p1

    :goto_13
    invoke-virtual {v4}, Lـᵢ/ˆʾ;->ᵎﹶ()J

    move-result-wide v25

    cmp-long v20, v25, v23

    if-nez v20, :cond_1d

    iput-boolean v15, v3, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    return-void

    :cond_1d
    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ˑﹳ(J)J

    move-result-wide v24

    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ﾞᴵ(J)J

    move-result-wide v13

    if-eqz v8, :cond_1f

    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ᵔᵢ(J)J

    move-result-wide v22

    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v26

    sub-long v26, v22, v26

    add-long v26, v26, v22

    cmp-long v8, v26, v5

    if-ltz v8, :cond_1e

    move/from16 v8, p1

    goto :goto_14

    :cond_1e
    move v8, v7

    :goto_14
    and-int/2addr v15, v8

    :cond_1f
    if-eqz v21, :cond_20

    invoke-virtual/range {v21 .. v21}, Lᵢˋ/ﾞʻ;->ﹳٴ()J

    move-result-wide v20

    move-wide/from16 v26, v13

    :goto_15
    move-wide/from16 v13, v20

    goto :goto_16

    :cond_20
    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {v9, v1, v2, v5, v6}, Lـᵢ/ʼˎ;->ﹳٴ(JJ)J

    move-result-wide v20

    add-long v22, v20, v18

    move-wide/from16 v26, v13

    invoke-static/range {v22 .. v27}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide v20

    goto :goto_15

    :goto_16
    cmp-long v8, v13, v24

    if-gez v8, :cond_21

    new-instance v1, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v0, Lـᵢ/ٴﹶ;->ˉʿ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    return-void

    :cond_21
    cmp-long v8, v13, v26

    if-gtz v8, :cond_2d

    iget-boolean v7, v0, Lـᵢ/ٴﹶ;->ᵔʾ:Z

    if-eqz v7, :cond_22

    if-ltz v8, :cond_22

    goto/16 :goto_20

    :cond_22
    if-eqz v15, :cond_23

    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_23

    move/from16 v15, p1

    iput-boolean v15, v3, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    return-void

    :cond_23
    iget v7, v0, Lـᵢ/ٴﹶ;->ᵎﹶ:I

    int-to-long v7, v7

    sub-long v20, v26, v13

    const-wide/16 v23, 0x1

    add-long v1, v20, v23

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    cmp-long v2, v5, v16

    const/4 v15, 0x1

    if-eqz v2, :cond_24

    :goto_17
    if-le v1, v15, :cond_24

    int-to-long v7, v1

    add-long/2addr v7, v13

    sub-long v7, v7, v23

    invoke-virtual {v4, v7, v8}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_24

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_24
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_25

    move-wide/from16 v48, p2

    goto :goto_18

    :cond_25
    move-wide/from16 v48, v16

    :goto_18
    iget-object v7, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v7}, Lﹶʽ/ˏי;->ﾞʻ()Lʽⁱ/ﹳᐧ;

    move-result-object v41

    iget-object v7, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v7}, Lﹶʽ/ˏי;->ˉʿ()I

    move-result v42

    iget-object v7, v0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v7}, Lﹶʽ/ˏי;->ﹳᐧ()Ljava/lang/Object;

    move-result-object v43

    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v44

    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    sub-long v7, v13, v18

    invoke-interface {v9, v7, v8}, Lـᵢ/ʼˎ;->ʽﹳ(J)Lٴᴵ/ˆʾ;

    move-result-object v7

    iget-object v8, v0, Lـᵢ/ٴﹶ;->ˑﹳ:Lـˊ/ﾞᴵ;

    const/16 v20, 0x8

    if-nez v11, :cond_27

    invoke-virtual {v4, v13, v14}, Lـᵢ/ˆʾ;->ᵔᵢ(J)J

    move-result-wide v46

    move-wide/from16 v1, v36

    invoke-virtual {v4, v13, v14, v1, v2}, Lـᵢ/ˆʾ;->ˆʾ(JJ)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v15, 0x0

    goto :goto_19

    :cond_26
    move/from16 v15, v20

    :goto_19
    iget-object v1, v10, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v12, v1, v7, v15}, Lˈˊ/ˉˆ;->ʽ(Lٴᴵ/ˉʿ;Ljava/lang/String;Lٴᴵ/ˆʾ;I)Lـˊ/ᵔᵢ;

    move-result-object v40

    new-instance v38, Lᵢˋ/ᵔʾ;

    iget v1, v0, Lـᵢ/ٴﹶ;->ˈ:I

    move-object/from16 v51, v41

    move/from16 v50, v1

    move-object/from16 v39, v8

    move-wide/from16 v48, v13

    invoke-direct/range {v38 .. v51}, Lᵢˋ/ᵔʾ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;JJJILʽⁱ/ﹳᐧ;)V

    :goto_1a
    move-object/from16 v0, v38

    goto/16 :goto_1f

    :cond_27
    move-object/from16 v39, v8

    move-wide/from16 v52, v13

    move-wide/from16 v13, v36

    move-object/from16 v8, v41

    move-object v11, v7

    move v7, v15

    :goto_1b
    if-ge v15, v1, :cond_29

    move/from16 v21, v1

    int-to-long v0, v15

    add-long v0, v52, v0

    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    sub-long v0, v0, v18

    invoke-interface {v9, v0, v1}, Lـᵢ/ʼˎ;->ʽﹳ(J)Lٴᴵ/ˆʾ;

    move-result-object v0

    iget-object v1, v10, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Lٴᴵ/ˆʾ;->ﹳٴ(Lٴᴵ/ˆʾ;Ljava/lang/String;)Lٴᴵ/ˆʾ;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_1c

    :cond_28
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object v11, v0

    move/from16 v1, v21

    move-object/from16 v0, p0

    goto :goto_1b

    :cond_29
    :goto_1c
    int-to-long v0, v7

    add-long v0, v52, v0

    sub-long v0, v0, v23

    invoke-virtual {v4, v0, v1}, Lـᵢ/ˆʾ;->ᵔᵢ(J)J

    move-result-wide v46

    if-eqz v2, :cond_2a

    cmp-long v2, v5, v46

    if-gtz v2, :cond_2a

    move-wide/from16 v50, v5

    goto :goto_1d

    :cond_2a
    move-wide/from16 v50, v16

    :goto_1d
    invoke-virtual {v4, v0, v1, v13, v14}, Lـᵢ/ˆʾ;->ˆʾ(JJ)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v15, 0x0

    goto :goto_1e

    :cond_2b
    move/from16 v15, v20

    :goto_1e
    iget-object v0, v10, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v12, v0, v11, v15}, Lˈˊ/ˉˆ;->ʽ(Lٴᴵ/ˉʿ;Ljava/lang/String;Lٴᴵ/ˆʾ;I)Lـˊ/ᵔᵢ;

    move-result-object v40

    iget-wide v0, v12, Lٴᴵ/ˉʿ;->ʽʽ:J

    neg-long v0, v0

    iget-object v2, v8, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v2}, Lʽⁱ/ˉٴ;->ˉʿ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    add-long v0, v0, v44

    :cond_2c
    move-wide/from16 v55, v0

    new-instance v38, Lᵢˋ/ˆʾ;

    iget-object v0, v4, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lᵢˋ/ˈ;

    move/from16 v54, v7

    move-object/from16 v41, v8

    invoke-direct/range {v38 .. v57}, Lᵢˋ/ˆʾ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;JJJJJIJLᵢˋ/ˈ;)V

    goto :goto_1a

    :goto_1f
    iput-object v0, v3, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    return-void

    :cond_2d
    :goto_20
    iput-boolean v15, v3, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    return-void
.end method

.method public final ᵎﹶ(JLᵢˋ/ˑﹳ;Ljava/util/List;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ˉʿ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v0, p1, p2, p3, p4}, Lﹶʽ/ˏי;->ⁱˊ(JLᵢˋ/ˑﹳ;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final ᵔᵢ(Lᵢˋ/ˑﹳ;)V
    .locals 13

    .prologue
    instance-of v0, p1, Lᵢˋ/ٴﹶ;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lᵢˋ/ٴﹶ;

    iget-object v1, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    iget-object v0, v0, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {v1, v0}, Lﹶʽ/ˏי;->ʼᐧ(Lʽⁱ/ﹳᐧ;)I

    move-result v0

    iget-object v1, p0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    aget-object v2, v1, v0

    iget-object v3, v2, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Lـᵢ/ʼˎ;

    if-nez v3, :cond_1

    iget-object v3, v2, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v3, Lᵢˋ/ˈ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v3, v3, Lᵢˋ/ˈ;->ˉٴ:Lˊﾞ/ʾˋ;

    instance-of v4, v3, Lˊﾞ/ˆʾ;

    if-eqz v4, :cond_0

    check-cast v3, Lˊﾞ/ˆʾ;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    new-instance v12, Lʿʽ/ʽ;

    iget-object v4, v2, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Lٴᴵ/ˉʿ;

    iget-wide v4, v7, Lٴᴵ/ˉʿ;->ʽʽ:J

    const/4 v6, 0x6

    invoke-direct {v12, v3, v4, v5, v6}, Lʿʽ/ʽ;-><init>(Ljava/lang/Object;JI)V

    new-instance v4, Lـᵢ/ˆʾ;

    iget-wide v5, v2, Lـᵢ/ˆʾ;->ⁱˊ:J

    iget-object v3, v2, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Lٴᴵ/ⁱˊ;

    iget-object v3, v2, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lᵢˋ/ˈ;

    iget-wide v10, v2, Lـᵢ/ˆʾ;->ʽ:J

    invoke-direct/range {v4 .. v12}, Lـᵢ/ˆʾ;-><init>(JLٴᴵ/ˉʿ;Lٴᴵ/ⁱˊ;Lᵢˋ/ˈ;JLـᵢ/ʼˎ;)V

    aput-object v4, v1, v0

    :cond_1
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ᵔᵢ:Lـᵢ/ᵔʾ;

    if-eqz v0, :cond_4

    iget-wide v1, v0, Lـᵢ/ᵔʾ;->ˈ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    iget-wide v3, p1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_3

    :cond_2
    iget-wide v1, p1, Lᵢˋ/ˑﹳ;->ˉٴ:J

    iput-wide v1, v0, Lـᵢ/ᵔʾ;->ˈ:J

    :cond_3
    iget-object p1, v0, Lـᵢ/ᵔʾ;->ˑﹳ:Lـᵢ/ˉˆ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lـᵢ/ˉˆ;->ٴᵢ:Z

    :cond_4
    return-void
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 19

    .prologue
    move-wide/from16 v1, p1

    move-object/from16 v7, p0

    iget-object v0, v7, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    iget-object v6, v5, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v6, Lـᵢ/ʼˎ;

    iget-wide v8, v5, Lـᵢ/ˆʾ;->ʽ:J

    iget-object v10, v5, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v10, Lـᵢ/ʼˎ;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lـᵢ/ˆʾ;->ᵎﹶ()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v10}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-wide v3, v5, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-interface {v10, v1, v2, v3, v4}, Lـᵢ/ʼˎ;->ﹳٴ(JJ)J

    move-result-wide v3

    add-long/2addr v3, v8

    move-wide v13, v3

    invoke-virtual {v5, v13, v14}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const-wide/16 v15, -0x1

    cmp-long v0, v11, v15

    const-wide/16 v15, 0x1

    if-eqz v0, :cond_1

    invoke-static {v10}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {v10}, Lـᵢ/ʼˎ;->ʼʼ()J

    move-result-wide v17

    add-long v17, v17, v8

    add-long v17, v17, v11

    sub-long v17, v17, v15

    cmp-long v0, v13, v17

    if-gez v0, :cond_2

    :cond_1
    add-long v8, v13, v15

    invoke-virtual {v5, v8, v9}, Lـᵢ/ˆʾ;->ʼˎ(J)J

    move-result-wide v5

    :goto_1
    move-object/from16 v0, p3

    goto :goto_2

    :cond_2
    move-wide v5, v3

    goto :goto_1

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lⁱי/ᴵʼ;->ﹳٴ(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, p1

    goto :goto_0

    :cond_4
    return-wide p1
.end method

.method public final ﹳٴ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ʼˎ:[Lـᵢ/ˆʾ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v3, Lᵢˋ/ˈ;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lᵢˋ/ˈ;->ʾˋ:Lˊﾞ/ˉˆ;

    invoke-interface {v3}, Lˊﾞ/ˉˆ;->ﹳٴ()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ﾞᴵ(JLjava/util/List;)I
    .locals 2

    .prologue
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ˉʿ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v0}, Lﹶʽ/ˏי;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    invoke-interface {v0, p1, p2, p3}, Lﹶʽ/ˏי;->ᵎﹶ(JLjava/util/List;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
