.class public final Lٴˑ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/List;

.field public final ˈ:Ljava/util/List;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴˑ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    iput-boolean p2, p0, Lٴˑ/ʼˎ;->ⁱˊ:Z

    iput-object p3, p0, Lٴˑ/ʼˎ;->ʽ:Ljava/util/List;

    iput-object p4, p0, Lٴˑ/ʼˎ;->ˈ:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    const-string p3, "ASC"

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lٴˑ/ʼˎ;->ˈ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lٴˑ/ʼˎ;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lٴˑ/ʼˎ;

    iget-object v0, p1, Lٴˑ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    iget-boolean v2, p1, Lٴˑ/ʼˎ;->ⁱˊ:Z

    iget-boolean v3, p0, Lٴˑ/ʼˎ;->ⁱˊ:Z

    if-eq v3, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lٴˑ/ʼˎ;->ʽ:Ljava/util/List;

    iget-object v3, p1, Lٴˑ/ʼˎ;->ʽ:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lٴˑ/ʼˎ;->ˈ:Ljava/util/List;

    iget-object p1, p1, Lٴˑ/ʼˎ;->ˈ:Ljava/util/List;

    invoke-static {v2, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object p1, p0, Lٴˑ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v2, "index_"

    invoke-static {p1, v2, v1}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0, v2, v1}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const-string v0, "index_"

    const/4 v1, 0x0

    iget-object v2, p0, Lٴˑ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x46960e33

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lٴˑ/ʼˎ;->ⁱˊ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lٴˑ/ʼˎ;->ʽ:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lٴˑ/ʼˎ;->ˈ:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            |Index {\n            |   name = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lٴˑ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n            |   unique = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lٴˑ/ʼˎ;->ⁱˊ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\',\n            |   columns = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v7, 0x3e

    iget-object v2, p0, Lٴˑ/ʼˎ;->ʽ:Ljava/util/List;

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lﹶˑ/ٴﹶ;->ʼˈ(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "},"

    invoke-static {v1}, Lﹶˑ/ٴﹶ;->ʼˈ(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n            |   orders = {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/16 v8, 0x3e

    iget-object v3, p0, Lٴˑ/ʼˎ;->ˈ:Ljava/util/List;

    const-string v4, ","

    invoke-static/range {v3 .. v8}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lﹶˑ/ٴﹶ;->ʼˈ(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, " }"

    invoke-static {v2}, Lﹶˑ/ٴﹶ;->ʼˈ(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n            |}\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lﹶˑ/ٴﹶ;->ﹳـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lﹶˑ/ٴﹶ;->ʼˈ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
