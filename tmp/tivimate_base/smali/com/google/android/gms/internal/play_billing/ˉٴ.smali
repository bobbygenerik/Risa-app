.class public final Lcom/google/android/gms/internal/play_billing/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/play_billing/ˉٴ;

.field public static final ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˉٴ;


# instance fields
.field public final ﹳٴ:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ٴᵢ;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/play_billing/ٴᵢ;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˉٴ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ٴᵢ;

    const-string v2, "Failure.exception is unexpectedly null."

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/play_billing/ٴᵢ;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˉٴ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ﹳٴ:Ljava/lang/Throwable;

    return-void
.end method
