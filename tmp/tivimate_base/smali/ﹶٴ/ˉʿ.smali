.class public Lﹶٴ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉﾞ/ˈ;
.implements Lﹶٴ/ⁱˊ;


# instance fields
.field public final ʼˎ:Ljava/lang/Object;

.field public final ʽ:I

.field public final ˆʾ:Ljava/lang/Object;

.field public ˈ:I

.field public final ˑﹳ:[Ljava/lang/String;

.field public final ٴﹶ:Ljava/lang/Object;

.field public final ᵎﹶ:[Z

.field public ᵔᵢ:Ljava/lang/Object;

.field public final ⁱˊ:Lﹶٴ/ˑﹳ;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:[Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lﹶٴ/ˑﹳ;I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶٴ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lﹶٴ/ˉʿ;->ⁱˊ:Lﹶٴ/ˑﹳ;

    iput p3, p0, Lﹶٴ/ˉʿ;->ʽ:I

    const/4 p1, -0x1

    iput p1, p0, Lﹶٴ/ˉʿ;->ˈ:I

    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lﹶٴ/ˉʿ;->ˑﹳ:[Ljava/lang/String;

    iget p1, p0, Lﹶٴ/ˉʿ;->ʽ:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lﹶٴ/ˉʿ;->ﾞᴵ:[Ljava/util/List;

    new-array p1, p1, [Z

    iput-object p1, p0, Lﹶٴ/ˉʿ;->ᵎﹶ:[Z

    sget-object p1, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    iput-object p1, p0, Lﹶٴ/ˉʿ;->ᵔᵢ:Ljava/lang/Object;

    new-instance p1, Lﹶٴ/ﾞʻ;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lﹶٴ/ﾞʻ;-><init>(Lﹶٴ/ˉʿ;I)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lˈˆ/ﾞᴵ;->ˉٴ(ILᴵⁱ/ﹳٴ;)Lʻᵢ/ʽ;

    move-result-object p1

    iput-object p1, p0, Lﹶٴ/ˉʿ;->ʼˎ:Ljava/lang/Object;

    new-instance p1, Lᵔʻ/ٴʼ;

    invoke-direct {p1, p0}, Lᵔʻ/ٴʼ;-><init>(Lﹶٴ/ˉʿ;)V

    invoke-static {p2, p1}, Lˈˆ/ﾞᴵ;->ˉٴ(ILᴵⁱ/ﹳٴ;)Lʻᵢ/ʽ;

    move-result-object p1

    iput-object p1, p0, Lﹶٴ/ˉʿ;->ˆʾ:Ljava/lang/Object;

    new-instance p1, Lﹶٴ/ﾞʻ;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lﹶٴ/ﾞʻ;-><init>(Lﹶٴ/ˉʿ;I)V

    invoke-static {p2, p1}, Lˈˆ/ﾞᴵ;->ˉٴ(ILᴵⁱ/ﹳٴ;)Lʻᵢ/ʽ;

    move-result-object p1

    iput-object p1, p0, Lﹶٴ/ˉʿ;->ٴﹶ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lﹶٴ/ˉʿ;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lˉﾞ/ˈ;

    invoke-interface {v0}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lﹶٴ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lﹶٴ/ˉʿ;

    iget-object v2, p0, Lﹶٴ/ˉʿ;->ˆʾ:Ljava/lang/Object;

    invoke-interface {v2}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lˉﾞ/ˈ;

    iget-object p1, p1, Lﹶٴ/ˉʿ;->ˆʾ:Ljava/lang/Object;

    invoke-interface {p1}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lˉﾞ/ˈ;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lˉﾞ/ˈ;->ˈ()I

    move-result p1

    iget v2, p0, Lﹶٴ/ˉʿ;->ʽ:I

    if-eq v2, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_7

    invoke-virtual {p0, p1}, Lﹶٴ/ˉʿ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object v3

    invoke-interface {v3}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1}, Lˉﾞ/ˈ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object v4

    invoke-interface {v4}, Lˉﾞ/ˈ;->ⁱˊ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lﹶٴ/ˉʿ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object v3

    invoke-interface {v3}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v3

    invoke-interface {v0, p1}, Lˉﾞ/ˈ;->ˆʾ(I)Lˉﾞ/ˈ;

    move-result-object v4

    invoke-interface {v4}, Lˉﾞ/ˈ;->ʽ()Lᴵˋ/ˊʻ;

    move-result-object v4

    invoke-static {v3, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    return v1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1

    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉʿ;->ٴﹶ:Ljava/lang/Object;

    invoke-interface {v0}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lﹶٴ/ˉʿ;->ʽ:I

    invoke-static {v0, v1}, Lˈˊ/ˉˆ;->ˉٴ(II)Lʿˈ/ʽ;

    move-result-object v2

    iget-object v0, p0, Lﹶٴ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lᐧᵎ/ˆʾ;

    const/16 v0, 0x18

    invoke-direct {v6, v0, p0}, Lᐧᵎ/ˆʾ;-><init>(ILjava/lang/Object;)V

    const/16 v7, 0x18

    const-string v3, ", "

    const-string v5, ")"

    invoke-static/range {v2 .. v7}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(I)Ljava/util/List;
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶٴ/ˉʿ;->ﾞᴵ:[Ljava/util/List;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    sget-object p1, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    :cond_0
    return-object p1
.end method

.method public final ʽ()Lᴵˋ/ˊʻ;
    .locals 1

    sget-object v0, Lˉﾞ/ﾞᴵ;->ʽ:Lˉﾞ/ﾞᴵ;

    return-object v0
.end method

.method public final ˆʾ(I)Lˉﾞ/ˈ;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉʿ;->ʼˎ:Ljava/lang/Object;

    invoke-interface {v0}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lיʼ/ﹳٴ;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()I
    .locals 1

    iget v0, p0, Lﹶٴ/ˉʿ;->ʽ:I

    return v0
.end method

.method public final ˑﹳ(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉʿ;->ˑﹳ:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final ٴﹶ(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    iget v0, p0, Lﹶٴ/ˉʿ;->ˈ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lﹶٴ/ˉʿ;->ˈ:I

    iget-object v1, p0, Lﹶٴ/ˉʿ;->ˑﹳ:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object p1, p0, Lﹶٴ/ˉʿ;->ᵎﹶ:[Z

    aput-boolean p2, p1, v0

    iget-object p1, p0, Lﹶٴ/ˉʿ;->ﾞᴵ:[Ljava/util/List;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    iget p1, p0, Lﹶٴ/ˉʿ;->ʽ:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length p2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lﹶٴ/ˉʿ;->ᵔᵢ:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final ᵎﹶ()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉʿ;->ᵔᵢ:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔᵢ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/String;)I
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶٴ/ˉʿ;->ᵔᵢ:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x3

    return p1
.end method

.method public ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
