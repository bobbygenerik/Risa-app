.class public final Lcom/google/android/gms/internal/measurement/ᐧᴵ;
.super Lcom/google/android/gms/internal/measurement/ʼʼ;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ˑٴ;


# instance fields
.field public final synthetic ˈ:Lﹶﾞ/ﹶˎ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ˉـ;Lﹶﾞ/ﹶˎ;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ᐧᴵ;->ˈ:Lﹶﾞ/ﹶˎ;

    const-string p1, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼʼ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ʽ(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .prologue
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ᐧᴵ;->ﹳٴ()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧᴵ;->ˈ:Lﹶﾞ/ﹶˎ;

    invoke-virtual {v0}, Lﹶﾞ/ﹶˎ;->run()V

    return-void
.end method
