.class public final Lﹳי/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳי/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lﹳי/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null version"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lﹳי/ﹳٴ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lﹳי/ﹳٴ;

    iget-object v1, p0, Lﹳי/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lﹳי/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lﹳי/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iget-object p1, p1, Lﹳי/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lﹳי/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lﹳי/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LibraryVersion{libraryName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹳי/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lﹳי/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
