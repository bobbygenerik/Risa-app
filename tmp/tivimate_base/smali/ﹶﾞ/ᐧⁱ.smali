.class public final Lﹶﾞ/ᐧⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ـˊ;


# instance fields
.field public final synthetic ⁱˊ:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field public final ﹳٴ:Lcom/google/android/gms/internal/measurement/ˊˋ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/ˊˋ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ᐧⁱ;->ⁱˊ:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lﹶﾞ/ᐧⁱ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˊˋ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    :try_start_0
    iget-object v0, p0, Lﹶﾞ/ᐧⁱ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˊˋ;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/ˊˋ;->ʽﹳ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Lﹶﾞ/ᐧⁱ;->ⁱˊ:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->ˈ:Lﹶﾞ/ᵎʻ;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p3, "Event listener threw exception"

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
