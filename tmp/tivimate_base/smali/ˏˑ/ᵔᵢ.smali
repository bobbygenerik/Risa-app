.class public final Lˏˑ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ⁱˊ;


# instance fields
.field public final ⁱˊ:Lﹳʽ/ʼʼ;

.field public final ﹳٴ:Lˏˑ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lˏˑ/ᵎﹶ;Lﹳʽ/ʼʼ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˏˑ/ᵔᵢ;->ﹳٴ:Lˏˑ/ᵎﹶ;

    iput-object p2, p0, Lˏˑ/ᵔᵢ;->ⁱˊ:Lﹳʽ/ʼʼ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ([B[B)[B
    .locals 2

    .prologue
    iget-object v0, p0, Lˏˑ/ᵔᵢ;->ⁱˊ:Lﹳʽ/ʼʼ;

    invoke-virtual {v0, p1}, Lﹳʽ/ʼʼ;->ﹳٴ([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˏˑ/ᵎﹶ;

    :try_start_0
    iget-object v1, v1, Lˏˑ/ᵎﹶ;->ﹳٴ:Lٴʻ/ⁱˊ;

    invoke-interface {v1, p1, p2}, Lٴʻ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "decryption failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ([B[B)[B
    .locals 1

    iget-object v0, p0, Lˏˑ/ᵔᵢ;->ﹳٴ:Lˏˑ/ᵎﹶ;

    iget-object v0, v0, Lˏˑ/ᵎﹶ;->ﹳٴ:Lٴʻ/ⁱˊ;

    invoke-interface {v0, p1, p2}, Lٴʻ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object p2

    array-length p1, p1

    return-object p2
.end method
