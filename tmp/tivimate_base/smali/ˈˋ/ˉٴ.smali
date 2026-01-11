.class public final Lˈˋ/ˉٴ;
.super Lˈˋ/ᐧﹶ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:[B

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˋ/ˉٴ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˈˋ/ˉٴ;->ⁱˊ:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˈˋ/ᐧﹶ;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lˈˋ/ᐧﹶ;

    move-object v1, p1

    check-cast v1, Lˈˋ/ˉٴ;

    iget-object v3, v1, Lˈˋ/ˉٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v4, p0, Lˈˋ/ˉٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p1, Lˈˋ/ˉٴ;

    if-eqz v3, :cond_1

    check-cast p1, Lˈˋ/ˉٴ;

    iget-object p1, p1, Lˈˋ/ˉٴ;->ⁱˊ:[B

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lˈˋ/ˉٴ;->ⁱˊ:[B

    :goto_0
    iget-object v1, p0, Lˈˋ/ˉٴ;->ⁱˊ:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lˈˋ/ˉٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˈˋ/ˉٴ;->ⁱˊ:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File{filename="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ˉٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˉٴ;->ⁱˊ:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
