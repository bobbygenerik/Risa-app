.class public final Lˈˋ/ـˏ;
.super Lˈˋ/יﹳ;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/List;

.field public final ˈ:Lˈˋ/יﹳ;

.field public final ˑﹳ:I

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lˈˋ/יﹳ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˋ/ـˏ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˈˋ/ـˏ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lˈˋ/ـˏ;->ʽ:Ljava/util/List;

    iput-object p4, p0, Lˈˋ/ـˏ;->ˈ:Lˈˋ/יﹳ;

    iput p5, p0, Lˈˋ/ـˏ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˈˋ/יﹳ;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lˈˋ/יﹳ;

    check-cast p1, Lˈˋ/ـˏ;

    iget-object v1, p1, Lˈˋ/ـˏ;->ˈ:Lˈˋ/יﹳ;

    iget-object v3, p1, Lˈˋ/ـˏ;->ⁱˊ:Ljava/lang/String;

    iget-object v4, p1, Lˈˋ/ـˏ;->ﹳٴ:Ljava/lang/String;

    iget-object v5, p0, Lˈˋ/ـˏ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lˈˋ/ـˏ;->ⁱˊ:Ljava/lang/String;

    if-nez v4, :cond_1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iget-object v3, p0, Lˈˋ/ـˏ;->ʽ:Ljava/util/List;

    iget-object v4, p1, Lˈˋ/ـˏ;->ʽ:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lˈˋ/ـˏ;->ˈ:Lˈˋ/יﹳ;

    if-nez v3, :cond_2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget v1, p0, Lˈˋ/ـˏ;->ˑﹳ:I

    iget p1, p1, Lˈˋ/ـˏ;->ˑﹳ:I

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    iget-object v0, p0, Lˈˋ/ـˏ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lˈˋ/ـˏ;->ⁱˊ:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ـˏ;->ʽ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ـˏ;->ˈ:Lˈˋ/יﹳ;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lˈˋ/ـˏ;->ˑﹳ:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ـˏ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ـˏ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ـˏ;->ʽ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", causedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ـˏ;->ˈ:Lˈˋ/יﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overflowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ـˏ;->ˑﹳ:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
