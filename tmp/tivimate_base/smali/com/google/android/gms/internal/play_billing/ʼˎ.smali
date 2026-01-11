.class public final Lcom/google/android/gms/internal/play_billing/ʼˎ;
.super Lcom/google/android/gms/internal/measurement/ᵎ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ʼˎ;->ʽʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ـˆ()J
    .locals 4

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʼˎ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
