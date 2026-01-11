.class public final Lʾˈ/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:J

.field public final ˑﹳ:Lʾˈ/ٴﹶ;

.field public final ᵎﹶ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLʾˈ/ٴﹶ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ᴵˑ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lʾˈ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    iput p3, p0, Lʾˈ/ᴵˑ;->ʽ:I

    iput-wide p4, p0, Lʾˈ/ᴵˑ;->ˈ:J

    iput-object p6, p0, Lʾˈ/ᴵˑ;->ˑﹳ:Lʾˈ/ٴﹶ;

    iput-object p7, p0, Lʾˈ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    iput-object p8, p0, Lʾˈ/ᴵˑ;->ᵎﹶ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʾˈ/ᴵˑ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾˈ/ᴵˑ;

    iget-object v1, p0, Lʾˈ/ᴵˑ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lʾˈ/ᴵˑ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lʾˈ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lʾˈ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lʾˈ/ᴵˑ;->ʽ:I

    iget v3, p1, Lʾˈ/ᴵˑ;->ʽ:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lʾˈ/ᴵˑ;->ˈ:J

    iget-wide v5, p1, Lʾˈ/ᴵˑ;->ˈ:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lʾˈ/ᴵˑ;->ˑﹳ:Lʾˈ/ٴﹶ;

    iget-object v3, p1, Lʾˈ/ᴵˑ;->ˑﹳ:Lʾˈ/ٴﹶ;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lʾˈ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    iget-object v3, p1, Lʾˈ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lʾˈ/ᴵˑ;->ᵎﹶ:Ljava/lang/String;

    iget-object p1, p1, Lʾˈ/ᴵˑ;->ᵎﹶ:Ljava/lang/String;

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lʾˈ/ᴵˑ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lʾˈ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lʾˈ/ᴵˑ;->ʽ:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/16 v2, 0x20

    iget-wide v3, p0, Lʾˈ/ᴵˑ;->ˈ:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lʾˈ/ᴵˑ;->ˑﹳ:Lʾˈ/ٴﹶ;

    invoke-virtual {v2}, Lʾˈ/ٴﹶ;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lʾˈ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lʾˈ/ᴵˑ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionInfo(sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʾˈ/ᴵˑ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʾˈ/ᴵˑ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lʾˈ/ᴵˑ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dataCollectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ᴵˑ;->ˑﹳ:Lʾˈ/ٴﹶ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseInstallationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseAuthenticationToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ᴵˑ;->ᵎﹶ:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ﾞʻ(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
