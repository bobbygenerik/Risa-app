.class public final Lcom/google/android/gms/internal/play_billing/ᴵˊ;
.super Lcom/google/android/gms/internal/play_billing/ـˆ;
.source "SourceFile"


# instance fields
.field public final transient ʽʽ:Lcom/google/android/gms/internal/play_billing/ˈٴ;

.field public final transient ˈٴ:Lcom/google/android/gms/internal/play_billing/ʽʽ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ˈٴ;Lcom/google/android/gms/internal/play_billing/ʽʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᴵˊ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˈٴ;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/ᴵˊ;->ˈٴ:Lcom/google/android/gms/internal/play_billing/ʽʽ;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵˊ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˈٴ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/ˈٴ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵˊ;->ˈٴ:Lcom/google/android/gms/internal/play_billing/ʽʽ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/יـ;->ٴﹶ(I)Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵˊ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˈٴ;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/ˈٴ;->ˊʻ:I

    return v0
.end method

.method public final ˑﹳ()Lcom/google/android/gms/internal/play_billing/יـ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵˊ;->ˈٴ:Lcom/google/android/gms/internal/play_billing/ʽʽ;

    return-object v0
.end method

.method public final ﹳٴ([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵˊ;->ˈٴ:Lcom/google/android/gms/internal/play_billing/ʽʽ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/יـ;->ﹳٴ([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
