.class public final Lˎᵢ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˎᵢ/ˉˆ;

.field public final ˈ:Lˎᵢ/ʾˋ;

.field public final ˑﹳ:Ljava/util/Map;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lˎᵢ/ʼᐧ;

.field public ﾞᴵ:Lˎᵢ/ʽ;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ʻٴ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˎᵢ/ʼᐧ;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object v0, p1, Landroidx/leanback/widget/ʻٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    iget-object v0, p1, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʼˎ;

    invoke-virtual {v0}, Lʼٴ/ʼˎ;->ᵎﹶ()Lˎᵢ/ˉˆ;

    move-result-object v0

    iput-object v0, p0, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    iget-object v0, p1, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lˎᵢ/ʾˋ;

    iput-object v0, p0, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    iget-object p1, p1, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {p1}, Lﹶˈ/ˏי;->ᵎᵔ(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lˎᵢ/ʾᵎ;->ˑﹳ:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {v1}, Lˎᵢ/ˉˆ;->size()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ", headers=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Lʻᵢ/ˑﹳ;

    iget-object v5, v3, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lⁱᐧ/ʽ;->ˆʾ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "\u2588\u2588"

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lﹶˈ/ٴﹶ;->ᐧﾞ()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lˎᵢ/ʾᵎ;->ˑﹳ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ", tags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Landroidx/leanback/widget/ʻٴ;
    .locals 4

    .prologue
    new-instance v0, Landroidx/leanback/widget/ʻٴ;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroidx/leanback/widget/ʻٴ;-><init>(IZ)V

    sget-object v1, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    iget-object v2, p0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iput-object v2, v0, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    iget-object v2, p0, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    iput-object v2, v0, Landroidx/leanback/widget/ʻٴ;->ˈٴ:Ljava/lang/Object;

    iget-object v2, p0, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    iput-object v2, v0, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    iget-object v2, p0, Lˎᵢ/ʾᵎ;->ˑﹳ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    iget-object v1, p0, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {v1}, Lˎᵢ/ˉˆ;->ˈ()Lʼٴ/ʼˎ;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    return-object v0
.end method
