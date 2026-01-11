.class public final Lcom/google/android/gms/internal/play_billing/ﹳﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

.field public static final ⁱˊ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;


# instance fields
.field public final ﹳٴ:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˈٴ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ʽ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    sput-object v1, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ʽ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ﹳٴ:Ljava/lang/Throwable;

    return-void
.end method
