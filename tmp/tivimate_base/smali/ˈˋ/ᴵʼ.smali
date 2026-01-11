.class public final Lˈˋ/ᴵʼ;
.super Lˈˋ/ⁱי;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:J

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lˈˋ/ﹳⁱ;


# direct methods
.method public constructor <init>(Lˈˋ/ʻᵎ;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˋ/ᴵʼ;->ﹳٴ:Lˈˋ/ﹳⁱ;

    iput-object p2, p0, Lˈˋ/ᴵʼ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lˈˋ/ᴵʼ;->ʽ:Ljava/lang/String;

    iput-wide p4, p0, Lˈˋ/ᴵʼ;->ˈ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˈˋ/ⁱי;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lˈˋ/ⁱי;

    check-cast p1, Lˈˋ/ᴵʼ;

    iget-object v1, p1, Lˈˋ/ᴵʼ;->ﹳٴ:Lˈˋ/ﹳⁱ;

    iget-object v3, p0, Lˈˋ/ᴵʼ;->ﹳٴ:Lˈˋ/ﹳⁱ;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˈˋ/ᴵʼ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lˈˋ/ᴵʼ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˈˋ/ᴵʼ;->ʽ:Ljava/lang/String;

    iget-object v3, p1, Lˈˋ/ᴵʼ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lˈˋ/ᴵʼ;->ˈ:J

    iget-wide v5, p1, Lˈˋ/ᴵʼ;->ˈ:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lˈˋ/ᴵʼ;->ﹳٴ:Lˈˋ/ﹳⁱ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ᴵʼ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ᴵʼ;->ʽ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    iget-wide v2, p0, Lˈˋ/ᴵʼ;->ˈ:J

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RolloutAssignment{rolloutVariant="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ᴵʼ;->ﹳٴ:Lˈˋ/ﹳⁱ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᴵʼ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameterValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᴵʼ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ᴵʼ;->ˈ:J

    const-string v3, "}"

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ˉʿ(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
