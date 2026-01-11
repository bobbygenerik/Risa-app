.class public final Lcom/google/android/gms/internal/measurement/ﹳᵔ;
.super Lcom/google/android/gms/internal/measurement/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lcom/google/android/gms/internal/measurement/ᐧˉ;

.field public final ˈٴ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ᐧˉ;)V
    .locals 1

    const-string v0, "require"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᵔ;->ˈٴ:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳᵔ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ᐧˉ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 2

    .prologue
    const-string v0, "require"

    const/4 v1, 0x1

    invoke-static {v1, v0, p2}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v0, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ﹳᵔ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳᵔ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ᐧˉ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to create API implementation: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
