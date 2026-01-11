.class public final Lٴʽ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʽ/ᵎﹶ;
.implements Landroidx/lifecycle/ˏי;


# instance fields
.field public final ʾˋ:Ljava/util/HashSet;

.field public final ᴵˊ:Landroidx/lifecycle/ـˆ;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ـˆ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lٴʽ/ᵔᵢ;->ʾˋ:Ljava/util/HashSet;

    iput-object p1, p0, Lٴʽ/ᵔᵢ;->ᴵˊ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    return-void
.end method


# virtual methods
.method public onDestroy(Landroidx/lifecycle/ʽﹳ;)V
    .locals 4
    .annotation runtime Landroidx/lifecycle/ˉٴ;
        value = .enum Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;
    .end annotation

    .prologue
    iget-object v0, p0, Lٴʽ/ᵔᵢ;->ʾˋ:Ljava/util/HashSet;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lٴʽ/ʼˎ;

    invoke-interface {v3}, Lٴʽ/ʼˎ;->ٴﹶ()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/ʽﹳ;)V
    .locals 3
    .annotation runtime Landroidx/lifecycle/ˉٴ;
        value = .enum Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;
    .end annotation

    .prologue
    iget-object p1, p0, Lٴʽ/ᵔᵢ;->ʾˋ:Ljava/util/HashSet;

    invoke-static {p1}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lٴʽ/ʼˎ;

    invoke-interface {v2}, Lٴʽ/ʼˎ;->ˆʾ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop(Landroidx/lifecycle/ʽﹳ;)V
    .locals 3
    .annotation runtime Landroidx/lifecycle/ˉٴ;
        value = .enum Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;
    .end annotation

    .prologue
    iget-object p1, p0, Lٴʽ/ᵔᵢ;->ʾˋ:Ljava/util/HashSet;

    invoke-static {p1}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lٴʽ/ʼˎ;

    invoke-interface {v2}, Lٴʽ/ʼˎ;->ʽ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʽ(Lٴʽ/ʼˎ;)V
    .locals 1

    iget-object v0, p0, Lٴʽ/ᵔᵢ;->ʾˋ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ˑﹳ(Lٴʽ/ʼˎ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lٴʽ/ᵔᵢ;->ʾˋ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lٴʽ/ᵔᵢ;->ᴵˊ:Landroidx/lifecycle/ـˆ;

    iget-object v0, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lٴʽ/ʼˎ;->ٴﹶ()V

    return-void

    :cond_0
    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ˈٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lٴʽ/ʼˎ;->ˆʾ()V

    return-void

    :cond_1
    invoke-interface {p1}, Lٴʽ/ʼˎ;->ʽ()V

    return-void
.end method
