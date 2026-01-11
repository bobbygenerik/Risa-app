.class public abstract Lcom/google/android/gms/internal/measurement/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ᵔʾ;
.implements Lcom/google/android/gms/internal/measurement/ˆʾ;


# instance fields
.field public final ʾˋ:Ljava/lang/String;

.field public final ᴵˊ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʼˎ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
.end method

.method public ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 0

    return-object p0
.end method

.method public final ˈ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1
.end method

.method public final ˑﹳ(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ᵎﹶ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    return-object v0
.end method

.method public final ᵔᵢ(Ljava/lang/String;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 1

    .prologue
    const-string v0, "toString"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʾˋ:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Landroid/support/v4/media/session/ﹳٴ;->ـˆ(Lcom/google/android/gms/internal/measurement/ˆʾ;Lcom/google/android/gms/internal/measurement/ᵔﹳ;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    return-object p1
.end method

.method public final ⁱˊ()Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final ﾞᴵ()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ʼˎ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼˎ;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
