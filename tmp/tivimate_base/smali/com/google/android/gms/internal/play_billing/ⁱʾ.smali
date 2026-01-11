.class public final Lcom/google/android/gms/internal/play_billing/ⁱʾ;
.super Lcom/google/android/gms/internal/play_billing/יⁱ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉٴ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ˎᵎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ⁱʾ;->ˉٴ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ⁱʾ;->ˉٴ:Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˎᵎ;->ʾˋ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;

    if-nez v0, :cond_0

    const-string v0, "Completer object has been garbage collected, future will fail soon"

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ﹳٴ:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag=["

    const-string v2, "]"

    invoke-static {v1, v0, v2}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
