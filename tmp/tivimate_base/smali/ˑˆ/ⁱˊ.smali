.class public final Lˑˆ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵢˋ/ʼˎ;


# instance fields
.field public final ʽ:[Lᵢˋ/ˈ;

.field public final ˈ:Lـˊ/ﾞᴵ;

.field public ˑﹳ:Lﹶʽ/ˏי;

.field public ᵎﹶ:I

.field public ᵔᵢ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

.field public final ⁱˊ:I

.field public final ﹳٴ:Lᵔⁱ/ˉˆ;

.field public ﾞᴵ:Lˎˉ/ʽ;


# direct methods
.method public constructor <init>(Lᵔⁱ/ˉˆ;Lˎˉ/ʽ;ILﹶʽ/ˏי;Lـˊ/ﾞᴵ;Lˋⁱ/ﾞᴵ;Z)V
    .locals 24

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Lˑˆ/ⁱˊ;->ﹳٴ:Lᵔⁱ/ˉˆ;

    iput-object v1, v0, Lˑˆ/ⁱˊ;->ﾞᴵ:Lˎˉ/ʽ;

    iput v2, v0, Lˑˆ/ⁱˊ;->ⁱˊ:I

    iput-object v3, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    move-object/from16 v4, p5

    iput-object v4, v0, Lˑˆ/ⁱˊ;->ˈ:Lـˊ/ﾞᴵ;

    iget-object v4, v1, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    aget-object v2, v4, v2

    invoke-interface {v3}, Lﹶʽ/ˏי;->length()I

    move-result v4

    new-array v4, v4, [Lᵢˋ/ˈ;

    iput-object v4, v0, Lˑˆ/ⁱˊ;->ʽ:[Lᵢˋ/ˈ;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lˑˆ/ⁱˊ;->ʽ:[Lᵢˋ/ˈ;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    invoke-interface {v3, v5}, Lﹶʽ/ˏי;->ﾞᴵ(I)I

    move-result v8

    iget-object v6, v2, Lˎˉ/ⁱˊ;->ˆʾ:[Lʽⁱ/ﹳᐧ;

    aget-object v6, v6, v8

    iget-object v7, v6, Lʽⁱ/ﹳᐧ;->ﹳᐧ:Lʽⁱ/ᵔʾ;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lˎˉ/ʽ;->ˑﹳ:Lˎˉ/ﹳٴ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lˎˉ/ﹳٴ;->ʽ:[Lʻˆ/ʽﹳ;

    :goto_1
    move-object/from16 v20, v7

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :goto_2
    iget v9, v2, Lˎˉ/ⁱˊ;->ﹳٴ:I

    const/4 v7, 0x2

    if-ne v9, v7, :cond_1

    const/4 v7, 0x4

    move/from16 v21, v7

    goto :goto_3

    :cond_1
    move/from16 v21, v4

    :goto_3
    new-instance v14, Lʻˆ/ˏי;

    iget-wide v10, v2, Lˎˉ/ⁱˊ;->ʽ:J

    move-object v7, v14

    iget-wide v14, v1, Lˎˉ/ʽ;->ᵎﹶ:J

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    move-wide/from16 v16, v14

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v23}, Lʻˆ/ˏי;-><init>(IIJJJJLʽⁱ/ﹳᐧ;I[Lʻˆ/ʽﹳ;I[J[J)V

    if-nez p7, :cond_2

    const/16 v8, 0x23

    :goto_4
    move v12, v8

    goto :goto_5

    :cond_2
    const/4 v8, 0x3

    goto :goto_4

    :goto_5
    new-instance v10, Lʻˆ/ˉʿ;

    sget-object v15, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p6

    move-object v14, v7

    invoke-direct/range {v10 .. v16}, Lʻˆ/ˉʿ;-><init>(Lʽᐧ/ˆʾ;ILᐧˎ/ـˆ;Lʻˆ/ˏי;Ljava/util/List;Lـᵢ/ᵔʾ;)V

    iget-object v7, v0, Lˑˆ/ⁱˊ;->ʽ:[Lᵢˋ/ˈ;

    new-instance v8, Lᵢˋ/ˈ;

    iget v9, v2, Lˎˉ/ⁱˊ;->ﹳٴ:I

    invoke-direct {v8, v10, v9, v6}, Lᵢˋ/ˈ;-><init>(Lˊﾞ/ˉˆ;ILʽⁱ/ﹳᐧ;)V

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ᵔᵢ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˑˆ/ⁱˊ;->ﹳٴ:Lᵔⁱ/ˉˆ;

    invoke-interface {v0}, Lᵔⁱ/ˉˆ;->ʽ()V

    return-void

    :cond_0
    throw v0
.end method

.method public final ˈ(Lᵢˋ/ˑﹳ;ZLʼٴ/ʾᵎ;Lʻᴵ/יـ;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ⁱˊ(Lﹶʽ/ˏי;)Lᵔⁱ/ᵔᵢ;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p3}, Lʻᴵ/יـ;->ﹳٴ(Lᵔⁱ/ᵔᵢ;Lʼٴ/ʾᵎ;)Lʼˊ/ⁱˊ;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget p2, p3, Lʼˊ/ⁱˊ;->ʾˋ:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    iget-object p2, p0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    iget-object p1, p1, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p2, p1}, Lﹶʽ/ˏי;->ʼᐧ(Lʽⁱ/ﹳᐧ;)I

    move-result p1

    iget-wide p3, p3, Lʼˊ/ⁱˊ;->ᴵˊ:J

    invoke-interface {p2, p1, p3, p4}, Lﹶʽ/ˏי;->ˉˆ(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˑﹳ(Lⁱי/ˉٴ;JLjava/util/List;Lar/tvplayer/core/domain/ʽﹳ;)V
    .locals 43

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p5

    iget-object v4, v0, Lˑˆ/ⁱˊ;->ᵔᵢ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lˑˆ/ⁱˊ;->ﾞᴵ:Lˎˉ/ʽ;

    iget-object v5, v4, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    iget v6, v0, Lˑˆ/ⁱˊ;->ⁱˊ:I

    aget-object v5, v5, v6

    iget v7, v5, Lˎˉ/ⁱˊ;->ٴﹶ:I

    iget-object v8, v5, Lˎˉ/ⁱˊ;->ˉˆ:[J

    const/4 v9, 0x1

    if-nez v7, :cond_1

    iget-boolean v1, v4, Lˎˉ/ʽ;->ˈ:Z

    xor-int/2addr v1, v9

    iput-boolean v1, v3, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    return-void

    :cond_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v8, v1, v2, v9}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result v4

    move-object/from16 v7, p4

    goto :goto_0

    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v7, p4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵢˋ/ﾞʻ;

    invoke-virtual {v4}, Lᵢˋ/ﾞʻ;->ﹳٴ()J

    move-result-wide v10

    iget v4, v0, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    int-to-long v12, v4

    sub-long/2addr v10, v12

    long-to-int v4, v10

    if-gez v4, :cond_3

    new-instance v1, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v0, Lˑˆ/ⁱˊ;->ᵔᵢ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    return-void

    :cond_3
    :goto_0
    iget v10, v5, Lˎˉ/ⁱˊ;->ٴﹶ:I

    if-lt v4, v10, :cond_4

    iget-object v1, v0, Lˑˆ/ⁱˊ;->ﾞᴵ:Lˎˉ/ʽ;

    iget-boolean v1, v1, Lˎˉ/ʽ;->ˈ:Z

    xor-int/2addr v1, v9

    iput-boolean v1, v3, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    return-void

    :cond_4
    move-object/from16 v10, p1

    iget-wide v11, v10, Lⁱי/ˉٴ;->ﹳٴ:J

    sub-long v13, v1, v11

    iget-object v10, v0, Lˑˆ/ⁱˊ;->ﾞᴵ:Lˎˉ/ʽ;

    iget-boolean v15, v10, Lˎˉ/ʽ;->ˈ:Z

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v15, :cond_5

    move-wide/from16 v15, v19

    goto :goto_1

    :cond_5
    iget-object v10, v10, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    aget-object v6, v10, v6

    iget v10, v6, Lˎˉ/ⁱˊ;->ٴﹶ:I

    sub-int/2addr v10, v9

    iget-object v15, v6, Lˎˉ/ⁱˊ;->ˉˆ:[J

    aget-wide v16, v15, v10

    invoke-virtual {v6, v10}, Lˎˉ/ⁱˊ;->ⁱˊ(I)J

    move-result-wide v21

    add-long v21, v21, v16

    sub-long v21, v21, v11

    move-wide/from16 v15, v21

    :goto_1
    iget-object v6, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v6}, Lﹶʽ/ˏי;->length()I

    move-result v6

    new-array v10, v6, [Lᵢˋ/ˉʿ;

    const/16 v21, 0x0

    move/from16 v9, v21

    :goto_2
    if-ge v9, v6, :cond_6

    iget-object v1, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v1, v9}, Lﹶʽ/ˏי;->ﾞᴵ(I)I

    new-instance v1, Lˑˆ/ﹳٴ;

    invoke-direct {v1, v5, v4}, Lˑˆ/ﹳٴ;-><init>(Lˎˉ/ⁱˊ;I)V

    aput-object v1, v10, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v1, p2

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object v10, v1

    invoke-interface/range {v10 .. v18}, Lﹶʽ/ˏי;->ٴﹶ(JJJLjava/util/List;[Lᵢˋ/ˉʿ;)V

    aget-wide v29, v8, v4

    invoke-virtual {v5, v4}, Lˎˉ/ⁱˊ;->ⁱˊ(I)J

    move-result-wide v1

    add-long v31, v1, v29

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    move-wide/from16 v33, p2

    goto :goto_3

    :cond_7
    move-wide/from16 v33, v19

    :goto_3
    iget v1, v0, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    add-int/2addr v1, v4

    iget-object v2, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v2}, Lﹶʽ/ˏי;->ᵔʾ()I

    move-result v2

    iget-object v6, v0, Lˑˆ/ⁱˊ;->ʽ:[Lᵢˋ/ˈ;

    aget-object v42, v6, v2

    iget-object v6, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v6, v2}, Lﹶʽ/ˏי;->ﾞᴵ(I)I

    move-result v2

    iget-object v6, v5, Lˎˉ/ⁱˊ;->ᵔʾ:Ljava/util/List;

    iget-object v7, v5, Lˎˉ/ⁱˊ;->ˆʾ:[Lʽⁱ/ﹳᐧ;

    if-eqz v7, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    move/from16 v8, v21

    :goto_4
    invoke-static {v8}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    if-eqz v6, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    move/from16 v8, v21

    :goto_5
    invoke-static {v8}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_a

    const/4 v9, 0x1

    goto :goto_6

    :cond_a
    move/from16 v9, v21

    :goto_6
    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    aget-object v2, v7, v2

    iget v2, v2, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Lˎˉ/ⁱˊ;->ˉʿ:Ljava/lang/String;

    const-string v7, "{bitrate}"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "{Bitrate}"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "{start time}"

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "{start_time}"

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v5, Lˎˉ/ⁱˊ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v4, v2}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v2}, Lﹶʽ/ˏי;->ﾞʻ()Lʽⁱ/ﹳᐧ;

    move-result-object v26

    iget-object v2, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v2}, Lﹶʽ/ˏי;->ˉʿ()I

    move-result v27

    iget-object v2, v0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v2}, Lﹶʽ/ˏי;->ﹳᐧ()Ljava/lang/Object;

    move-result-object v28

    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v2, "The uri must be set."

    invoke-static {v6, v2}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lـˊ/ᵔᵢ;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v15}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    new-instance v23, Lᵢˋ/ˆʾ;

    int-to-long v1, v1

    const/16 v39, 0x1

    iget-object v4, v0, Lˑˆ/ⁱˊ;->ˈ:Lـˊ/ﾞᴵ;

    const-wide v35, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v40, v29

    move-wide/from16 v37, v1

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    invoke-direct/range {v23 .. v42}, Lᵢˋ/ˆʾ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;Lʽⁱ/ﹳᐧ;ILjava/lang/Object;JJJJJIJLᵢˋ/ˈ;)V

    move-object/from16 v1, v23

    iput-object v1, v3, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public final ᵎﹶ(JLᵢˋ/ˑﹳ;Ljava/util/List;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ᵔᵢ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v0, p1, p2, p3, p4}, Lﹶʽ/ˏי;->ⁱˊ(JLᵢˋ/ˑﹳ;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final ᵔᵢ(Lᵢˋ/ˑﹳ;)V
    .locals 0

    return-void
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 11

    .prologue
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ﾞᴵ:Lˎˉ/ʽ;

    iget-object v0, v0, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    iget v1, p0, Lˑˆ/ⁱˊ;->ⁱˊ:I

    aget-object v0, v0, v1

    iget-object v1, v0, Lˎˉ/ⁱˊ;->ˉˆ:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result v1

    iget-object v3, v0, Lˎˉ/ⁱˊ;->ˉˆ:[J

    aget-wide v7, v3, v1

    cmp-long v4, v7, p1

    if-gez v4, :cond_0

    iget v0, v0, Lˎˉ/ⁱˊ;->ٴﹶ:I

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    add-int/2addr v1, v2

    aget-wide v0, v3, v1

    move-wide v9, v0

    :goto_0
    move-wide v5, p1

    move-object v4, p3

    goto :goto_1

    :cond_0
    move-wide v9, v7

    goto :goto_0

    :goto_1
    invoke-virtual/range {v4 .. v10}, Lⁱי/ᴵʼ;->ﹳٴ(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ﹳٴ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ʽ:[Lᵢˋ/ˈ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Lᵢˋ/ˈ;->ʾˋ:Lˊﾞ/ˉˆ;

    invoke-interface {v3}, Lˊﾞ/ˉˆ;->ﹳٴ()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(JLjava/util/List;)I
    .locals 2

    .prologue
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ᵔᵢ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v0}, Lﹶʽ/ˏי;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˑˆ/ⁱˊ;->ˑﹳ:Lﹶʽ/ˏי;

    invoke-interface {v0, p1, p2, p3}, Lﹶʽ/ˏי;->ᵎﹶ(JLjava/util/List;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
