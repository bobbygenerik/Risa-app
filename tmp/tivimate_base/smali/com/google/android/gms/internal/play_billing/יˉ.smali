.class public final Lcom/google/android/gms/internal/play_billing/יˉ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lcom/google/android/gms/internal/play_billing/יˉ;


# instance fields
.field public ʽ:Lcom/google/android/gms/internal/play_billing/יˉ;

.field public final ⁱˊ:Ljava/util/concurrent/Executor;

.field public final ﹳٴ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/יˉ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/יˉ;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/יˉ;->ˈ:Lcom/google/android/gms/internal/play_billing/יˉ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/יˉ;->ﹳٴ:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/יˉ;->ⁱˊ:Ljava/util/concurrent/Executor;

    return-void
.end method
