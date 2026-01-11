.class public abstract Lיʻ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Lᴵﹳ/ʾˊ;->CONFIG_NAME_FIELD_NUMBER:I

    :try_start_0
    invoke-static {}, Lיʻ/ﹳٴ;->ﹳٴ()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static ﹳٴ()V
    .locals 13

    .prologue
    sget-object v0, Lﹳʽ/ᵔﹳ;->ⁱˊ:Lﹳʽ/ᵔﹳ;

    sget-object v1, Lיʻ/ﾞᴵ;->ﹳٴ:Lיʻ/ﾞᴵ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ⁱˊ(Lﹳʽ/ˈٴ;)V

    sget-object v1, Lיʻ/ﾞᴵ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    invoke-static {}, Lﹳʾ/ˉʿ;->ﹳٴ()V

    sget v1, Lיʻ/ʼˎ;->ˑﹳ:I

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ⁱˊ(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lיٴ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    sget-object v2, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    sget-object v3, Lיٴ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v3, Lיٴ/ﹳٴ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v3, Lיٴ/ﹳٴ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v3, Lיٴ/ﹳٴ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v3, Lיʻ/ʼˎ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v3}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v3, Lﹳʽ/ʼᐧ;->ⁱˊ:Lﹳʽ/ʼᐧ;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "AES128_CTR_HMAC_SHA256"

    sget-object v6, Lיʻ/ٴᵢ;->ˑﹳ:Lיʻ/ٴﹶ;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ٴﹶ;->ⁱˊ()Lﹳʽ/ᴵᵔ;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lﹳʽ/ᴵᵔ;->ʼᐧ(I)V

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Lﹳʽ/ᴵᵔ;->ᵔﹳ(I)V

    invoke-virtual {v5, v6}, Lﹳʽ/ᴵᵔ;->ˏי(I)V

    invoke-virtual {v5, v6}, Lﹳʽ/ᴵᵔ;->ﹳᐧ(I)V

    sget-object v8, Lיʻ/ˆʾ;->ˑﹳ:Lיʻ/ˆʾ;

    iput-object v8, v5, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    sget-object v9, Lיʻ/ˆʾ;->ˆʾ:Lיʻ/ˆʾ;

    iput-object v9, v5, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v5}, Lﹳʽ/ᴵᵔ;->ˑﹳ()Lיʻ/ٴﹶ;

    move-result-object v5

    const-string v10, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "AES256_CTR_HMAC_SHA256"

    sget-object v10, Lיʻ/ٴᵢ;->ﾞᴵ:Lיʻ/ٴﹶ;

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ٴﹶ;->ⁱˊ()Lﹳʽ/ᴵᵔ;

    move-result-object v5

    invoke-virtual {v5, v7}, Lﹳʽ/ᴵᵔ;->ʼᐧ(I)V

    invoke-virtual {v5, v7}, Lﹳʽ/ᴵᵔ;->ᵔﹳ(I)V

    invoke-virtual {v5, v7}, Lﹳʽ/ᴵᵔ;->ˏי(I)V

    invoke-virtual {v5, v6}, Lﹳʽ/ᴵᵔ;->ﹳᐧ(I)V

    iput-object v8, v5, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iput-object v9, v5, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v5}, Lﹳʽ/ᴵᵔ;->ˑﹳ()Lיʻ/ٴﹶ;

    move-result-object v5

    const-string v8, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v4, Lﹳʽ/ˉʿ;->ⁱˊ:Lﹳʽ/ˉʿ;

    sget-object v5, Lיʻ/ʼˎ;->ʽ:Lיʻ/ᵔᵢ;

    const-class v8, Lיʻ/ٴﹶ;

    invoke-virtual {v4, v5, v8}, Lﹳʽ/ˉʿ;->ﹳٴ(Lיʻ/ᵔᵢ;Ljava/lang/Class;)V

    sget-object v5, Lﹳʽ/ﾞʻ;->ⁱˊ:Lﹳʽ/ﾞʻ;

    sget-object v9, Lיʻ/ʼˎ;->ˈ:Lˏˑ/ⁱˊ;

    invoke-virtual {v5, v9, v8}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v8, Lﹳʽ/ⁱˊ;->ˈ:Lﹳʽ/ⁱˊ;

    sget-object v9, Lיʻ/ʼˎ;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v9, v1}, Lﹳʽ/ⁱˊ;->ˑﹳ(Lﹳʽ/ᵎﹶ;I)V

    sget v1, Lיʻ/ʼᐧ;->ˑﹳ:I

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ⁱˊ(I)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lיٴ/ˑﹳ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v9, Lיٴ/ˑﹳ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v9, Lיٴ/ˑﹳ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v9, Lיٴ/ˑﹳ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v9, Lיʻ/ʼᐧ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v9}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "AES128_GCM"

    sget-object v11, Lיʻ/ٴᵢ;->ﹳٴ:Lיʻ/ᵔﹳ;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ᵔﹳ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v10

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˆﾞ()V

    invoke-virtual {v10, v6}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˊˋ()V

    sget-object v11, Lיʻ/ˆʾ;->ʼᐧ:Lיʻ/ˆʾ;

    iput-object v11, v10, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˉʿ()Lיʻ/ᵔﹳ;

    move-result-object v10

    const-string v12, "AES128_GCM_RAW"

    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "AES256_GCM"

    sget-object v12, Lיʻ/ٴᵢ;->ⁱˊ:Lיʻ/ᵔﹳ;

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ᵔﹳ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v10

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˆﾞ()V

    invoke-virtual {v10, v7}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iput-object v11, v10, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˉʿ()Lיʻ/ᵔﹳ;

    move-result-object v10

    const-string v11, "AES256_GCM_RAW"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3, v9}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v9, Lיʻ/ʼᐧ;->ʽ:Lיʻ/ᵔᵢ;

    const-class v10, Lיʻ/ᵔﹳ;

    invoke-virtual {v4, v9, v10}, Lﹳʽ/ˉʿ;->ﹳٴ(Lיʻ/ᵔᵢ;Ljava/lang/Class;)V

    sget-object v9, Lיʻ/ʼᐧ;->ˈ:Lˏˑ/ⁱˊ;

    invoke-virtual {v5, v9, v10}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v9, Lיʻ/ʼᐧ;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v9, v1}, Lﹳʽ/ⁱˊ;->ˑﹳ(Lﹳʽ/ᵎﹶ;I)V

    invoke-static {}, Lˈᵎ/ﹳٴ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lיʻ/ˉʿ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    const/4 v1, 0x1

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lיٴ/ⁱˊ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v9, Lיٴ/ⁱˊ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v9, Lיٴ/ⁱˊ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v9, Lיٴ/ⁱˊ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v9, Lיʻ/ˉʿ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v9}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "AES128_EAX"

    sget-object v11, Lיʻ/ٴᵢ;->ʽ:Lיʻ/ᵔʾ;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ᵔʾ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v10

    invoke-virtual {v10, v6}, Lˏˆ/ﹳٴ;->ᵔٴ(I)V

    invoke-virtual {v10, v6}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˊˋ()V

    sget-object v11, Lיʻ/ˆʾ;->ˉʿ:Lיʻ/ˆʾ;

    iput-object v11, v10, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ﾞʻ()Lיʻ/ᵔʾ;

    move-result-object v10

    const-string v12, "AES128_EAX_RAW"

    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "AES256_EAX"

    sget-object v12, Lיʻ/ٴᵢ;->ˈ:Lיʻ/ᵔʾ;

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ᵔʾ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v10

    invoke-virtual {v10, v6}, Lˏˆ/ﹳٴ;->ᵔٴ(I)V

    invoke-virtual {v10, v7}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iput-object v11, v10, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˏˆ/ﹳٴ;->ﾞʻ()Lיʻ/ᵔʾ;

    move-result-object v10

    const-string v11, "AES256_EAX_RAW"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3, v9}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v9, Lיʻ/ˉʿ;->ʽ:Lˏˑ/ⁱˊ;

    const-class v10, Lיʻ/ᵔʾ;

    invoke-virtual {v5, v9, v10}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v9, Lיʻ/ˉʿ;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v9}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    sget-object v9, Lיʻ/יـ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lיٴ/ᵎﹶ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v9, Lיٴ/ᵎﹶ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v9, Lיٴ/ᵎﹶ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v9, Lיٴ/ᵎﹶ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v9}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lיʻ/ˏי;->ⁱˊ()Lˑʼ/ᵎˊ;

    move-result-object v10

    invoke-virtual {v10, v6}, Lˑʼ/ᵎˊ;->ˈⁱ(I)V

    sget-object v11, Lיʻ/ˆʾ;->ᵔﹳ:Lיʻ/ˆʾ;

    iput-object v11, v10, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˑʼ/ᵎˊ;->ˉˆ()Lיʻ/ˏי;

    move-result-object v10

    const-string v12, "AES128_GCM_SIV"

    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ˏי;->ⁱˊ()Lˑʼ/ᵎˊ;

    move-result-object v10

    invoke-virtual {v10, v6}, Lˑʼ/ᵎˊ;->ˈⁱ(I)V

    sget-object v6, Lיʻ/ˆʾ;->יـ:Lיʻ/ˆʾ;

    iput-object v6, v10, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˑʼ/ᵎˊ;->ˉˆ()Lיʻ/ˏי;

    move-result-object v10

    const-string v12, "AES128_GCM_SIV_RAW"

    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ˏי;->ⁱˊ()Lˑʼ/ᵎˊ;

    move-result-object v10

    invoke-virtual {v10, v7}, Lˑʼ/ᵎˊ;->ˈⁱ(I)V

    iput-object v11, v10, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˑʼ/ᵎˊ;->ˉˆ()Lיʻ/ˏי;

    move-result-object v10

    const-string v11, "AES256_GCM_SIV"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lיʻ/ˏי;->ⁱˊ()Lˑʼ/ᵎˊ;

    move-result-object v10

    invoke-virtual {v10, v7}, Lˑʼ/ᵎˊ;->ˈⁱ(I)V

    iput-object v6, v10, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v10}, Lˑʼ/ᵎˊ;->ˉˆ()Lיʻ/ˏי;

    move-result-object v6

    const-string v7, "AES256_GCM_SIV_RAW"

    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3, v6}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v6, Lיʻ/יـ;->ʽ:Lיʻ/ᵔᵢ;

    const-class v7, Lיʻ/ˏי;

    invoke-virtual {v4, v6, v7}, Lﹳʽ/ˉʿ;->ﹳٴ(Lיʻ/ᵔᵢ;Ljava/lang/Class;)V

    sget-object v6, Lיʻ/יـ;->ⁱˊ:Lˏˑ/ⁱˊ;

    invoke-virtual {v5, v6, v7}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v6, Lיʻ/יـ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v6}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v6, Lיʻ/יـ;->ˈ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v6}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    sget-object v6, Lיʻ/ʻٴ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lיٴ/ʼˎ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v6, Lיٴ/ʼˎ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v6, Lיٴ/ʼˎ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v6, Lיٴ/ʼˎ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v6, Lיʻ/ʻٴ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v6}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v6, Lיʻ/ʻٴ;->ⁱˊ:Lˏˑ/ⁱˊ;

    const-class v7, Lיʻ/ـˆ;

    invoke-virtual {v5, v6, v7}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v7, Lיʻ/ˆʾ;->ˏי:Lיʻ/ˆʾ;

    new-instance v9, Lיʻ/ـˆ;

    invoke-direct {v9, v7}, Lיʻ/ـˆ;-><init>(Lיʻ/ˆʾ;)V

    const-string v7, "CHACHA20_POLY1305"

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lיʻ/ˆʾ;->ʻٴ:Lיʻ/ˆʾ;

    new-instance v9, Lיʻ/ـˆ;

    invoke-direct {v9, v7}, Lיʻ/ـˆ;-><init>(Lיʻ/ˆʾ;)V

    const-string v7, "CHACHA20_POLY1305_RAW"

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3, v6}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v6, Lיʻ/ʻٴ;->ʽ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v6}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    sget-object v6, Lיʻ/ʾᵎ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lיʻ/ʽʽ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v6, Lיʻ/ʽʽ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v6, Lיʻ/ʽʽ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v6, Lיʻ/ʽʽ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v6, Lיʻ/ʾᵎ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v6}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v6, Lיʻ/ʾᵎ;->ʽ:Lˏˑ/ⁱˊ;

    const-class v7, Lיʻ/ᴵˊ;

    invoke-virtual {v5, v6, v7}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v6, Lיʻ/ʾᵎ;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v6}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    sget-object v6, Lיʻ/ᵢˏ;->ﹳٴ:Lﹳʽ/ᵎﹶ;

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lיʻ/ˊʻ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v6, Lיʻ/ˊʻ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v6, Lיʻ/ˊʻ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v6, Lיʻ/ˊʻ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v6}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v6, Lיʻ/ᵢˏ;->ⁱˊ:Lˏˑ/ⁱˊ;

    const-class v7, Lיʻ/ᴵᵔ;

    invoke-virtual {v5, v6, v7}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v6, Lיʻ/ᵢˏ;->ʽ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v6}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v6, Lיʻ/ᵢˏ;->ﹳٴ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v6}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    sget-object v6, Lיʻ/ᵔי;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lיٴ/ʼᐧ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v1, Lיٴ/ʼᐧ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v1, Lיٴ/ʼᐧ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v1, Lיٴ/ʼᐧ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v1, Lיʻ/ᵔי;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Lיʻ/ˆʾ;->ᵎⁱ:Lיʻ/ˆʾ;

    new-instance v7, Lיʻ/ˆﾞ;

    invoke-direct {v7, v6}, Lיʻ/ˆﾞ;-><init>(Lיʻ/ˆʾ;)V

    const-string v6, "XCHACHA20_POLY1305"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lיʻ/ˆʾ;->ᵎˊ:Lיʻ/ˆʾ;

    new-instance v7, Lיʻ/ˆﾞ;

    invoke-direct {v7, v6}, Lיʻ/ˆﾞ;-><init>(Lיʻ/ˆʾ;)V

    const-string v6, "XCHACHA20_POLY1305_RAW"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v1, Lיʻ/ᵔי;->ˈ:Lˏˑ/ⁱˊ;

    const-class v6, Lיʻ/ˆﾞ;

    invoke-virtual {v5, v1, v6}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v1, Lיʻ/ᵔי;->ʽ:Lיʻ/ᵔᵢ;

    invoke-virtual {v4, v1, v6}, Lﹳʽ/ˉʿ;->ﹳٴ(Lיʻ/ᵔᵢ;Ljava/lang/Class;)V

    sget-object v1, Lיʻ/ᵔי;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v8, v1}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    sget-object v1, Lיٴ/ˉˆ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v1, Lיٴ/ˉˆ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v1, Lיٴ/ˉˆ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v1, Lיٴ/ˉˆ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "XAES_256_GCM_192_BIT_NONCE"

    sget-object v4, Lיʻ/ٴᵢ;->ᵎﹶ:Lיʻ/ٴʼ;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "XAES_256_GCM_192_BIT_NONCE_NO_PREFIX"

    sget-object v4, Lיʻ/ٴᵢ;->ᵔᵢ:Lיʻ/ٴʼ;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "XAES_256_GCM_160_BIT_NONCE_NO_PREFIX"

    sget-object v4, Lיʻ/ٴᵢ;->ʼˎ:Lיʻ/ٴʼ;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X_AES_GCM_8_BYTE_SALT_NO_PREFIX"

    sget-object v4, Lיʻ/ٴᵢ;->ˆʾ:Lיʻ/ٴʼ;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v1, Lיʻ/ᵎⁱ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v0, Lיʻ/ᵎⁱ;->ﹳٴ:Lˏˑ/ⁱˊ;

    const-class v1, Lיʻ/ٴʼ;

    invoke-virtual {v5, v0, v1}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    return-void

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering XChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering KMS Envelope AEAD is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering KMS AEAD is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering ChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering AES GCM SIV is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering AES EAX is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
