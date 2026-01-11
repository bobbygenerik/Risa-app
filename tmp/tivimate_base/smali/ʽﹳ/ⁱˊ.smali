.class public final Lʽﹳ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lʽﹳ/ⁱˊ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽᵔ;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/play_billing/ʽᵔ;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lʽﹳ/ⁱˊ;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lʽﹳ/ᵎﹶ;->ˈٴ:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lʽﹳ/ⁱˊ;->ﹳٴ:Ljava/lang/Throwable;

    return-void
.end method
