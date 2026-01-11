.class public abstract Lﹳʾ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Lᴵﹳ/ʾˊ;->CONFIG_NAME_FIELD_NUMBER:I

    :try_start_0
    invoke-static {}, Lﹳʾ/ˉʿ;->ﹳٴ()V
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
    .locals 15

    .prologue
    sget-object v0, Lﹳʽ/ᵔﹳ;->ⁱˊ:Lﹳʽ/ᵔﹳ;

    sget-object v1, Lﹳʾ/ᵎﹶ;->ʽ:Lﹳʾ/ᵎﹶ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ⁱˊ(Lﹳʽ/ˈٴ;)V

    sget-object v1, Lﹳʾ/ᵎﹶ;->ˈ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v1, Lﹳʾ/ᵎﹶ;->ⁱˊ:Lﹳʾ/ᵎﹶ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ⁱˊ(Lﹳʽ/ˈٴ;)V

    sget v1, Lﹳʾ/ʼˎ;->ﾞᴵ:I

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ⁱˊ(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lʼˑ/ʽ;->ﹳٴ:Lـʾ/ᵔﹳ;

    sget-object v2, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    sget-object v3, Lʼˑ/ʽ;->ʽ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v3, Lʼˑ/ʽ;->ˈ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v3, Lʼˑ/ʽ;->ˑﹳ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v3, Lʼˑ/ʽ;->ﾞᴵ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v3}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v3, Lﹳʾ/ʼˎ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v3}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v3, Lﹳʾ/ʼˎ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v3}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v3, Lﹳʽ/ʼᐧ;->ⁱˊ:Lﹳʽ/ʼᐧ;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "HMAC_SHA256_128BITTAG"

    sget-object v6, Lﹳʾ/ﹳᐧ;->ﹳٴ:Lﹳʾ/ﾞʻ;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    sget-object v10, Lﹳʾ/ٴﹶ;->ˑﹳ:Lﹳʾ/ٴﹶ;

    iput-object v10, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    sget-object v11, Lﹳʾ/ˆʾ;->ˈ:Lﹳʾ/ˆʾ;

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v12, "HMAC_SHA256_128BITTAG_RAW"

    invoke-virtual {v4, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    iput-object v7, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v7, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    sget-object v12, Lﹳʾ/ٴﹶ;->ⁱˊ:Lﹳʾ/ٴﹶ;

    iput-object v12, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v13, "HMAC_SHA256_256BITTAG"

    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    iput-object v7, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v7, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v10, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v11, "HMAC_SHA256_256BITTAG_RAW"

    invoke-virtual {v4, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    const/16 v11, 0x40

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v9, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v12, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    sget-object v13, Lﹳʾ/ˆʾ;->ﾞᴵ:Lﹳʾ/ˆʾ;

    iput-object v13, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v14, "HMAC_SHA512_128BITTAG"

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v9, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v10, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v13, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v9, "HMAC_SHA512_128BITTAG_RAW"

    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v7, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v12, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v13, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v9, "HMAC_SHA512_256BITTAG"

    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v7, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v10, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v13, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v7, "HMAC_SHA512_256BITTAG_RAW"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "HMAC_SHA512_512BITTAG"

    sget-object v7, Lﹳʾ/ﹳᐧ;->ⁱˊ:Lﹳʾ/ﾞʻ;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v5

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v11, v5, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v10, v5, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v13, v5, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v5}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v5

    const-string v7, "HMAC_SHA512_512BITTAG_RAW"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v4, Lﹳʽ/ﾞʻ;->ⁱˊ:Lﹳʽ/ﾞʻ;

    sget-object v5, Lﹳʾ/ʼˎ;->ˑﹳ:Lˏˑ/ⁱˊ;

    const-class v7, Lﹳʾ/ﾞʻ;

    invoke-virtual {v4, v5, v7}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v5, Lﹳʽ/ˉʿ;->ⁱˊ:Lﹳʽ/ˉʿ;

    sget-object v9, Lﹳʾ/ʼˎ;->ˈ:Lיʻ/ᵔᵢ;

    invoke-virtual {v5, v9, v7}, Lﹳʽ/ˉʿ;->ﹳٴ(Lיʻ/ᵔᵢ;Ljava/lang/Class;)V

    sget-object v5, Lﹳʽ/ⁱˊ;->ˈ:Lﹳʽ/ⁱˊ;

    sget-object v7, Lﹳʾ/ʼˎ;->ʽ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v5, v7, v1}, Lﹳʽ/ⁱˊ;->ˑﹳ(Lﹳʽ/ᵎﹶ;I)V

    invoke-static {}, Lˈᵎ/ﹳٴ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lﹳʾ/ⁱˊ;->ﹳٴ:Lˏˑ/ⁱˊ;

    const/4 v1, 0x1

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lʼˑ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v1, Lʼˑ/ﹳٴ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v1, Lʼˑ/ﹳٴ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v1, Lʼˑ/ﹳٴ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v2, v1}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v1, Lﹳʾ/ⁱˊ;->ﹳٴ:Lˏˑ/ⁱˊ;

    const-class v2, Lﹳʾ/ˈ;

    invoke-virtual {v4, v1, v2}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v1, Lﹳʾ/ⁱˊ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v1, Lﹳʾ/ⁱˊ;->ʽ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lﹳʾ/ﹳᐧ;->ʽ:Lﹳʾ/ˈ;

    const-string v2, "AES_CMAC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_CMAC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lﹳʾ/ˈ;->ⁱˊ()Lˑי/ʽ;

    move-result-object v1

    invoke-virtual {v1, v6}, Lˑי/ʽ;->ᴵᵔ(I)V

    invoke-virtual {v1, v8}, Lˑי/ʽ;->ˊʻ(I)V

    sget-object v2, Lﹳʾ/ʽ;->ˑﹳ:Lﹳʾ/ʽ;

    iput-object v2, v1, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˑי/ʽ;->יـ()Lﹳʾ/ˈ;

    move-result-object v1

    const-string v2, "AES256_CMAC_RAW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v0, Lﹳʾ/ⁱˊ;->ˈ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v5, v0}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    return-void

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering AES CMAC is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
