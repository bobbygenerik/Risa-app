.class public final Lcom/google/android/gms/internal/play_billing/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

.field public static final ˈ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Throwable;

.field public final ﹳٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˊʻ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ﹳٴ:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ⁱˊ:Ljava/lang/Throwable;

    return-void
.end method
