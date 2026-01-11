.class public final Lˈˋ/ٴᵢ;
.super Lˈˋ/י;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˈˋ/ٴᵢ;->ﹳٴ:Ljava/util/List;

    iput-object p1, p0, Lˈˋ/ٴᵢ;->ⁱˊ:Ljava/lang/String;

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
    instance-of v1, p1, Lˈˋ/י;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lˈˋ/י;

    check-cast p1, Lˈˋ/ٴᵢ;

    iget-object v1, p1, Lˈˋ/ٴᵢ;->ⁱˊ:Ljava/lang/String;

    iget-object p1, p1, Lˈˋ/ٴᵢ;->ﹳٴ:Ljava/util/List;

    iget-object v3, p0, Lˈˋ/ٴᵢ;->ﹳٴ:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lˈˋ/ٴᵢ;->ⁱˊ:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˈˋ/ٴᵢ;->ﹳٴ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˈˋ/ٴᵢ;->ⁱˊ:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FilesPayload{files="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ٴᵢ;->ﹳٴ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴᵢ;->ⁱˊ:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
