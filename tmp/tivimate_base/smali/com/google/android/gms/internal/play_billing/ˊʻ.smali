.class public final Lcom/google/android/gms/internal/play_billing/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

.field public final ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ʿᵢ;Lcom/google/android/gms/internal/play_billing/ᴵˑ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵔᵢ(Lcom/google/android/gms/internal/play_billing/ᴵˑ;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v2, v1, p0, v0}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˆʾ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)V

    :cond_1
    :goto_0
    return-void
.end method
