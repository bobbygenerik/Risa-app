.class public final Lٴˑ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/Set;

.field public final ˈ:Ljava/util/Set;

.field public final ⁱˊ:Ljava/util/Map;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴˑ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lٴˑ/ˆʾ;->ⁱˊ:Ljava/util/Map;

    iput-object p3, p0, Lٴˑ/ˆʾ;->ʽ:Ljava/util/Set;

    iput-object p4, p0, Lٴˑ/ˆʾ;->ˈ:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lٴˑ/ˆʾ;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lٴˑ/ˆʾ;

    iget-object v0, p1, Lٴˑ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p0, Lٴˑ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lٴˑ/ˆʾ;->ⁱˊ:Ljava/util/Map;

    iget-object v1, p1, Lٴˑ/ˆʾ;->ⁱˊ:Ljava/util/Map;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lٴˑ/ˆʾ;->ʽ:Ljava/util/Set;

    iget-object v1, p1, Lٴˑ/ˆʾ;->ʽ:Ljava/util/Set;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Lٴˑ/ˆʾ;->ˈ:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object p1, p1, Lٴˑ/ˆʾ;->ˈ:Ljava/util/Set;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lٴˑ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lٴˑ/ˆʾ;->ⁱˊ:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lٴˑ/ˆʾ;->ʽ:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            |TableInfo {\n            |    name = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lٴˑ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n            |    columns = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴˑ/ˆʾ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lʻٴ/ˑﹳ;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lʻٴ/ˑﹳ;-><init>(I)V

    invoke-static {v1, v2}, Lﹶˈ/ˆʾ;->ʼـ(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lٴˑ/ﾞᴵ;->ˑﹳ(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            |    foreignKeys = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴˑ/ˆʾ;->ʽ:Ljava/util/Set;

    invoke-static {v1}, Lٴˑ/ﾞᴵ;->ˑﹳ(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            |    indices = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴˑ/ˆʾ;->ˈ:Ljava/util/Set;

    if-eqz v1, :cond_0

    new-instance v2, Lʻٴ/ˑﹳ;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lʻٴ/ˑﹳ;-><init>(I)V

    invoke-static {v1, v2}, Lﹶˈ/ˆʾ;->ʼـ(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    :goto_0
    invoke-static {v1}, Lٴˑ/ﾞᴵ;->ˑﹳ(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            |}\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lﹶˑ/ٴﹶ;->ﹳـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
