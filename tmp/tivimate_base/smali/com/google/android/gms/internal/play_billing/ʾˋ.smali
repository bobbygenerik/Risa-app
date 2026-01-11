.class public final Lcom/google/android/gms/internal/play_billing/ʾˋ;
.super Lcom/google/android/gms/internal/play_billing/ـˆ;
.source "SourceFile"


# instance fields
.field public final transient ʽʽ:Lcom/google/android/gms/internal/play_billing/ʻٴ;

.field public final transient ˈٴ:[Ljava/lang/Object;

.field public final transient ᴵᵔ:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ʻٴ;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʻٴ;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ˈٴ:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ᴵᵔ:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʻٴ;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/ʻٴ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ـˆ;->ˑﹳ()Lcom/google/android/gms/internal/play_billing/יـ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/יـ;->ٴﹶ(I)Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ᴵᵔ:I

    return v0
.end method

.method public final ᵔᵢ()Lcom/google/android/gms/internal/play_billing/יـ;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵢˏ;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/ᵢˏ;-><init>(Lcom/google/android/gms/internal/play_billing/ʾˋ;)V

    return-object v0
.end method

.method public final ﹳٴ([Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ـˆ;->ˑﹳ()Lcom/google/android/gms/internal/play_billing/יـ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/יـ;->ﹳٴ([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
