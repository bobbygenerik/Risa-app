.class public final Lﾞˏ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:Ljava/lang/Object;


# virtual methods
.method public ⁱˊ(I)V
    .locals 3

    .prologue
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid key size %d; only 32-byte, 48-byte and 64-byte AES-SIV keys are supported"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lﾞˏ/ʽ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method

.method public ﹳٴ()Lˏˑ/ˑﹳ;
    .locals 3

    .prologue
    iget-object v0, p0, Lﾞˏ/ʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˏˑ/ˈ;

    if-eqz v1, :cond_0

    new-instance v1, Lˏˑ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lˏˑ/ˈ;

    invoke-direct {v1, v0, v2}, Lˏˑ/ˑﹳ;-><init>(ILˏˑ/ˈ;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
