.class public final Lﹶﾞ/ˊˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:Ljava/lang/String;

.field public final synthetic ʾˋ:I

.field public final ˈٴ:Ljava/lang/Object;

.field public final ˊʻ:Ljava/lang/Object;

.field public final ٴᵢ:Ljava/lang/Object;

.field public final ᴵˊ:I

.field public final ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lﹶﾞ/ᴵˑ;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹶﾞ/ˊˋ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p2, p0, Lﹶﾞ/ˊˋ;->ˈٴ:Ljava/lang/Object;

    iput p3, p0, Lﹶﾞ/ˊˋ;->ᴵˊ:I

    iput-object p4, p0, Lﹶﾞ/ˊˋ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p5, p0, Lﹶﾞ/ˊˋ;->ˊʻ:Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˊˋ;->ʽʽ:Ljava/lang/String;

    iput-object p6, p0, Lﹶﾞ/ˊˋ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ﹳـ;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹶﾞ/ˊˋ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lﹶﾞ/ˊˋ;->ᴵˊ:I

    iput-object p3, p0, Lﹶﾞ/ˊˋ;->ʽʽ:Ljava/lang/String;

    iput-object p4, p0, Lﹶﾞ/ˊˋ;->ˈٴ:Ljava/lang/Object;

    iput-object p5, p0, Lﹶﾞ/ˊˋ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p6, p0, Lﹶﾞ/ˊˋ;->ˊʻ:Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˊˋ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    iget v0, p0, Lﹶﾞ/ˊˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ˊˋ;->ˈٴ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lﹶﾞ/ᴵˑ;

    iget-object v2, p0, Lﹶﾞ/ˊˋ;->ʽʽ:Ljava/lang/String;

    iget v3, p0, Lﹶﾞ/ˊˋ;->ᴵˊ:I

    iget-object v0, p0, Lﹶﾞ/ˊˋ;->ᴵᵔ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    iget-object v0, p0, Lﹶﾞ/ˊˋ;->ˊʻ:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    iget-object v0, p0, Lﹶﾞ/ˊˋ;->ٴᵢ:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-interface/range {v1 .. v6}, Lﹶﾞ/ᴵˑ;->ⁱˊ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˊˋ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ﹳـ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-boolean v2, v1, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    if-eqz v2, :cond_c

    iget-char v2, v0, Lﹶﾞ/ﹳـ;->ʽʽ:C

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v5, v2, Lﹶﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Boolean;

    if-nez v5, :cond_3

    monitor-enter v2

    :try_start_0
    iget-object v5, v2, Lﹶﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Boolean;

    if-nez v5, :cond_2

    iget-object v5, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    iget-object v6, v5, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-static {}, Lᵎᴵ/ʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_1

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v2, Lﹶﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Boolean;

    :cond_1
    iget-object v6, v2, Lﹶﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Boolean;

    if-nez v6, :cond_2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v2, Lﹶﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Boolean;

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v6, "My process not in the list of running processes"

    invoke-virtual {v5, v6}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_2
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-object v2, v2, Lﹶﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x43

    iput-char v2, v0, Lﹶﾞ/ﹳـ;->ʽʽ:C

    goto :goto_3

    :cond_4
    const/16 v2, 0x63

    iput-char v2, v0, Lﹶﾞ/ﹳـ;->ʽʽ:C

    :cond_5
    :goto_3
    iget-wide v5, v0, Lﹶﾞ/ﹳـ;->ˈٴ:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_6

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v2}, Lﹶﾞ/ᵎﹶ;->יˉ()V

    const-wide/32 v5, 0x2078d

    iput-wide v5, v0, Lﹶﾞ/ﹳـ;->ˈٴ:J

    :cond_6
    iget v2, p0, Lﹶﾞ/ˊˋ;->ᴵˊ:I

    iget-char v5, v0, Lﹶﾞ/ﹳـ;->ʽʽ:C

    iget-wide v9, v0, Lﹶﾞ/ﹳـ;->ˈٴ:J

    iget-object v0, p0, Lﹶﾞ/ˊˋ;->ʽʽ:Ljava/lang/String;

    iget-object v6, p0, Lﹶﾞ/ˊˋ;->ˈٴ:Ljava/lang/Object;

    iget-object v11, p0, Lﹶﾞ/ˊˋ;->ᴵᵔ:Ljava/lang/Object;

    iget-object v12, p0, Lﹶﾞ/ˊˋ;->ˊʻ:Ljava/lang/Object;

    const-string v13, "01VDIWEA?"

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v4, v0, v6, v11, v12}, Lﹶﾞ/ﹳـ;->ﹳᵢ(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v11, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v11, v12, v13, v4}, Lʼﾞ/ˊˋ;->ﾞʻ(IIII)I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/2addr v4, v11

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "2"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x400

    if-le v4, v5, :cond_7

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_7
    iget-object v0, v1, Lﹶﾞ/ᐧᴵ;->ᴵᵔ:Lʾⁱ/ˈ;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lʾⁱ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lʾⁱ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᐧᴵ;

    invoke-virtual {v3}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v4, v0, Lʾⁱ/ˈ;->ˊʻ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᐧᴵ;

    invoke-virtual {v4}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, v0, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-nez v4, :cond_8

    invoke-virtual {v0}, Lʾⁱ/ˈ;->ﾞᴵ()V

    :cond_8
    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    invoke-virtual {v3}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v0, v0, Lʾⁱ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v7

    const-wide/16 v7, 0x1

    if-gtz v6, :cond_a

    invoke-virtual {v3}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_a
    iget-object v6, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lﹶﾞ/ᵎʻ;

    iget-object v6, v6, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v6}, Lﹶﾞ/ᵢﹳ;->ʿˎ()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v9, v11

    add-long/2addr v4, v7

    div-long/2addr v11, v4

    invoke-virtual {v3}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    cmp-long v6, v9, v11

    if-gez v6, :cond_b

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_b
    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ˎˉ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Persisted config not initialized. Not logging error/warn"

    const/4 v2, 0x6

    nop

    :cond_d
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
