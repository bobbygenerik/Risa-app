.class public final Landroidx/lifecycle/ˑٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Landroidx/leanback/widget/ʻٴ;

.field public final ﹳٴ:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ˑٴ;->ﹳٴ:Ljava/util/LinkedHashMap;

    new-instance v0, Landroidx/leanback/widget/ʻٴ;

    sget-object v1, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ʻٴ;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/lifecycle/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/ʻٴ;

    return-void
.end method

.method public constructor <init>(Lⁱˏ/ﾞᴵ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ˑٴ;->ﹳٴ:Ljava/util/LinkedHashMap;

    new-instance v0, Landroidx/leanback/widget/ʻٴ;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/ʻٴ;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/lifecycle/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/ʻٴ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    if-eqz p1, :cond_3

    sget-object v0, Lˑ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t put value with type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " into saved state"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    sget-object v0, Lˑ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/ˑٴ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/ˊʻ;

    if-eqz v1, :cond_4

    check-cast v0, Landroidx/lifecycle/ˊʻ;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ʽʽ;->ٴﹶ(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroidx/lifecycle/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ʻٴ;->ـˆ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ﹳٴ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/ʻٴ;

    iget-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵎˈ/ᵢˏ;

    if-eqz v3, :cond_1

    check-cast v3, Lᵎˈ/ٴᵢ;

    invoke-virtual {v3}, Lᵎˈ/ٴᵢ;->ᵔᵢ()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
