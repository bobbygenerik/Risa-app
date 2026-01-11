.class public final Lcom/google/android/gms/internal/measurement/ˉʿ;
.super Lcom/google/android/gms/internal/measurement/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Ljava/util/ArrayList;

.field public final ˈٴ:Ljava/util/ArrayList;

.field public final ᴵᵔ:Lˏˆ/ﹳٴ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ˉʿ;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ˉʿ;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ʽʽ:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ˉʿ;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ˉʿ;->ᴵᵔ:Lˏˆ/ﹳٴ;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ᴵᵔ:Lˏˆ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lˏˆ/ﹳٴ;)V
    .locals 2

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ʽʽ:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ᴵᵔ:Lˏˆ/ﹳٴ;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p4, p4, 0x1

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ʽʽ:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ᴵᵔ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ˈⁱ()Lˏˆ/ﹳٴ;

    move-result-object v0

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v6, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    if-ge v3, v5, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v6, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lˏˆ/ﹳٴ;->ʿ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lˏˆ/ﹳٴ;->ʿ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ˉʿ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_2
    if-ge v2, p2, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ˉˆ;

    if-eqz v5, :cond_3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v4

    :cond_3
    instance-of v3, v4, Lcom/google/android/gms/internal/measurement/ﾞᴵ;

    if-eqz v3, :cond_2

    check-cast v4, Lcom/google/android/gms/internal/measurement/ﾞᴵ;

    iget-object p1, v4, Lcom/google/android/gms/internal/measurement/ﾞᴵ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ᵔʾ;

    return-object p1

    :cond_4
    return-object v6
.end method

.method public final ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ˉʿ;-><init>(Lcom/google/android/gms/internal/measurement/ˉʿ;)V

    return-object v0
.end method
