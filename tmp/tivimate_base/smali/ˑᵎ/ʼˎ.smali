.class public final Lˑᵎ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lˑᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    iput p1, p0, Lˑᵎ/ʼˎ;->ⁱˊ:I

    iput p2, p0, Lˑᵎ/ʼˎ;->ʽ:I

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
    instance-of v1, p1, Lˑᵎ/ʼˎ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lˑᵎ/ʼˎ;

    iget-object v1, p0, Lˑᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lˑᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lˑᵎ/ʼˎ;->ⁱˊ:I

    iget v3, p1, Lˑᵎ/ʼˎ;->ⁱˊ:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lˑᵎ/ʼˎ;->ʽ:I

    iget p1, p1, Lˑᵎ/ʼˎ;->ʽ:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lˑᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˑᵎ/ʼˎ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˑᵎ/ʼˎ;->ʽ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemIdInfo(workSpecId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˑᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑᵎ/ʼˎ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑᵎ/ʼˎ;->ʽ:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
