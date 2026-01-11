.class public final Lﹶˎ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ˉـ;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:I

.field public final ᴵˊ:Lﹶˎ/ˉˆ;


# direct methods
.method public constructor <init>(Lﹶˎ/ˉˆ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˎ/ٴﹶ;->ᴵˊ:Lﹶˎ/ˉˆ;

    iput p2, p0, Lﹶˎ/ٴﹶ;->ʾˋ:I

    const/4 p1, -0x1

    iput p1, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    .prologue
    iget v0, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    const/4 v1, -0x2

    iget-object v2, p0, Lﹶˎ/ٴﹶ;->ᴵˊ:Lﹶˎ/ˉˆ;

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Lﹶˎ/ˉˆ;->ˊʻ()V

    return-void

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Lﹶˎ/ˉˆ;->ˊʻ()V

    iget-object v1, v2, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lﹳᵢ/ᴵˑ;->ᵢˏ()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/hls/SampleQueueMappingException;

    invoke-virtual {v2}, Lﹶˎ/ˉˆ;->ﹳٴ()V

    iget-object v1, v2, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    iget v2, p0, Lﹶˎ/ٴﹶ;->ʾˋ:I

    invoke-virtual {v1, v2}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v1, v1, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v1, v1, v2

    iget-object v1, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v2, "Unable to bind a sample queue to TrackGroup with MIME type "

    const-string v3, "."

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˈ()Z
    .locals 2

    .prologue
    iget v0, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lʻᴵ/ﾞᴵ;->ⁱˊ(I)V

    const/4 v1, -0x4

    return v1

    :cond_0
    invoke-virtual {v0}, Lﹶˎ/ٴﹶ;->ˈ()Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, v0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    iget-object v5, v0, Lﹶˎ/ٴﹶ;->ᴵˊ:Lﹶˎ/ˉˆ;

    iget-object v6, v5, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lﹶˎ/ᵔᵢ;

    iget v9, v9, Lﹶˎ/ᵔᵢ;->ᵎˊ:I

    iget-object v10, v5, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v10, v10

    move v11, v8

    :goto_1
    if-ge v11, v10, :cond_3

    iget-object v12, v5, Lﹶˎ/ˉˆ;->ٴﹳ:[Z

    aget-boolean v12, v12, v11

    if-eqz v12, :cond_2

    iget-object v12, v5, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lﹳᵢ/ᴵˑ;->ᴵˊ()J

    move-result-wide v12

    int-to-long v14, v9

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-static {v6, v8, v7}, Lᐧˎ/ʼʼ;->ˉـ(Ljava/util/ArrayList;II)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶˎ/ᵔᵢ;

    iget-object v11, v7, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v9, v5, Lﹶˎ/ˉˆ;->ˊᵔ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v11, v9}, Lʽⁱ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v5, Lﹶˎ/ˉˆ;->ᵎˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v10, v5, Lﹶˎ/ˉˆ;->ᴵˊ:I

    iget v12, v7, Lᵢˋ/ˑﹳ;->ᴵᵔ:I

    iget-object v13, v7, Lᵢˋ/ˑﹳ;->ˊʻ:Ljava/lang/Object;

    iget-wide v14, v7, Lᵢˋ/ˑﹳ;->ٴᵢ:J

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ٴﹶ(ILʽⁱ/ﹳᐧ;ILjava/lang/Object;J)V

    :cond_5
    iput-object v11, v5, Lﹶˎ/ˉˆ;->ˊᵔ:Lʽⁱ/ﹳᐧ;

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶˎ/ᵔᵢ;

    invoke-virtual {v7}, Lﹶˎ/ᵔᵢ;->ᵎﹶ()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v5, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v4, v4, v3

    iget-boolean v7, v5, Lﹶˎ/ˉˆ;->ʾˊ:Z

    move/from16 v9, p3

    invoke-virtual {v4, v1, v2, v9, v7}, Lﹳᵢ/ᴵˑ;->ʽʽ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;IZ)I

    move-result v2

    const/4 v4, -0x5

    if-ne v2, v4, :cond_b

    iget-object v4, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lʽⁱ/ﹳᐧ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v5, Lﹶˎ/ˉˆ;->ᐧﾞ:I

    if-ne v3, v7, :cond_a

    iget-object v7, v5, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ᴵˊ()J

    move-result-wide v9

    invoke-static {v9, v10}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v3

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶˎ/ᵔᵢ;

    iget v7, v7, Lﹶˎ/ᵔᵢ;->ᵎˊ:I

    if-eq v7, v3, :cond_8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_9

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹶˎ/ᵔᵢ;

    iget-object v3, v3, Lᵢˋ/ˑﹳ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    goto :goto_4

    :cond_9
    iget-object v3, v5, Lﹶˎ/ˉˆ;->ʻᵎ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    invoke-virtual {v4, v3}, Lʽⁱ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;)Lʽⁱ/ﹳᐧ;

    move-result-object v4

    :cond_a
    iput-object v4, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    :cond_b
    return v2

    :cond_c
    :goto_5
    return v4
.end method

.method public final ᵔﹳ(J)I
    .locals 4

    .prologue
    invoke-virtual {p0}, Lﹶˎ/ٴﹶ;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    iget-object v1, p0, Lﹶˎ/ٴﹶ;->ᴵˊ:Lﹶˎ/ˉˆ;

    invoke-virtual {v1}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v1, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v2, v2, v0

    iget-boolean v3, v1, Lﹶˎ/ˉˆ;->ʾˊ:Z

    invoke-virtual {v2, v3, p1, p2}, Lﹳᵢ/ᴵˑ;->ʻٴ(ZJ)I

    move-result p1

    iget-object p2, v1, Lﹶˎ/ˉˆ;->ᵔٴ:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move-object p2, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Lﹶˎ/ᵔᵢ;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lﹶˎ/ᵔᵢ;->ᵎﹶ()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v1

    invoke-virtual {p2, v0}, Lﹶˎ/ᵔᵢ;->ﾞᴵ(I)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_5
    invoke-virtual {v2, p1}, Lﹳᵢ/ᴵˑ;->ᵎⁱ(I)V

    return p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ⁱˊ()V
    .locals 6

    .prologue
    iget v0, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget-object v0, p0, Lﹶˎ/ٴﹶ;->ᴵˊ:Lﹶˎ/ˉˆ;

    invoke-virtual {v0}, Lﹶˎ/ˉˆ;->ﹳٴ()V

    iget-object v3, v0, Lﹶˎ/ˉˆ;->ﹳﹳ:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lﹶˎ/ˉˆ;->ﹳﹳ:[I

    iget v4, p0, Lﹶˎ/ٴﹶ;->ʾˋ:I

    aget v3, v3, v4

    const/4 v5, -0x2

    if-ne v3, v2, :cond_2

    iget-object v1, v0, Lﹶˎ/ˉˆ;->ﹶᐧ:Ljava/util/Set;

    iget-object v0, v0, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    invoke-virtual {v0, v4}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, -0x3

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v5

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lﹶˎ/ˉˆ;->ٴﹳ:[Z

    aget-boolean v2, v0, v3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    aput-boolean v1, v0, v3

    :goto_2
    iput v3, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 3

    .prologue
    iget v0, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lﹶˎ/ٴﹶ;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lﹶˎ/ٴﹶ;->ʽʽ:I

    iget-object v1, p0, Lﹶˎ/ٴﹶ;->ᴵˊ:Lﹶˎ/ˉˆ;

    invoke-virtual {v1}, Lﹶˎ/ˉˆ;->ˈٴ()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    aget-object v0, v2, v0

    iget-boolean v1, v1, Lﹶˎ/ˉˆ;->ʾˊ:Z

    invoke-virtual {v0, v1}, Lﹳᵢ/ᴵˑ;->ʾᵎ(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
