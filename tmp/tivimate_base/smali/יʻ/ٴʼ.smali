.class public final Lיʻ/ٴʼ;
.super Lיʻ/ʽ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Lיʻ/ˆʾ;


# direct methods
.method public constructor <init>(ILיʻ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    iput p1, p0, Lיʻ/ٴʼ;->ⁱˊ:I

    return-void
.end method

.method public static ⁱˊ(ILיʻ/ˆʾ;)Lיʻ/ٴʼ;
    .locals 1

    .prologue
    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    new-instance v0, Lיʻ/ٴʼ;

    invoke-direct {v0, p0, p1}, Lיʻ/ٴʼ;-><init>(ILיʻ/ˆʾ;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Salt size must be between 8 and 12 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lיʻ/ٴʼ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lיʻ/ٴʼ;

    iget-object v0, p1, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    iget-object v2, p0, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    if-ne v0, v2, :cond_1

    iget p1, p1, Lיʻ/ٴʼ;->ⁱˊ:I

    iget v0, p0, Lיʻ/ٴʼ;->ⁱˊ:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lיʻ/ٴʼ;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lיʻ/ٴʼ;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X-AES-GCM Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "salt_size_bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lיʻ/ٴʼ;->ⁱˊ:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ˉٴ:Lיʻ/ˆʾ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
