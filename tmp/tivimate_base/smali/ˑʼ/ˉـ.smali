.class public final Lˑʼ/ˉـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑʼ/ˈⁱ;


# instance fields
.field public final synthetic ﹳٴ:Lˑʼ/ʿ;


# direct methods
.method public constructor <init>(Lˑʼ/ʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ˉـ;->ﹳٴ:Lˑʼ/ʿ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8

    .prologue
    iget-object v0, p0, Lˑʼ/ˉـ;->ﹳٴ:Lˑʼ/ʿ;

    iget-object v1, v0, Lˑʼ/ʿ;->ˉˆ:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    const-string v3, "FragmentManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FragmentManager has the following pending actions inside of prepareBackStackState: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_0
    iget-object v2, v0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    const-string v0, "Ignoring call to start back stack pop because the back stack is empty."

    nop

    move v0, v4

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ﹳٴ;

    iput-object v2, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    iget-object v2, v2, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    :cond_2
    :goto_0
    if-ge v6, v3, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lˑʼ/ʻᵎ;

    iget-object v7, v7, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v7, :cond_2

    iput-boolean v5, v7, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v0, p1, p2, v2, v4}, Lˑʼ/ʿ;->ʿᵢ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lˑʼ/ﹳٴ;

    invoke-static {v5}, Lˑʼ/ʿ;->ٴᵢ(Lˑʼ/ﹳٴ;)Ljava/util/HashSet;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_5
    if-ge v4, p1, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lˉˑ/ʽ;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ᴵᵔ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_6
    return v0
.end method
