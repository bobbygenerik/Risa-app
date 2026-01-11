.class public final Lᴵˆ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lᴵˆ/ʽ;

.field public final ﹳٴ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lᴵˆ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵˆ/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    iput-object p2, p0, Lᴵˆ/ﹳٴ;->ⁱˊ:Lᴵˆ/ʽ;

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
    instance-of v1, p1, Lᴵˆ/ﹳٴ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lᴵˆ/ﹳٴ;

    iget-object v1, p0, Lᴵˆ/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    iget-object v3, p1, Lᴵˆ/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lᴵˆ/ﹳٴ;->ⁱˊ:Lᴵˆ/ʽ;

    iget-object p1, p1, Lᴵˆ/ﹳٴ;->ⁱˊ:Lᴵˆ/ʽ;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const v0, 0xf4243

    mul-int v1, v0, v0

    iget-object v2, p0, Lᴵˆ/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v0, p0, Lᴵˆ/ﹳٴ;->ⁱˊ:Lᴵˆ/ʽ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    const v1, -0x2aff6277

    mul-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{code=null, payload="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lᴵˆ/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˆ/ﹳٴ;->ⁱˊ:Lᴵˆ/ʽ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productData=null, eventContext=null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
