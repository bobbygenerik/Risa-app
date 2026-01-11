.class public final Landroidx/lifecycle/ﹳـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎ/ˈ;


# instance fields
.field public ʽ:Landroid/os/Bundle;

.field public final ˈ:Lʻᵢ/ʼˎ;

.field public ⁱˊ:Z

.field public final ﹳٴ:Lˑʼ/ᵎˊ;


# direct methods
.method public constructor <init>(Lˑʼ/ᵎˊ;Landroidx/lifecycle/ᴵʼ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ﹳـ;->ﹳٴ:Lˑʼ/ᵎˊ;

    new-instance p1, Landroidx/lifecycle/ـˏ;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lʻᵢ/ʼˎ;

    invoke-direct {p2, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p2, p0, Landroidx/lifecycle/ﹳـ;->ˈ:Lʻᵢ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroidx/lifecycle/ﹳـ;->ⁱˊ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/lifecycle/ﹳـ;->ﹳٴ:Lˑʼ/ᵎˊ;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Lˑʼ/ᵎˊ;->ʼᐧ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lʻᵢ/ˑﹳ;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lʻᵢ/ˑﹳ;

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ﹳٴ([Lʻᵢ/ˑﹳ;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidx/lifecycle/ﹳـ;->ʽ:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iput-object v1, p0, Landroidx/lifecycle/ﹳـ;->ʽ:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ﹳـ;->ⁱˊ:Z

    iget-object v0, p0, Landroidx/lifecycle/ﹳـ;->ˈ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ˈⁱ;

    :cond_2
    return-void
.end method

.method public final ﹳٴ()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v0, 0x0

    new-array v1, v0, [Lʻᵢ/ˑﹳ;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lʻᵢ/ˑﹳ;

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ﹳٴ([Lʻᵢ/ˑﹳ;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidx/lifecycle/ﹳـ;->ʽ:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Landroidx/lifecycle/ﹳـ;->ˈ:Lʻᵢ/ʼˎ;

    invoke-virtual {v2}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ˈⁱ;

    iget-object v2, v2, Landroidx/lifecycle/ˈⁱ;->ⁱˊ:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/ˑٴ;

    iget-object v3, v3, Landroidx/lifecycle/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/ʻٴ;

    iget-object v3, v3, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lʽ/ˈ;

    invoke-virtual {v3}, Lʽ/ˈ;->ﹳٴ()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Landroidx/lifecycle/ﹳـ;->ⁱˊ:Z

    return-object v1
.end method
