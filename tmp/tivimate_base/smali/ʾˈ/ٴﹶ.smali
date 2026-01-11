.class public final Lʾˈ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:D

.field public final ⁱˊ:Lʾˈ/ˆʾ;

.field public final ﹳٴ:Lʾˈ/ˆʾ;


# direct methods
.method public constructor <init>(Lʾˈ/ˆʾ;Lʾˈ/ˆʾ;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ٴﹶ;->ﹳٴ:Lʾˈ/ˆʾ;

    iput-object p2, p0, Lʾˈ/ٴﹶ;->ⁱˊ:Lʾˈ/ˆʾ;

    iput-wide p3, p0, Lʾˈ/ٴﹶ;->ʽ:D

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
    instance-of v1, p1, Lʾˈ/ٴﹶ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾˈ/ٴﹶ;

    iget-object v1, p0, Lʾˈ/ٴﹶ;->ﹳٴ:Lʾˈ/ˆʾ;

    iget-object v3, p1, Lʾˈ/ٴﹶ;->ﹳٴ:Lʾˈ/ˆʾ;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lʾˈ/ٴﹶ;->ⁱˊ:Lʾˈ/ˆʾ;

    iget-object v3, p1, Lʾˈ/ٴﹶ;->ⁱˊ:Lʾˈ/ˆʾ;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lʾˈ/ٴﹶ;->ʽ:D

    iget-wide v5, p1, Lʾˈ/ٴﹶ;->ʽ:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lʾˈ/ٴﹶ;->ﹳٴ:Lʾˈ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʾˈ/ٴﹶ;->ⁱˊ:Lʾˈ/ˆʾ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lʾˈ/ٴﹶ;->ʽ:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataCollectionStatus(performance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʾˈ/ٴﹶ;->ﹳٴ:Lʾˈ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crashlytics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ٴﹶ;->ⁱˊ:Lʾˈ/ˆʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionSamplingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lʾˈ/ٴﹶ;->ʽ:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
