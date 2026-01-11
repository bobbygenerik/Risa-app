.class public final Lcom/google/android/gms/internal/play_billing/ᵔٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;


# instance fields
.field public volatile ⁱˊ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

.field public volatile ﹳٴ:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v1, p0, v0}, Lʽٴ/ˈ;->ᴵᵔ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;Ljava/lang/Thread;)V

    return-void
.end method
