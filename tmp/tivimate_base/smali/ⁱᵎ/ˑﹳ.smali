.class public final Lⁱᵎ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Z

.field public final ˈ:Z

.field public final ⁱˊ:Z

.field public final ﹳٴ:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    iput-boolean p2, p0, Lⁱᵎ/ˑﹳ;->ⁱˊ:Z

    iput-boolean p3, p0, Lⁱᵎ/ˑﹳ;->ʽ:Z

    iput-boolean p4, p0, Lⁱᵎ/ˑﹳ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lⁱᵎ/ˑﹳ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lⁱᵎ/ˑﹳ;

    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    iget-boolean v3, p1, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ⁱˊ:Z

    iget-boolean v3, p1, Lⁱᵎ/ˑﹳ;->ⁱˊ:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ʽ:Z

    iget-boolean v3, p1, Lⁱᵎ/ˑﹳ;->ʽ:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ˈ:Z

    iget-boolean p1, p1, Lⁱᵎ/ˑﹳ;->ˈ:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    iget-boolean v0, p0, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lⁱᵎ/ˑﹳ;->ⁱˊ:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lⁱᵎ/ˑﹳ;->ʽ:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lⁱᵎ/ˑﹳ;->ˈ:Z

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkState(isConnected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValidated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ⁱˊ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMetered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ʽ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNotRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lⁱᵎ/ˑﹳ;->ˈ:Z

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ᵔʾ(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
