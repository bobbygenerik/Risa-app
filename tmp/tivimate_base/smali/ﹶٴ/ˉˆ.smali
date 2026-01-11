.class public final Lﹶٴ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉﾞ/ˈ;
.implements Lﹶٴ/ⁱˊ;


# instance fields
.field public final ʽ:Ljava/util/Set;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lˉﾞ/ˈ;


# direct methods
.method public constructor <init>(Lˉﾞ/ˈ;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lﹶٴ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    instance-of v0, p1, Lﹶٴ/ⁱˊ;

    if-eqz v0, :cond_0

    check-cast p1, Lﹶٴ/ⁱˊ;

    invoke-interface {p1}, Lﹶٴ/ⁱˊ;->ᵎﹶ()Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lˉﾞ/ˈ;->ˈ()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Lˉﾞ/ˈ;->ˈ()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Lˉﾞ/ˈ;->ˑﹳ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lﹶٴ/ˉˆ;->ʽ:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lﹶٴ/ˉˆ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lﹶٴ/ˉˆ;

    iget-object p1, p1, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    iget-object v1, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0}, Lˉﾞ/ˈ;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0, p1}, Lˉﾞ/ˈ;->ʼˎ(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final ʽ()Lᴵˋ/ˊʻ;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v0

    return-object v0
.end method

.method public final ˆʾ(I)Lˉﾞ/ˈ;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0, p1}, Lˉﾞ/ˈ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()I
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0}, Lˉﾞ/ˈ;->ˈ()I

    move-result v0

    return v0
.end method

.method public final ˑﹳ(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0, p1}, Lˉﾞ/ˈ;->ˑﹳ(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎﹶ()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ʽ:Ljava/util/Set;

    return-object v0
.end method

.method public final ᵔᵢ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0, p1}, Lˉﾞ/ˈ;->ﹳٴ(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final ﾞᴵ()Z
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉˆ;->ﹳٴ:Lˉﾞ/ˈ;

    invoke-interface {v0}, Lˉﾞ/ˈ;->ﾞᴵ()Z

    move-result v0

    return v0
.end method
