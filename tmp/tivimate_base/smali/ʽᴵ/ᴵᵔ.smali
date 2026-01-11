.class public final Lʽᴵ/ᴵᵔ;
.super Lʽᴵ/ﾞʻ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lʽᴵ/ﾞʻ;

.field public final ˈ:Lʽᴵ/ﾞʻ;

.field public final ˑﹳ:Lʽᴵ/ﾞʻ;

.field public final ⁱˊ:Lʽᴵ/ﾞʻ;

.field public final ﹳٴ:Lʽᴵ/ʾˋ;

.field public final ﾞᴵ:Lʽᴵ/ﾞʻ;


# direct methods
.method public constructor <init>(Lʽᴵ/ʾˋ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ᴵᵔ;->ﹳٴ:Lʽᴵ/ʾˋ;

    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lʽᴵ/ʾˋ;->ﹳٴ(Ljava/lang/Class;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    iput-object v0, p0, Lʽᴵ/ᴵᵔ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lʽᴵ/ʾˋ;->ﹳٴ(Ljava/lang/Class;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    iput-object v0, p0, Lʽᴵ/ᴵᵔ;->ʽ:Lʽᴵ/ﾞʻ;

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lʽᴵ/ʾˋ;->ﹳٴ(Ljava/lang/Class;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    iput-object v0, p0, Lʽᴵ/ᴵᵔ;->ˈ:Lʽᴵ/ﾞʻ;

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lʽᴵ/ʾˋ;->ﹳٴ(Ljava/lang/Class;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    iput-object v0, p0, Lʽᴵ/ᴵᵔ;->ˑﹳ:Lʽᴵ/ﾞʻ;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lʽᴵ/ʾˋ;->ﹳٴ(Ljava/lang/Class;)Lʽᴵ/ﾞʻ;

    move-result-object p1

    iput-object p1, p0, Lʽᴵ/ᴵᵔ;->ﾞᴵ:Lʽᴵ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JsonAdapter(Object)"

    return-object v0
.end method

.method public final ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ᵎﹶ()Lʽᴵ/ᵔﹳ;

    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ˉˆ()Lʽᴵ/ᵔﹳ;

    return-void

    :cond_0
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v1, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    const/4 v2, 0x0

    iget-object v3, p0, Lʽᴵ/ᴵᵔ;->ﹳٴ:Lʽᴵ/ʾˋ;

    invoke-virtual {v3, v0, v1, v2}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    return-void
.end method

.method public final ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ʿᵢ()I

    move-result v0

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ˈʿ()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ʿᵢ()I

    move-result v2

    invoke-static {v2}, Lʼﾞ/ˊˋ;->ʾˋ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lʽᴵ/ᴵᵔ;->ﾞᴵ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lʽᴵ/ᴵᵔ;->ˑﹳ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lʽᴵ/ᴵᵔ;->ˈ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lʽᴵ/ᴵᵔ;->ʽ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v0, p0, Lʽᴵ/ᴵᵔ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
