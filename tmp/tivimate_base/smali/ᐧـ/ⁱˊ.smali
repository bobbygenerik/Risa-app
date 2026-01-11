.class public final Lᐧـ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ⁱˊ:J

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧـ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iput-wide p2, p0, Lᐧـ/ⁱˊ;->ⁱˊ:J

    iput p4, p0, Lᐧـ/ⁱˊ;->ʽ:I

    return-void
.end method

.method public static ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʽﹳ;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(BI)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lᐧـ/ⁱˊ;

    if-eqz v0, :cond_3

    check-cast p1, Lᐧـ/ⁱˊ;

    iget v0, p1, Lᐧـ/ⁱˊ;->ʽ:I

    iget-object v1, p1, Lᐧـ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, p0, Lᐧـ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    if-nez v2, :cond_1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-wide v1, p0, Lᐧـ/ⁱˊ;->ⁱˊ:J

    iget-wide v3, p1, Lᐧـ/ⁱˊ;->ⁱˊ:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    iget p1, p0, Lᐧـ/ⁱˊ;->ʽ:I

    if-nez p1, :cond_2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lᐧـ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v1, v2

    mul-int/2addr v1, v2

    const/16 v3, 0x20

    iget-wide v4, p0, Lᐧـ/ⁱˊ;->ⁱˊ:J

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lᐧـ/ⁱˊ;->ʽ:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TokenResult{token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lᐧـ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenExpirationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᐧـ/ⁱˊ;->ⁱˊ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget v2, p0, Lᐧـ/ⁱˊ;->ʽ:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "AUTH_ERROR"

    goto :goto_0

    :cond_1
    const-string v1, "BAD_CONFIG"

    goto :goto_0

    :cond_2
    const-string v1, "OK"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
