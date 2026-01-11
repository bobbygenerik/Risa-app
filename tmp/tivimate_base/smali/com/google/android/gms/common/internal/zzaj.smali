.class public final Lcom/google/android/gms/common/internal/zzaj;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lᴵˈ/ⁱˊ;


# direct methods
.method public constructor <init>(Lᴵˈ/ⁱˊ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iget v0, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lᴵˈ/ⁱˊ;->ʽʽ:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzaj;->ʾˋ:Lᴵˈ/ⁱˊ;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ResolvableConnectionException can only be created with a connection result containing a resolution."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
