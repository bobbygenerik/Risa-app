.class public final Lᐧᴵ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/content/Context;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:Lʻᵢ/ʼˎ;

.field public final ⁱˊ:Lˏᵢ/ʼˎ;

.field public final ﹳٴ:Landroidx/lifecycle/ˉˆ;

.field public final ﾞᴵ:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Landroidx/lifecycle/ˉˆ;Lˏᵢ/ʼˎ;)V
    .locals 2

    .prologue
    new-instance v0, Lˏᵢ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lˏᵢ/ﹳٴ;-><init>(ILandroid/content/Context;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lᐧᴵ/ʽ;->ﹳٴ:Landroidx/lifecycle/ˉˆ;

    iput-object p5, p0, Lᐧᴵ/ʽ;->ⁱˊ:Lˏᵢ/ʼˎ;

    iput-object p1, p0, Lᐧᴵ/ʽ;->ʽ:Landroid/content/Context;

    iput-object p2, p0, Lᐧᴵ/ʽ;->ˈ:Ljava/lang/String;

    new-instance p1, Lʻᵢ/ʼˎ;

    invoke-direct {p1, v0}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p1, p0, Lᐧᴵ/ʽ;->ˑﹳ:Lʻᵢ/ʼˎ;

    sget-object p1, Lᐧᴵ/ˈ;->ﹳٴ:Ljava/util/LinkedHashSet;

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p3, p1}, Lﹶˈ/ˆʾ;->ˎᐧ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    :goto_0
    iput-object p1, p0, Lᐧᴵ/ʽ;->ﾞᴵ:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 4

    .prologue
    instance-of v0, p2, Lᐧᴵ/ⁱˊ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᐧᴵ/ⁱˊ;

    iget v1, v0, Lᐧᴵ/ⁱˊ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᐧᴵ/ⁱˊ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᐧᴵ/ⁱˊ;

    invoke-direct {v0, p0, p2}, Lᐧᴵ/ⁱˊ;-><init>(Lᐧᴵ/ʽ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lᐧᴵ/ⁱˊ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᐧᴵ/ⁱˊ;->ٴᵢ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lᐧᴵ/ⁱˊ;->ˈٴ:Lᐧᴵ/ʽ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p0, v0, Lᐧᴵ/ⁱˊ;->ˈٴ:Lᐧᴵ/ʽ;

    iput v2, v0, Lᐧᴵ/ⁱˊ;->ٴᵢ:I

    iget-object p2, p0, Lᐧᴵ/ʽ;->ﹳٴ:Landroidx/lifecycle/ˉˆ;

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/ˉˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p2, p1, :cond_3

    return-object p1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    iget-object p2, p1, Lᐧᴵ/ʽ;->ﾞᴵ:Ljava/util/Set;

    iget-object p1, p1, Lᐧᴵ/ʽ;->ˑﹳ:Lʻᵢ/ʼˎ;

    const/4 v0, 0x0

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
