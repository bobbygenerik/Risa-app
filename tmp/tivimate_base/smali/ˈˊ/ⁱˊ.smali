.class public final Lˈˊ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lˈˊ/ⁱˊ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽᵔ;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/play_billing/ʽᵔ;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lˈˊ/ⁱˊ;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lˈˊ/ⁱˊ;->ﹳٴ:Ljava/lang/Throwable;

    return-void
.end method
