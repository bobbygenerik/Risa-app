.class public final Lcom/google/android/gms/internal/measurement/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lᵢ/ﹳٴ;

.field public final ˈ:Lcom/google/android/gms/internal/measurement/ˏי;

.field public ⁱˊ:Lˏˆ/ﹳٴ;

.field public final ﹳٴ:Lˏˆ/ﹳٴ;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lˏˆ/ﹳٴ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lˏˆ/ﹳٴ;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ﹳٴ:Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏˆ/ﹳٴ;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˈⁱ()Lˏˆ/ﹳٴ;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ⁱˊ:Lˏˆ/ﹳٴ;

    new-instance v1, Lᵢ/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lᵢ/ﹳٴ;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ʽ:Lᵢ/ﹳٴ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ˏי;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/ˏי;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/measurement/ˏי;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ﹳٴ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/ﹳٴ;-><init>(Lcom/google/android/gms/internal/measurement/ᴵᵔ;I)V

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᐧˉ;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "internal.registerCallback"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ﹳٴ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/ﹳٴ;-><init>(Lcom/google/android/gms/internal/measurement/ᴵᵔ;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "internal.eventLogger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lcom/google/android/gms/internal/measurement/ᴵٴ;)V
    .locals 9

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ﹳٴ:Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏˆ/ﹳٴ;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˈⁱ()Lˏˆ/ﹳٴ;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ⁱˊ:Lˏˆ/ﹳٴ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ᴵٴ;->ʼᐧ()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ⁱˊ:Lˏˆ/ﹳٴ;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/measurement/ˑﹶ;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/measurement/ˑﹶ;

    invoke-virtual {v0, v2, v1}, Lˏˆ/ﹳٴ;->ـˏ(Lˏˆ/ﹳٴ;[Lcom/google/android/gms/internal/measurement/ˑﹶ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/ﾞᴵ;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ᴵٴ;->ᵔﹳ()Lcom/google/android/gms/internal/measurement/ˉʽ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˉʽ;->ʼᐧ()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/יʿ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/יʿ;->ᵔﹳ()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/יʿ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˑﹶ;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ⁱˊ:Lˏˆ/ﹳٴ;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/ˑﹶ;

    aput-object v4, v6, v3

    invoke-virtual {v0, v5, v6}, Lˏˆ/ﹳٴ;->ـˏ(Lˏˆ/ﹳٴ;[Lcom/google/android/gms/internal/measurement/ˑﹶ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ٴﹶ;

    if-eqz v5, :cond_4

    const-string v5, "Rule function is undefined: "

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ⁱˊ:Lˏˆ/ﹳٴ;

    const-string v7, "Invalid function name: "

    invoke-virtual {v6, v1}, Lˏˆ/ﹳٴ;->ᴵˑ(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1}, Lˏˆ/ﹳٴ;->ʿᵢ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v6

    instance-of v8, v6, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    if-eqz v8, :cond_3

    check-cast v6, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    :goto_1
    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ⁱˊ:Lˏˆ/ﹳٴ;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rule definition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Program loading failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzd;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ﹳٴ(Lcom/google/android/gms/internal/measurement/ⁱˊ;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ʽ:Lᵢ/ﹳٴ;

    :try_start_0
    iput-object p1, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ﹳٴ()Lcom/google/android/gms/internal/measurement/ⁱˊ;

    move-result-object p1

    iput-object p1, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iget-object p1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ﹳٴ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lˏˆ/ﹳٴ;

    const-string v1, "runtime.counter"

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    invoke-virtual {p1, v1, v2}, Lˏˆ/ﹳٴ;->ˉـ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/measurement/ˏי;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ⁱˊ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˈⁱ()Lˏˆ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ˈ(Lˏˆ/ﹳٴ;Lᵢ/ﹳٴ;)V

    iget-object p1, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    iget-object v1, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzd;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
