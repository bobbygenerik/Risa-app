.class public final Lـᵢ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ʼˎ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lـᵢ/ᵔᵢ;


# direct methods
.method public synthetic constructor <init>(Lـᵢ/ᵔᵢ;I)V
    .locals 0

    iput p2, p0, Lـᵢ/ˈ;->ʾˋ:I

    iput-object p1, p0, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final synthetic ⁱˊ(Lᵔⁱ/ٴﹶ;JJI)V
    .locals 0

    return-void
.end method


# virtual methods
.method public ʼʼ(Lᵔⁱ/ٴﹶ;JJ)V
    .locals 19

    .prologue
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    iget v0, v1, Lـᵢ/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lᵔⁱ/ᵔﹳ;

    iget-object v6, v1, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    new-instance v7, Lﹳᵢ/ﹳᐧ;

    iget-wide v8, v0, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v8, v0, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v8, v8, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {v7, v4, v5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v4, v6, Lـᵢ/ᵔᵢ;->ˆﾞ:Lʻᴵ/יـ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v6, Lـᵢ/ᵔᵢ;->ˋᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v5, v0, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    invoke-virtual {v4, v7, v5}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->יـ(Lﹳᵢ/ﹳᐧ;I)V

    iget-object v0, v0, Lᵔⁱ/ᵔﹳ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v6, Lـᵢ/ᵔᵢ;->ʻˋ:J

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lـᵢ/ᵔᵢ;->ˈٴ(Z)V

    return-void

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lᵔⁱ/ᵔﹳ;

    iget-object v6, v1, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    new-instance v7, Lﹳᵢ/ﹳᐧ;

    iget-wide v8, v0, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v8, v0, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v8, v8, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {v7, v4, v5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v8, v6, Lـᵢ/ᵔᵢ;->ˆﾞ:Lʻᴵ/יـ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v6, Lـᵢ/ᵔᵢ;->ˋᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v9, v0, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->יـ(Lﹳᵢ/ﹳᐧ;I)V

    iget-object v7, v0, Lᵔⁱ/ᵔﹳ;->ˊʻ:Ljava/lang/Object;

    check-cast v7, Lٴᴵ/ʽ;

    iget-object v8, v6, Lـᵢ/ᵔᵢ;->ـﹶ:Lٴᴵ/ʽ;

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    iget-object v8, v8, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    invoke-virtual {v7, v9}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v10

    iget-wide v10, v10, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    move v12, v9

    :goto_1
    if-ge v12, v8, :cond_1

    iget-object v13, v6, Lـᵢ/ᵔᵢ;->ـﹶ:Lٴᴵ/ʽ;

    invoke-virtual {v13, v12}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v13

    iget-wide v13, v13, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    cmp-long v13, v13, v10

    if-gez v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v10, v7, Lٴᴵ/ʽ;->ˈ:Z

    if-eqz v10, :cond_6

    sub-int/2addr v8, v12

    iget-object v10, v7, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v8, v10, :cond_2

    const-string v2, "DashMediaSource"

    const-string v3, "Loaded out of sync manifest"

    invoke-static {v2, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1

    goto :goto_2

    :cond_2
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v13, v6, Lـᵢ/ᵔᵢ;->ٴﹳ:J

    cmp-long v8, v13, v15

    if-eqz v8, :cond_4

    move v8, v12

    const/16 p1, 0x1

    iget-wide v11, v7, Lٴᴵ/ʽ;->ᵔᵢ:J

    const-wide/16 v17, 0x3e8

    mul-long v11, v11, v17

    cmp-long v10, v11, v13

    if-gtz v10, :cond_5

    const-string v2, "DashMediaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loaded stale dynamic manifest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v7, Lٴᴵ/ʽ;->ᵔᵢ:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v6, Lـᵢ/ᵔᵢ;->ٴﹳ:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget v2, v6, Lـᵢ/ᵔᵢ;->ˑʼ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Lـᵢ/ᵔᵢ;->ˑʼ:I

    iget-object v3, v6, Lـᵢ/ᵔᵢ;->ˆﾞ:Lʻᴵ/יـ;

    iget v0, v0, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    invoke-virtual {v3, v0}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v0

    if-ge v2, v0, :cond_3

    iget v0, v6, Lـᵢ/ᵔᵢ;->ˑʼ:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v2, v0

    iget-object v0, v6, Lـᵢ/ᵔᵢ;->ˏᵢ:Landroid/os/Handler;

    iget-object v4, v6, Lـᵢ/ᵔᵢ;->ˈⁱ:Lـᵢ/ʽ;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/dash/DashManifestStaleException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/DashManifestStaleException;-><init>()V

    iput-object v0, v6, Lـᵢ/ᵔᵢ;->ᐧᴵ:Landroidx/media3/exoplayer/dash/DashManifestStaleException;

    goto/16 :goto_a

    :cond_4
    move v8, v12

    const/16 p1, 0x1

    :cond_5
    iput v9, v6, Lـᵢ/ᵔᵢ;->ˑʼ:I

    goto :goto_3

    :cond_6
    move v8, v12

    const/16 p1, 0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    iput-object v7, v6, Lـᵢ/ᵔᵢ;->ـﹶ:Lٴᴵ/ʽ;

    iget-boolean v9, v6, Lـᵢ/ᵔᵢ;->ˈˏ:Z

    iget-boolean v7, v7, Lٴᴵ/ʽ;->ˈ:Z

    and-int/2addr v7, v9

    iput-boolean v7, v6, Lـᵢ/ᵔᵢ;->ˈˏ:Z

    sub-long v4, v2, v4

    iput-wide v4, v6, Lـᵢ/ᵔᵢ;->ﹶᐧ:J

    iput-wide v2, v6, Lـᵢ/ᵔᵢ;->ﹳﹳ:J

    iget v2, v6, Lـᵢ/ᵔᵢ;->ᵎʻ:I

    add-int/2addr v2, v8

    iput v2, v6, Lـᵢ/ᵔᵢ;->ᵎʻ:I

    iget-object v2, v6, Lـᵢ/ᵔᵢ;->ـˏ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lᵔⁱ/ᵔﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iget-object v3, v3, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iget-object v4, v6, Lـᵢ/ᵔᵢ;->ʻᵎ:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v3, v6, Lـᵢ/ᵔᵢ;->ـﹶ:Lٴᴵ/ʽ;

    iget-object v3, v3, Lٴᴵ/ʽ;->ٴﹶ:Landroid/net/Uri;

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, v0, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-static {v0}, Lʼ/ᵎﹶ;->ᴵᵔ(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    :goto_4
    iput-object v3, v6, Lـᵢ/ᵔᵢ;->ʻᵎ:Landroid/net/Uri;

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v6, Lـᵢ/ᵔᵢ;->ـﹶ:Lٴᴵ/ʽ;

    iget-boolean v2, v0, Lٴᴵ/ʽ;->ˈ:Z

    if-eqz v2, :cond_12

    iget-wide v2, v6, Lـᵢ/ᵔᵢ;->ʻˋ:J

    cmp-long v2, v2, v15

    if-nez v2, :cond_12

    iget-object v0, v0, Lٴᴵ/ʽ;->ʼˎ:Lˈـ/ʾˋ;

    if-eqz v0, :cond_11

    iget-object v2, v0, Lˈـ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    const-string v3, "urn:mpeg:dash:utc:direct:2014"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_9

    :cond_9
    const-string v3, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "urn:mpeg:dash:utc:http-iso:2012"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_a
    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    const-string v0, "urn:mpeg:dash:utc:ntp:2014"

    invoke-static {v2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "urn:mpeg:dash:utc:ntp:2012"

    invoke-static {v2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unsupported UTC timing scheme"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lـᵢ/ᵔᵢ;->ʽʽ(Ljava/io/IOException;)V

    goto :goto_a

    :cond_d
    :goto_6
    invoke-virtual {v6}, Lـᵢ/ᵔᵢ;->ʾˋ()V

    goto :goto_a

    :cond_e
    :goto_7
    new-instance v2, Lـˎ/ˈ;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lـˎ/ˈ;-><init>(I)V

    invoke-virtual {v6, v0, v2}, Lـᵢ/ᵔᵢ;->ᴵᵔ(Lˈـ/ʾˋ;Lᵔⁱ/ʼᐧ;)V

    goto :goto_a

    :cond_f
    :goto_8
    new-instance v2, Lـᵢ/ᵎﹶ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v0, v2}, Lـᵢ/ᵔᵢ;->ᴵᵔ(Lˈـ/ʾˋ;Lᵔⁱ/ʼᐧ;)V

    goto :goto_a

    :cond_10
    :goto_9
    :try_start_1
    iget-object v0, v0, Lˈـ/ʾˋ;->ʽ:Ljava/lang/String;

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ˈⁱ(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, v6, Lـᵢ/ᵔᵢ;->ﹳﹳ:J

    sub-long/2addr v2, v4

    iput-wide v2, v6, Lـᵢ/ᵔᵢ;->ʻˋ:J

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lـᵢ/ᵔᵢ;->ˈٴ(Z)V
    :try_end_1
    .catch Landroidx/media3/common/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v6, v0}, Lـᵢ/ᵔᵢ;->ʽʽ(Ljava/io/IOException;)V

    goto :goto_a

    :cond_11
    invoke-virtual {v6}, Lـᵢ/ᵔᵢ;->ʾˋ()V

    goto :goto_a

    :cond_12
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lـᵢ/ᵔᵢ;->ˈٴ(Z)V

    :goto_a
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ʽﹳ(Lᵔⁱ/ٴﹶ;JJI)V
    .locals 13

    .prologue
    iget v0, p0, Lـᵢ/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    if-nez p6, :cond_0

    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-direct {v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(Lـˊ/ᵔᵢ;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    iget-object v1, v0, Lـᵢ/ᵔᵢ;->ˋᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v3, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾᵎ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ـˆ(Lᵔⁱ/ٴﹶ;JJLjava/io/IOException;I)Lʼˊ/ⁱˊ;
    .locals 4

    .prologue
    iget p2, p0, Lـᵢ/ˈ;->ʾˋ:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lᵔⁱ/ᵔﹳ;

    iget-object p2, p0, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    iget-object p3, p2, Lـᵢ/ᵔᵢ;->ˋᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance p7, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v0, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v0, v0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {p7, p4, p5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget p1, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    const/4 p4, 0x1

    invoke-virtual {p3, p7, p1, p6, p4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʻٴ(Lﹳᵢ/ﹳᐧ;ILjava/io/IOException;Z)V

    iget-object p1, p2, Lـᵢ/ᵔᵢ;->ˆﾞ:Lʻᴵ/יـ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p6}, Lـᵢ/ᵔᵢ;->ʽʽ(Ljava/io/IOException;)V

    sget-object p1, Lᵔⁱ/ˉʿ;->ᴵᵔ:Lʼˊ/ⁱˊ;

    return-object p1

    :pswitch_0
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance p2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object p3, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p3, p3, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {p2, p4, p5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget p1, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    new-instance p3, Lʼٴ/ʾᵎ;

    const/16 p4, 0xb

    invoke-direct {p3, p7, p4, p6}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    iget-object p4, p0, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    iget-object p5, p4, Lـᵢ/ᵔᵢ;->ˆﾞ:Lʻᴵ/יـ;

    invoke-virtual {p5, p3}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    sget-object p3, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    goto :goto_0

    :cond_0
    new-instance p3, Lʼˊ/ⁱˊ;

    const/4 p5, 0x0

    const/4 p7, 0x0

    invoke-direct {p3, v0, v1, p5, p7}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    :goto_0
    invoke-virtual {p3}, Lʼˊ/ⁱˊ;->ﹳٴ()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    iget-object p4, p4, Lـᵢ/ᵔᵢ;->ˋᵔ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p4, p2, p1, p6, p5}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʻٴ(Lﹳᵢ/ﹳᐧ;ILjava/io/IOException;Z)V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ᵎﹶ(Lᵔⁱ/ٴﹶ;JJZ)V
    .locals 0

    .prologue
    iget p2, p0, Lـᵢ/ˈ;->ʾˋ:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lᵔⁱ/ᵔﹳ;

    iget-object p2, p0, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    invoke-virtual {p2, p1, p4, p5}, Lـᵢ/ᵔᵢ;->ᴵˊ(Lᵔⁱ/ᵔﹳ;J)V

    return-void

    :pswitch_0
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    iget-object p2, p0, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    invoke-virtual {p2, p1, p4, p5}, Lـᵢ/ᵔᵢ;->ᴵˊ(Lᵔⁱ/ᵔﹳ;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lـᵢ/ˈ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    sget-object v1, Lٴʿ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lٴʿ/ⁱˊ;->ʽ:Z

    if-eqz v2, :cond_0

    sget-wide v2, Lٴʿ/ⁱˊ;->ˈ:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v2, v0, Lـᵢ/ᵔᵢ;->ʻˋ:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lـᵢ/ᵔᵢ;->ˈٴ(Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
