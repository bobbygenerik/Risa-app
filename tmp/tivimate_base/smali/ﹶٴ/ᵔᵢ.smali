.class public final Lﹶٴ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיʼ/ﹳٴ;


# instance fields
.field public final ⁱˊ:Lﹶٴ/ᵎﹶ;

.field public final ﹳٴ:Lיʼ/ﹳٴ;


# direct methods
.method public constructor <init>(Lיʼ/ﹳٴ;)V
    .locals 2

    sget-object v0, Lﹶٴ/ʼᐧ;->ﹳٴ:Lﹶٴ/ʼᐧ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶٴ/ᵔᵢ;->ﹳٴ:Lיʼ/ﹳٴ;

    new-instance v0, Lﹶٴ/ᵎﹶ;

    sget-object v1, Lﹶٴ/ʼᐧ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    invoke-interface {p1}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lﹶٴ/ᵎﹶ;-><init>(Lˉﾞ/ˈ;Lˉﾞ/ˈ;)V

    iput-object v0, p0, Lﹶٴ/ᵔᵢ;->ⁱˊ:Lﹶٴ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 9

    .prologue
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {p0}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parse/ʽˑ;->ᵎﹶ(Lˉﾞ/ˈ;)Lcom/parse/ʽˑ;

    move-result-object p1

    :goto_0
    invoke-interface {p0}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parse/ʽˑ;->ˉˆ(Lˉﾞ/ˈ;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/2addr v2, v1

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    sget-object v4, Lﹶٴ/ʼᐧ;->ﹳٴ:Lﹶٴ/ʼᐧ;

    iget-object v5, p0, Lﹶٴ/ᵔᵢ;->ⁱˊ:Lﹶٴ/ᵎﹶ;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v2, v4, v6}, Lcom/parse/ʽˑ;->ʻٴ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v5}, Lcom/parse/ʽˑ;->ˉˆ(Lˉﾞ/ˈ;)I

    move-result v7

    add-int/lit8 v8, v2, 0x1

    if-ne v7, v8, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v8, p0, Lﹶٴ/ᵔᵢ;->ﹳٴ:Lיʼ/ﹳٴ;

    if-eqz v2, :cond_0

    invoke-interface {v8}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v2

    invoke-interface {v2}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v2

    instance-of v2, v2, Lˉﾞ/ʽ;

    if-nez v2, :cond_0

    invoke-static {v3, v4}, Lﹶˈ/ˏי;->ᴵˑ(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v5, v7, v8, v2}, Lcom/parse/ʽˑ;->ʻٴ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5, v7, v8, v6}, Lcom/parse/ʽˑ;->ʻٴ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "Value must follow key in a map, index for key: "

    const-string v0, ", returned index for value: "

    invoke-static {v2, v7, p1, v0}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p0}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/parse/ʽˑ;->ʾˋ(Lˉﾞ/ˈ;)V

    return-object v0
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ᵔᵢ;->ⁱˊ:Lﹶٴ/ᵎﹶ;

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 6

    .prologue
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    iget-object v0, p0, Lﹶٴ/ᵔᵢ;->ⁱˊ:Lﹶٴ/ᵎﹶ;

    invoke-virtual {p1, v0}, Lʻʻ/ʽ;->ﹳٴ(Lˉﾞ/ˈ;)Lʻʻ/ʽ;

    move-result-object p1

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lﹶٴ/ʼᐧ;->ﹳٴ:Lﹶٴ/ʼᐧ;

    invoke-virtual {p1, v0, v1, v5, v3}, Lʻʻ/ʽ;->ᵎﹶ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lﹶٴ/ᵔᵢ;->ﹳٴ:Lיʼ/ﹳٴ;

    invoke-virtual {p1, v0, v4, v3, v2}, Lʻʻ/ʽ;->ᵎﹶ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lʻʻ/ʽ;->ˆʾ()V

    return-void
.end method
