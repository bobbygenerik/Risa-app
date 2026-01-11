.class public final Lʼٴ/ʼʼ;
.super Lcom/google/android/gms/internal/play_billing/ˈ;
.source "SourceFile"


# instance fields
.field public final ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽᐧ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ʽᐧ;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ˈ;-><init>()V

    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p1, p0, Lʼٴ/ʼʼ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽᐧ;

    return-void
.end method
