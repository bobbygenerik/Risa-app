.class public final Lᐧٴ/יـ;
.super Lᐧٴ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lᐧٴ/ᴵˊ;

.field public final ʽ:Lᐧٴ/ʾˋ;

.field public final ˈ:J

.field public final ˑﹳ:[B

.field public final ᵎﹶ:J

.field public final ᵔᵢ:Lᐧٴ/ᵎⁱ;

.field public final ⁱˊ:Ljava/lang/Integer;

.field public final ﹳٴ:J

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/Integer;Lᐧٴ/ʾˋ;J[BLjava/lang/String;JLᐧٴ/ᵎⁱ;Lᐧٴ/ᴵˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lᐧٴ/יـ;->ﹳٴ:J

    iput-object p3, p0, Lᐧٴ/יـ;->ⁱˊ:Ljava/lang/Integer;

    iput-object p4, p0, Lᐧٴ/יـ;->ʽ:Lᐧٴ/ʾˋ;

    iput-wide p5, p0, Lᐧٴ/יـ;->ˈ:J

    iput-object p7, p0, Lᐧٴ/יـ;->ˑﹳ:[B

    iput-object p8, p0, Lᐧٴ/יـ;->ﾞᴵ:Ljava/lang/String;

    iput-wide p9, p0, Lᐧٴ/יـ;->ᵎﹶ:J

    iput-object p11, p0, Lᐧٴ/יـ;->ᵔᵢ:Lᐧٴ/ᵎⁱ;

    iput-object p12, p0, Lᐧٴ/יـ;->ʼˎ:Lᐧٴ/ᴵˊ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lᐧٴ/ᴵᵔ;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Lᐧٴ/ᴵᵔ;

    move-object v1, p1

    check-cast v1, Lᐧٴ/יـ;

    iget-object v3, v1, Lᐧٴ/יـ;->ʼˎ:Lᐧٴ/ᴵˊ;

    iget-object v4, v1, Lᐧٴ/יـ;->ᵔᵢ:Lᐧٴ/ᵎⁱ;

    iget-object v5, v1, Lᐧٴ/יـ;->ﾞᴵ:Ljava/lang/String;

    iget-object v6, v1, Lᐧٴ/יـ;->ʽ:Lᐧٴ/ʾˋ;

    iget-object v7, v1, Lᐧٴ/יـ;->ⁱˊ:Ljava/lang/Integer;

    iget-wide v8, v1, Lᐧٴ/יـ;->ﹳٴ:J

    iget-wide v10, p0, Lᐧٴ/יـ;->ﹳٴ:J

    cmp-long v8, v10, v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lᐧٴ/יـ;->ⁱˊ:Ljava/lang/Integer;

    if-nez v8, :cond_1

    if-nez v7, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_0
    iget-object v7, p0, Lᐧٴ/יـ;->ʽ:Lᐧٴ/ʾˋ;

    if-nez v7, :cond_2

    if-nez v6, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_1
    iget-wide v6, p0, Lᐧٴ/יـ;->ˈ:J

    iget-wide v8, v1, Lᐧٴ/יـ;->ˈ:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    instance-of v6, p1, Lᐧٴ/יـ;

    if-eqz v6, :cond_3

    check-cast p1, Lᐧٴ/יـ;

    iget-object p1, p1, Lᐧٴ/יـ;->ˑﹳ:[B

    goto :goto_2

    :cond_3
    iget-object p1, v1, Lᐧٴ/יـ;->ˑﹳ:[B

    :goto_2
    iget-object v6, p0, Lᐧٴ/יـ;->ˑﹳ:[B

    invoke-static {v6, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lᐧٴ/יـ;->ﾞᴵ:Ljava/lang/String;

    if-nez p1, :cond_4

    if-nez v5, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_3
    iget-wide v5, p0, Lᐧٴ/יـ;->ᵎﹶ:J

    iget-wide v7, v1, Lᐧٴ/יـ;->ᵎﹶ:J

    cmp-long p1, v5, v7

    if-nez p1, :cond_7

    iget-object p1, p0, Lᐧٴ/יـ;->ᵔᵢ:Lᐧٴ/ᵎⁱ;

    if-nez p1, :cond_5

    if-nez v4, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_4
    iget-object p1, p0, Lᐧٴ/יـ;->ʼˎ:Lᐧٴ/ᴵˊ;

    if-nez p1, :cond_6

    if-nez v3, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_5
    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    iget-wide v0, p0, Lᐧٴ/יـ;->ﹳٴ:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    const/4 v3, 0x0

    iget-object v4, p0, Lᐧٴ/יـ;->ⁱˊ:Ljava/lang/Integer;

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    move-result v4

    :goto_0
    xor-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-object v4, p0, Lᐧٴ/יـ;->ʽ:Lᐧٴ/ʾˋ;

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    xor-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lᐧٴ/יـ;->ˈ:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v4, v4

    xor-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-object v4, p0, Lᐧٴ/יـ;->ˑﹳ:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    xor-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-object v4, p0, Lᐧٴ/יـ;->ﾞᴵ:Ljava/lang/String;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    xor-int/2addr v0, v4

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lᐧٴ/יـ;->ᵎﹶ:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lᐧٴ/יـ;->ᵔᵢ:Lᐧٴ/ᵎⁱ;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lᐧٴ/יـ;->ʼˎ:Lᐧٴ/ᴵˊ;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEvent{eventTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lᐧٴ/יـ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/יـ;->ⁱˊ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", complianceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/יـ;->ʽ:Lᐧٴ/ʾˋ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᐧٴ/יـ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/יـ;->ˑﹳ:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtensionJsonProto3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/יـ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timezoneOffsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᐧٴ/יـ;->ᵎﹶ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkConnectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/יـ;->ᵔᵢ:Lᐧٴ/ᵎⁱ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/יـ;->ʼˎ:Lᐧٴ/ᴵˊ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
