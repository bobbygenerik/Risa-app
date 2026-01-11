.class public final Lٴˑ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Ljava/util/List;

.field public final ˑﹳ:Ljava/util/List;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴˑ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lٴˑ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lٴˑ/ᵔᵢ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lٴˑ/ᵔᵢ;->ˈ:Ljava/util/List;

    iput-object p5, p0, Lٴˑ/ᵔᵢ;->ˑﹳ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lٴˑ/ᵔᵢ;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lٴˑ/ᵔᵢ;

    iget-object v0, p1, Lٴˑ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p0, Lٴˑ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lٴˑ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p1, Lٴˑ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lٴˑ/ᵔᵢ;->ʽ:Ljava/lang/String;

    iget-object v1, p1, Lٴˑ/ᵔᵢ;->ʽ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lٴˑ/ᵔᵢ;->ˈ:Ljava/util/List;

    iget-object v1, p1, Lٴˑ/ᵔᵢ;->ˈ:Ljava/util/List;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_5
    iget-object v0, p0, Lٴˑ/ᵔᵢ;->ˑﹳ:Ljava/util/List;

    iget-object p1, p1, Lٴˑ/ᵔᵢ;->ˑﹳ:Ljava/util/List;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lٴˑ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lٴˑ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lٴˑ/ᵔᵢ;->ʽ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lٴˑ/ᵔᵢ;->ˈ:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lٴˑ/ᵔᵢ;->ˑﹳ:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            |ForeignKey {\n            |   referenceTable = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lٴˑ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n            |   onDelete = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴˑ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n            |   onUpdate = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴˑ/ᵔᵢ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\n            |   columnNames = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴˑ/ᵔᵢ;->ˈ:Ljava/util/List;

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ˑ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    const/16 v7, 0x3e

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

    const-string v2, "\n            |   referenceColumnNames = {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lٴˑ/ᵔᵢ;->ˑﹳ:Ljava/util/List;

    invoke-static {v2}, Lﹶˈ/ˆʾ;->ˑ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x3e

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
