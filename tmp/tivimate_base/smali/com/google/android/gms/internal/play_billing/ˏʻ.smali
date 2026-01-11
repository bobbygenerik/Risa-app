.class public final Lcom/google/android/gms/internal/play_billing/ˏʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;


# instance fields
.field public volatile ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

.field public volatile ﹳٴ:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˏʻ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lˈˊ/ᵔʾ;->ˋᵔ(Lcom/google/android/gms/internal/play_billing/ˏʻ;Ljava/lang/Thread;)V

    return-void
.end method
