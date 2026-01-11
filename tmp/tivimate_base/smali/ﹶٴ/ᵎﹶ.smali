.class public final Lﹶٴ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉﾞ/ˈ;


# instance fields
.field public final ⁱˊ:Lˉﾞ/ˈ;

.field public final ﹳٴ:Lˉﾞ/ˈ;


# direct methods
.method public constructor <init>(Lˉﾞ/ˈ;Lˉﾞ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶٴ/ᵎﹶ;->ﹳٴ:Lˉﾞ/ˈ;

    iput-object p2, p0, Lﹶٴ/ᵎﹶ;->ⁱˊ:Lˉﾞ/ˈ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lﹶٴ/ᵎﹶ;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lﹶٴ/ᵎﹶ;

    iget-object v0, p0, Lﹶٴ/ᵎﹶ;->ﹳٴ:Lˉﾞ/ˈ;

    iget-object v1, p1, Lﹶٴ/ᵎﹶ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lﹶٴ/ᵎﹶ;->ⁱˊ:Lˉﾞ/ˈ;

    iget-object p1, p1, Lﹶٴ/ᵎﹶ;->ⁱˊ:Lˉﾞ/ˈ;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1

    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lﹶٴ/ᵎﹶ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x2a587831

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lﹶٴ/ᵎﹶ;->ⁱˊ:Lˉﾞ/ˈ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kotlin.collections.LinkedHashMap("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹶٴ/ᵎﹶ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lﹶٴ/ᵎﹶ;->ⁱˊ:Lˉﾞ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(I)Ljava/util/List;
    .locals 2

    .prologue
    if-ltz p1, :cond_0

    sget-object p1, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object p1

    :cond_0
    const-string v0, "Illegal index "

    const-string v1, ", kotlin.collections.LinkedHashMap expects only non-negative indices"

    invoke-static {p1, v0, v1}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʽ()Lᴵˋ/ˊʻ;
    .locals 1

    sget-object v0, Lˉﾞ/ﾞᴵ;->ˑﹳ:Lˉﾞ/ﾞᴵ;

    return-object v0
.end method

.method public final ˆʾ(I)Lˉﾞ/ˈ;
    .locals 2

    .prologue
    if-ltz p1, :cond_2

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lﹶٴ/ᵎﹶ;->ⁱˊ:Lˉﾞ/ˈ;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unreached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lﹶٴ/ᵎﹶ;->ﹳٴ:Lˉﾞ/ˈ;

    return-object p1

    :cond_2
    const-string v0, "Illegal index "

    const-string v1, ", kotlin.collections.LinkedHashMap expects only non-negative indices"

    invoke-static {p1, v0, v1}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˈ()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final ˑﹳ(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔᵢ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.collections.LinkedHashMap"

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/String;)I
    .locals 2

    .prologue
    invoke-static {p1}, Lﹶˑ/ᵔﹳ;->ᐧﾞ(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " is not a valid map index"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
