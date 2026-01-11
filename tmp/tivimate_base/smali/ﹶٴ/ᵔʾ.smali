.class public final Lﹶٴ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉﾞ/ˈ;


# instance fields
.field public final ⁱˊ:Lˉﾞ/ʽ;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lˉﾞ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶٴ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lﹶٴ/ᵔʾ;->ⁱˊ:Lˉﾞ/ʽ;

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
    instance-of v1, p1, Lﹶٴ/ᵔʾ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lﹶٴ/ᵔʾ;

    iget-object v1, p1, Lﹶٴ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p0, Lﹶٴ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v3, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lﹶٴ/ᵔʾ;->ⁱˊ:Lˉﾞ/ʽ;

    iget-object p1, p1, Lﹶٴ/ᵔʾ;->ⁱˊ:Lˉﾞ/ʽ;

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1

    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lﹶٴ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lﹶٴ/ᵔʾ;->ⁱˊ:Lˉﾞ/ʽ;

    invoke-virtual {v1}, Lᴵˋ/ˊʻ;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrimitiveDescriptor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹶٴ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ﾞʻ(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(I)Ljava/util/List;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Primitive descriptor does not have elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ()Lᴵˋ/ˊʻ;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ᵔʾ;->ⁱˊ:Lˉﾞ/ʽ;

    return-object v0
.end method

.method public final ˆʾ(I)Lˉﾞ/ˈ;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Primitive descriptor does not have elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹳ(I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Primitive descriptor does not have elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔᵢ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/String;)I
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Primitive descriptor does not have elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
