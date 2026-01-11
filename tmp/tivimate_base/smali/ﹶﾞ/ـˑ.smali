.class public final Lﹶﾞ/ـˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:J

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵢי;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ـˑ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lﹶﾞ/ـˑ;->ⁱˊ:J

    return-void
.end method
