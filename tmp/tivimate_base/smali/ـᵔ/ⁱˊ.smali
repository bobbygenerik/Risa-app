.class public final Lـᵔ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ⁱˊ;


# instance fields
.field public final ʽ:[B

.field public final ⁱˊ:Lᴵﹳ/י;

.field public final ﹳٴ:Lٴʻ/ⁱˊ;


# direct methods
.method public constructor <init>(Lٴʻ/ⁱˊ;Lᴵﹳ/י;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـᵔ/ⁱˊ;->ﹳٴ:Lٴʻ/ⁱˊ;

    iput-object p2, p0, Lـᵔ/ⁱˊ;->ⁱˊ:Lᴵﹳ/י;

    iput-object p3, p0, Lـᵔ/ⁱˊ;->ʽ:[B

    return-void
.end method


# virtual methods
.method public final ⁱˊ([B[B)[B
    .locals 3

    .prologue
    iget-object v0, p0, Lـᵔ/ⁱˊ;->ⁱˊ:Lᴵﹳ/י;

    sget-object v1, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    iget-object v2, p0, Lـᵔ/ⁱˊ;->ﹳٴ:Lٴʻ/ⁱˊ;

    if-ne v0, v1, :cond_0

    invoke-interface {v2, p1, p2}, Lٴʻ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lـᵔ/ⁱˊ;->ʽ:[B

    invoke-static {v0, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-interface {v2, p1, p2}, Lٴʻ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "wrong prefix"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ([B[B)[B
    .locals 3

    .prologue
    iget-object v0, p0, Lـᵔ/ⁱˊ;->ⁱˊ:Lᴵﹳ/י;

    sget-object v1, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    iget-object v2, p0, Lـᵔ/ⁱˊ;->ﹳٴ:Lٴʻ/ⁱˊ;

    if-ne v0, v1, :cond_0

    invoke-interface {v2, p1, p2}, Lٴʻ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v2, p1, p2}, Lٴʻ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [[B

    const/4 v0, 0x0

    iget-object v1, p0, Lـᵔ/ⁱˊ;->ʽ:[B

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object p1

    return-object p1
.end method
