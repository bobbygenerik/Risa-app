.class public final Lˈי/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈי/ᵔᵢ;
.implements Ljava/io/Serializable;


# instance fields
.field public final ʾˋ:Lˈי/ᵔᵢ;

.field public final ᴵˊ:Lˈי/ﾞᴵ;


# direct methods
.method public constructor <init>(Lˈי/ᵔᵢ;Lˈי/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    iput-object p2, p0, Lˈי/ʽ;->ᴵˊ:Lˈי/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    if-eq p0, p1, :cond_7

    instance-of v0, p1, Lˈי/ʽ;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Lˈי/ʽ;

    const/4 v0, 0x2

    move-object v2, p1

    move v3, v0

    :goto_0
    iget-object v2, v2, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    instance-of v4, v2, Lˈי/ʽ;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Lˈי/ʽ;

    goto :goto_1

    :cond_0
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_5

    move-object v2, p0

    :goto_2
    iget-object v2, v2, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    instance-of v4, v2, Lˈי/ʽ;

    if-eqz v4, :cond_1

    check-cast v2, Lˈי/ʽ;

    goto :goto_3

    :cond_1
    move-object v2, v5

    :goto_3
    if-nez v2, :cond_4

    if-ne v3, v0, :cond_6

    move-object v0, p0

    :goto_4
    iget-object v2, v0, Lˈי/ʽ;->ᴵˊ:Lˈי/ﾞᴵ;

    invoke-interface {v2}, Lˈי/ﾞᴵ;->getKey()Lˈי/ᵎﹶ;

    move-result-object v3

    invoke-virtual {p1, v3}, Lˈי/ʽ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v3

    invoke-static {v3, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v1

    goto :goto_5

    :cond_2
    iget-object v0, v0, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    instance-of v2, v0, Lˈי/ʽ;

    if-eqz v2, :cond_3

    check-cast v0, Lˈי/ʽ;

    goto :goto_4

    :cond_3
    check-cast v0, Lˈי/ﾞᴵ;

    invoke-interface {v0}, Lˈי/ﾞᴵ;->getKey()Lˈי/ᵎﹶ;

    move-result-object v2

    invoke-virtual {p1, v2}, Lˈי/ʽ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_6
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lˈי/ʽ;->ᴵˊ:Lˈי/ﾞᴵ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lʼⁱ/ˎᐧ;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lʼⁱ/ˎᐧ;-><init>(I)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lˈי/ʽ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ﾞʻ(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    invoke-interface {v0, p1, p2}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lˈי/ʽ;->ᴵˊ:Lˈי/ﾞᴵ;

    invoke-interface {p2, p1, v0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;
    .locals 2

    .prologue
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lˈי/ʽ;->ᴵˊ:Lˈי/ﾞᴵ;

    invoke-interface {v1, p1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    instance-of v1, v0, Lˈי/ʽ;

    if-eqz v1, :cond_1

    check-cast v0, Lˈי/ʽ;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final ـˆ(Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˈי/ʽ;->ᴵˊ:Lˈי/ﾞᴵ;

    invoke-interface {v0, p1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    iget-object v2, p0, Lˈי/ʽ;->ʾˋ:Lˈי/ᵔᵢ;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, Lˈי/ᵔᵢ;->ـˆ(Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object p0

    :cond_1
    sget-object v1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Lˈי/ʽ;

    invoke-direct {v1, p1, v0}, Lˈי/ʽ;-><init>(Lˈי/ᵔᵢ;Lˈי/ﾞᴵ;)V

    return-object v1
.end method

.method public final ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method
