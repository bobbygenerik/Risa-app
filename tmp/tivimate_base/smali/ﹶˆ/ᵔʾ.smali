.class public final Lﹶˆ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ᵔᵢ;


# static fields
.field public static final ˑﹳ:[B


# instance fields
.field public final ʽ:[B

.field public final ˈ:[B

.field public final ⁱˊ:I

.field public final ﹳٴ:Lٴˆ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lﹶˆ/ᵔʾ;->ˑﹳ:[B

    return-void
.end method

.method public constructor <init>(Lﹳʾ/ᵔᵢ;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹶˆ/ˉʿ;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HMAC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lﹳʾ/ᵔᵢ;->ˈٴ:Lﹳʾ/ﾞʻ;

    iget-object v3, v3, Lﹳʾ/ﾞʻ;->ˈ:Lﹳʾ/ˆʾ;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p1, Lﹳʾ/ᵔᵢ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v4, v4, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lʾᐧ/ﹳٴ;

    invoke-virtual {v4}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lﹶˆ/ˉʿ;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    iput-object v0, p0, Lﹶˆ/ᵔʾ;->ﹳٴ:Lٴˆ/ﹳٴ;

    iget-object v0, p1, Lﹳʾ/ᵔᵢ;->ˈٴ:Lﹳʾ/ﾞʻ;

    iget v1, v0, Lﹳʾ/ﾞʻ;->ⁱˊ:I

    iput v1, p0, Lﹶˆ/ᵔʾ;->ⁱˊ:I

    iget-object p1, p1, Lﹳʾ/ᵔᵢ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    iput-object p1, p0, Lﹶˆ/ᵔʾ;->ʽ:[B

    iget-object p1, v0, Lﹳʾ/ﾞʻ;->ʽ:Lﹳʾ/ٴﹶ;

    sget-object v0, Lﹳʾ/ٴﹶ;->ˈ:Lﹳʾ/ٴﹶ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lﹶˆ/ᵔʾ;->ˑﹳ:[B

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lﹶˆ/ᵔʾ;->ˈ:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lﹶˆ/ᵔʾ;->ˈ:[B

    return-void
.end method

.method public constructor <init>(Lﹳʾ/ﹳٴ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹶˆ/ٴﹶ;

    iget-object v1, p1, Lﹳʾ/ﹳٴ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lﹶˆ/ٴﹶ;-><init>([B)V

    iput-object v0, p0, Lﹶˆ/ᵔʾ;->ﹳٴ:Lٴˆ/ﹳٴ;

    iget-object v0, p1, Lﹳʾ/ﹳٴ;->ˈٴ:Lﹳʾ/ˈ;

    iget v1, v0, Lﹳʾ/ˈ;->ⁱˊ:I

    iput v1, p0, Lﹶˆ/ᵔʾ;->ⁱˊ:I

    iget-object p1, p1, Lﹳʾ/ﹳٴ;->ˊʻ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    iput-object p1, p0, Lﹶˆ/ᵔʾ;->ʽ:[B

    iget-object p1, v0, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    sget-object v0, Lﹳʾ/ʽ;->ˈ:Lﹳʾ/ʽ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lﹶˆ/ᵔʾ;->ˑﹳ:[B

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lﹶˆ/ᵔʾ;->ˈ:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lﹶˆ/ᵔʾ;->ˈ:[B

    return-void
.end method

.method public constructor <init>(Lﹶˆ/ˉʿ;I)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˆ/ᵔʾ;->ﹳٴ:Lٴˆ/ﹳٴ;

    iput p2, p0, Lﹶˆ/ᵔʾ;->ⁱˊ:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lﹶˆ/ᵔʾ;->ʽ:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lﹶˆ/ᵔʾ;->ˈ:[B

    const/16 v1, 0xa

    if-lt p2, v1, :cond_0

    new-array v0, v0, [B

    invoke-virtual {p1, p2, v0}, Lﹶˆ/ˉʿ;->ﹳٴ(I[B)[B

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ﹳٴ([B)[B
    .locals 8

    .prologue
    iget-object v0, p0, Lﹶˆ/ᵔʾ;->ˈ:[B

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget v5, p0, Lﹶˆ/ᵔʾ;->ⁱˊ:I

    iget-object v6, p0, Lﹶˆ/ᵔʾ;->ﹳٴ:Lٴˆ/ﹳٴ;

    iget-object v7, p0, Lﹶˆ/ᵔʾ;->ʽ:[B

    if-lez v1, :cond_0

    new-array v1, v4, [[B

    aput-object p1, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object p1

    invoke-interface {v6, v5, p1}, Lٴˆ/ﹳٴ;->ﹳٴ(I[B)[B

    move-result-object p1

    new-array v0, v4, [[B

    aput-object v7, v0, v3

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v6, v5, p1}, Lٴˆ/ﹳٴ;->ﹳٴ(I[B)[B

    move-result-object p1

    new-array v0, v4, [[B

    aput-object v7, v0, v3

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object p1

    return-object p1
.end method
