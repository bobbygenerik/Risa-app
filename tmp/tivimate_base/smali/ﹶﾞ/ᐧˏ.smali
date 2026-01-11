.class public final Lﹶﾞ/ᐧˏ;
.super Lﹶﾞ/ˏʻ;
.source "SourceFile"


# direct methods
.method public static final ˋˊ(Ljava/lang/String;)Z
    .locals 5

    .prologue
    sget-object v0, Lﹶﾞ/ᴵᵔ;->ˏי:Lﹶﾞ/ˈٴ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public final ʽˑ(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v0, v0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ˋـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lﹶﾞ/ᴵᵔ;->ﹳᐧ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v1}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lﹶﾞ/ᴵᵔ;->ﹳᐧ:Lﹶﾞ/ˈٴ;

    invoke-virtual {p1, v1}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final ﹶˎ(Ljava/lang/String;)Lﹶﾞ/ʾˏ;
    .locals 13

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, p0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    iget-object v3, v1, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2, p1}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v2

    sget-object v4, Lﹶﾞ/ˋـ;->ᴵˊ:Lﹶﾞ/ˋـ;

    const/4 v5, 0x0

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ʼʼ()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ᵔﹳ()Lcom/google/android/gms/internal/measurement/ʻʼ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ʻٴ(I)V

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˏי()I

    move-result v7

    invoke-static {v7}, Landroid/support/v4/media/session/ﹳٴ;->ⁱˊ(I)I

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/ʻʼ;->ˆʾ(I)V

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v3, p1}, Lﹶﾞ/ـﹶ;->ᵢˋ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ﹳⁱ;

    move-result-object v9

    const/4 v10, 0x3

    if-nez v9, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, p1}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ˈٴ()Z

    move-result v11

    const/16 v12, 0x64

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ᴵᵔ()Lcom/google/android/gms/internal/measurement/ٴᴵ;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ٴᴵ;->ʼᐧ()I

    move-result v11

    if-eq v11, v12, :cond_4

    :cond_2
    iget-object v11, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ʽʽ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, p1, v1}, Lﹶﾞ/ᵢﹳ;->ˆﹳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ᴵᵔ()Lcom/google/android/gms/internal/measurement/ٴᴵ;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ٴᴵ;->ʼᐧ()I

    move-result v7

    if-lt v1, v7, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_0
    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ʻٴ(I)V

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lﹶﾞ/ـﹶ;->ᵢˋ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ﹳⁱ;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ˈٴ()Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ʽʽ()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ʽʽ()Ljava/lang/String;

    move-result-object v9

    const-string v11, "x-gtm-server-preview"

    invoke-virtual {v7, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ᴵᵔ()Lcom/google/android/gms/internal/measurement/ٴᴵ;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ٴᴵ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˏי()I

    move-result v11

    invoke-static {v11}, Landroid/support/v4/media/session/ﹳٴ;->ⁱˊ(I)I

    move-result v11

    if-eqz v11, :cond_7

    if-eq v11, v8, :cond_7

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/ʻʼ;->ˆʾ(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lﹶﾞ/ᐧˏ;->ˋˊ(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v10, 0xb

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/ʻʼ;->ˆʾ(I)V

    goto :goto_1

    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/ʻʼ;->ˆʾ(I)V

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ᴵᵔ()Lcom/google/android/gms/internal/measurement/ٴᴵ;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ᴵᵔ()Lcom/google/android/gms/internal/measurement/ٴᴵ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "[sgtm] Eligible for local service direct upload. appId"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ʻٴ(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ـˆ(I)V

    new-instance v5, Lﹶﾞ/ʾˏ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    sget-object v1, Lﹶﾞ/ˋـ;->ˈٴ:Lﹶﾞ/ˋـ;

    invoke-direct {v5, v9, v7, v1, v0}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ـˆ(I)V

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[sgtm] Local service, missing sgtm_server_url"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "[sgtm] Eligible for client side upload. appId"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ʻٴ(I)V

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/ʻʼ;->ˆʾ(I)V

    new-instance v5, Lﹶﾞ/ʾˏ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    sget-object v1, Lﹶﾞ/ˋـ;->ᴵᵔ:Lﹶﾞ/ˋـ;

    invoke-direct {v5, v9, v7, v1, v0}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "[sgtm] Missing sgtm_setting in remote config. appId"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ـˆ(I)V

    :goto_3
    if-eqz v5, :cond_c

    return-object v5

    :cond_c
    new-instance v0, Lﹶﾞ/ʾˏ;

    invoke-virtual {p0, p1}, Lﹶﾞ/ᐧˏ;->ʽˑ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    invoke-direct {v0, p1, v1, v4, v2}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    return-object v0

    :cond_d
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/ᵢᐧ;->ـˆ(I)V

    new-instance v0, Lﹶﾞ/ʾˏ;

    invoke-virtual {p0, p1}, Lﹶﾞ/ᐧˏ;->ʽˑ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    invoke-direct {v0, p1, v1, v4, v2}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_5
    new-instance v0, Lﹶﾞ/ʾˏ;

    invoke-virtual {p0, p1}, Lﹶﾞ/ᐧˏ;->ʽˑ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, p1, v1, v4, v5}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    return-object v0
.end method
