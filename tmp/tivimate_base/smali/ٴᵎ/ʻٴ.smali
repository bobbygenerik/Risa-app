.class public final Lٴᵎ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Throwable;

.field public final ⁱˊ:Lٴᵎ/ـˆ;

.field public final ﹳٴ:Lٴᵎ/ـˆ;


# direct methods
.method public synthetic constructor <init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    and-int/lit8 p3, p3, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Lٴᵎ/ˑﹳ;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lٴᵎ/ـˆ;Lٴᵎ/ˑﹳ;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    iput-object p2, p0, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    iput-object p3, p0, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

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
    instance-of v1, p1, Lٴᵎ/ʻٴ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lٴᵎ/ʻٴ;

    iget-object v1, p0, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    iget-object v3, p1, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    iget-object v3, p1, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

    iget-object p1, p1, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-object v0, p0, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectResult(plan="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lٴᵎ/ʻٴ;->ﹳٴ:Lٴᵎ/ـˆ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextPlan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴᵎ/ʻٴ;->ⁱˊ:Lٴᵎ/ـˆ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
