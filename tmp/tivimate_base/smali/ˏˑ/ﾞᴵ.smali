.class public abstract Lˏˑ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Lᴵﹳ/ʾˊ;->CONFIG_NAME_FIELD_NUMBER:I

    :try_start_0
    invoke-static {}, Lˏˑ/ﾞᴵ;->ﹳٴ()V
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
    .locals 4

    .prologue
    sget-object v0, Lﹳʽ/ᵔﹳ;->ⁱˊ:Lﹳʽ/ᵔﹳ;

    sget-object v1, Lˏˑ/ʼˎ;->ﹳٴ:Lˏˑ/ʼˎ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ⁱˊ(Lﹳʽ/ˈٴ;)V

    sget-object v1, Lˏˑ/ʼˎ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    invoke-static {}, Lˈᵎ/ﹳٴ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lˏˑ/ʽ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    const/4 v1, 0x1

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lـᵔ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    sget-object v1, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    sget-object v2, Lـᵔ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    invoke-virtual {v1, v2}, Lﹳʽ/ﹳᐧ;->ﾞᴵ(Lﹳʽ/ʻٴ;)V

    sget-object v2, Lـᵔ/ﹳٴ;->ⁱˊ:Lﹳʽ/ˏי;

    invoke-virtual {v1, v2}, Lﹳʽ/ﹳᐧ;->ˑﹳ(Lﹳʽ/ˏי;)V

    sget-object v2, Lـᵔ/ﹳٴ;->ʽ:Lﹳʽ/ˑﹳ;

    invoke-virtual {v1, v2}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V

    sget-object v2, Lـᵔ/ﹳٴ;->ˈ:Lﹳʽ/ʽ;

    invoke-virtual {v1, v2}, Lﹳʽ/ﹳᐧ;->ʽ(Lﹳʽ/ʽ;)V

    sget-object v1, Lˏˑ/ʽ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-virtual {v0, v1}, Lﹳʽ/ᵔﹳ;->ﹳٴ(Lﹳʽ/ᵢˏ;)V

    sget-object v0, Lﹳʽ/ʼᐧ;->ⁱˊ:Lﹳʽ/ʼᐧ;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES256_SIV"

    sget-object v3, Lˏˑ/ˆʾ;->ﹳٴ:Lˏˑ/ˑﹳ;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lˏˑ/ˑﹳ;->ⁱˊ()Lﾞˏ/ʽ;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lﾞˏ/ʽ;->ⁱˊ(I)V

    sget-object v3, Lˏˑ/ˈ;->ˈ:Lˏˑ/ˈ;

    iput-object v3, v2, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v2}, Lﾞˏ/ʽ;->ﹳٴ()Lˏˑ/ˑﹳ;

    move-result-object v2

    const-string v3, "AES256_SIV_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lﹳʽ/ʼᐧ;->ⁱˊ(Ljava/util/Map;)V

    sget-object v0, Lﹳʽ/ˉʿ;->ⁱˊ:Lﹳʽ/ˉʿ;

    sget-object v1, Lˏˑ/ʽ;->ʽ:Lיʻ/ᵔᵢ;

    const-class v2, Lˏˑ/ˑﹳ;

    invoke-virtual {v0, v1, v2}, Lﹳʽ/ˉʿ;->ﹳٴ(Lיʻ/ᵔᵢ;Ljava/lang/Class;)V

    sget-object v0, Lﹳʽ/ﾞʻ;->ⁱˊ:Lﹳʽ/ﾞʻ;

    sget-object v1, Lˏˑ/ʽ;->ˈ:Lˏˑ/ⁱˊ;

    invoke-virtual {v0, v1, v2}, Lﹳʽ/ﾞʻ;->ﹳٴ(Lˏˑ/ⁱˊ;Ljava/lang/Class;)V

    sget-object v0, Lﹳʽ/ⁱˊ;->ˈ:Lﹳʽ/ⁱˊ;

    sget-object v1, Lˏˑ/ʽ;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    invoke-virtual {v0, v1}, Lﹳʽ/ⁱˊ;->ˈ(Lﹳʽ/ᵎﹶ;)V

    return-void

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Registering AES SIV is not supported in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
