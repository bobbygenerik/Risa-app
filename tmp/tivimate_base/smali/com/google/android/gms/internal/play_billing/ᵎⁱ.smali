.class public final Lcom/google/android/gms/internal/play_billing/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;


# instance fields
.field public ʽ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

.field public final ⁱˊ:Ljava/util/concurrent/Executor;

.field public final ﹳٴ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ﹳٴ:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ⁱˊ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ﹳٴ:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ⁱˊ:Ljava/util/concurrent/Executor;

    return-void
.end method
