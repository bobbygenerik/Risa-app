.class public final Lˈˋ/ʿᵢ;
.super Lˈˋ/ʻᴵ;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:Z

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lˈˋ/ʿᵢ;->ﹳٴ:Ljava/lang/String;

    iput p1, p0, Lˈˋ/ʿᵢ;->ⁱˊ:I

    iput p2, p0, Lˈˋ/ʿᵢ;->ʽ:I

    iput-boolean p4, p0, Lˈˋ/ʿᵢ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˈˋ/ʻᴵ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lˈˋ/ʻᴵ;

    check-cast p1, Lˈˋ/ʿᵢ;

    iget-object v1, p1, Lˈˋ/ʿᵢ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p0, Lˈˋ/ʿᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lˈˋ/ʿᵢ;->ⁱˊ:I

    iget v3, p1, Lˈˋ/ʿᵢ;->ⁱˊ:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lˈˋ/ʿᵢ;->ʽ:I

    iget v3, p1, Lˈˋ/ʿᵢ;->ʽ:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lˈˋ/ʿᵢ;->ˈ:Z

    iget-boolean p1, p1, Lˈˋ/ʿᵢ;->ˈ:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-object v0, p0, Lˈˋ/ʿᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ʿᵢ;->ⁱˊ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ʿᵢ;->ʽ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lˈˋ/ʿᵢ;->ˈ:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessDetails{processName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ʿᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ʿᵢ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ʿᵢ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˈˋ/ʿᵢ;->ˈ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
