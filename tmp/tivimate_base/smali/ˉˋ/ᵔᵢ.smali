.class public final Lˉˋ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:[B

.field public final ʽ:Lˉˋ/ﾞʻ;

.field public final ˆʾ:[B

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ᵎﹶ:Ljava/lang/Integer;

.field public final ᵔᵢ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/Integer;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lˉˋ/ﾞʻ;JJLjava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    iput-object p3, p0, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    iput-wide p4, p0, Lˉˋ/ᵔᵢ;->ˈ:J

    iput-wide p6, p0, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    iput-object p8, p0, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    iput-object p9, p0, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    iput-object p10, p0, Lˉˋ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    iput-object p11, p0, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    iput-object p12, p0, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˉˋ/ᵔᵢ;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lˉˋ/ᵔᵢ;

    iget-object v1, p1, Lˉˋ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    iget-object v3, p1, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    iget-object v4, p1, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    iget-object v5, p0, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iget-object v6, p1, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    if-nez v5, :cond_1

    if-nez v4, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_0
    iget-object v4, p0, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    iget-object v5, p1, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    invoke-virtual {v4, v5}, Lˉˋ/ﾞʻ;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lˉˋ/ᵔᵢ;->ˈ:J

    iget-wide v6, p1, Lˉˋ/ᵔᵢ;->ˈ:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-wide v4, p0, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    iget-wide v6, p1, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, p0, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    iget-object v5, p1, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    if-nez v4, :cond_2

    if-nez v3, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iget-object v3, p0, Lˉˋ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    iget-object v3, p1, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    iget-object p1, p1, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    iget-object v0, p0, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    invoke-virtual {v3}, Lˉˋ/ﾞʻ;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lˉˋ/ᵔᵢ;->ˈ:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˉˋ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventInternal{transportName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encodedPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˉˋ/ᵔᵢ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", autoMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pseudonymousId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentIdsClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentIdsEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Lʼי/ﹳٴ;
    .locals 3

    .prologue
    new-instance v0, Lʼי/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lʼי/ﹳٴ;->ʽ:Ljava/lang/Object;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    iput-object v1, v0, Lʼי/ﹳٴ;->ﹳٴ:Ljava/lang/Integer;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    iput-object v1, v0, Lʼי/ﹳٴ;->ⁱˊ:Ljava/lang/Integer;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    iput-object v1, v0, Lʼי/ﹳٴ;->ᵔᵢ:Ljava/lang/CharSequence;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    iput-object v1, v0, Lʼי/ﹳٴ;->ʼˎ:Ljava/lang/Object;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    iput-object v1, v0, Lʼי/ﹳٴ;->ˆʾ:Ljava/lang/Object;

    iget-object v1, p0, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lʼי/ﹳٴ;->ˈ:Ljava/lang/Object;

    iget-wide v1, p0, Lˉˋ/ᵔᵢ;->ˈ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lʼי/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    iget-wide v1, p0, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lʼי/ﹳٴ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lʼי/ﹳٴ;->ᵎﹶ:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null encodedPayload"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ(Ljava/lang/String;)I
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method
